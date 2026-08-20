-- Seed default roles required for user registration and login
INSERT INTO roles (name) VALUES ('ROLE_USER')   ON CONFLICT (name) DO NOTHING;
INSERT INTO roles (name) VALUES ('ROLE_ADMIN')  ON CONFLICT (name) DO NOTHING;
INSERT INTO roles (name) VALUES ('ROLE_SELLER') ON CONFLICT (name) DO NOTHING;
