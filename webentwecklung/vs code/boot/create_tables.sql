-- Licenses table
CREATE TABLE licenses (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  purchase_code VARCHAR(255) UNIQUE NOT NULL,
  item_id VARCHAR(50) NOT NULL,           -- ThemeForest item ID
  item_name VARCHAR(255),                  -- Theme name
  buyer_username VARCHAR(255),             -- Envato buyer username
  buyer_email VARCHAR(255),
  license_type VARCHAR(50) DEFAULT 'regular', -- regular, extended
  supported_until TIMESTAMPTZ,
  activated_domain VARCHAR(255),           -- The domain where it's activated
  activation_date TIMESTAMPTZ,
  is_active BOOLEAN DEFAULT false,
  max_activations INTEGER DEFAULT 1,
  current_activations INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Activations log table
CREATE TABLE activation_log (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  license_id UUID REFERENCES licenses(id) ON DELETE CASCADE,
  domain VARCHAR(255) NOT NULL,
  ip_address VARCHAR(45),
  action VARCHAR(20) NOT NULL,  -- 'activate', 'deactivate', 'check'
  status VARCHAR(20) NOT NULL,  -- 'success', 'failed', 'expired'
  error_message TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- API keys for theme verification
CREATE TABLE api_keys (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  key_hash VARCHAR(255) UNIQUE NOT NULL,
  name VARCHAR(255) NOT NULL,
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Row Level Security policies
-- Enable RLS
ALTER TABLE licenses ENABLE ROW LEVEL SECURITY;
ALTER TABLE activation_log ENABLE ROW LEVEL SECURITY;
ALTER TABLE api_keys ENABLE ROW LEVEL SECURITY;

-- Create policies that allow all access (you can make these more restrictive based on your needs)
CREATE POLICY "Allow all access to licenses" ON licenses
  FOR ALL USING (true) WITH CHECK (true);

CREATE POLICY "Allow all access to activation_log" ON activation_log
  FOR ALL USING (true) WITH CHECK (true);

CREATE POLICY "Allow all access to api_keys" ON api_keys
  FOR ALL USING (true) WITH CHECK (true);

-- Indexes
CREATE INDEX idx_licenses_purchase_code ON licenses(purchase_code);
CREATE INDEX idx_licenses_domain ON licenses(activated_domain);
CREATE INDEX idx_activation_log_license ON activation_log(license_id);
CREATE INDEX idx_activation_log_domain ON activation_log(domain);

-- Updated_at trigger function
CREATE OR REPLACE FUNCTION update_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Create trigger on licenses table
CREATE TRIGGER licenses_updated_at
  BEFORE UPDATE ON licenses
  FOR EACH ROW EXECUTE FUNCTION update_updated_at();
