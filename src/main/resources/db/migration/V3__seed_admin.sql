-- Seed an initial Admin user with username 'admin' and password 'password'
-- BCrypt hash for 'password'
INSERT INTO users (username, email, password_hash, is_active)
VALUES ('admin', 'admin@ecommerce.com', '$2a$10$dXJ3SW6G7P50lGmMkkmwe.20cQQubK3.HCGF.O0erEWwK8/H.L2uW', true)
ON CONFLICT (username) DO NOTHING;

-- Map the admin user to the ROLE_ADMIN
INSERT INTO user_roles (user_id, role_id)
SELECT u.id, r.id
FROM users u, roles r
WHERE u.username = 'admin' AND r.name = 'ROLE_ADMIN'
ON CONFLICT DO NOTHING;
