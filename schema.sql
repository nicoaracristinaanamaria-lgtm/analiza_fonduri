-- ============================================
-- SCHEMA: Fonduri - Structura bazei de date
-- ============================================

-- 1. Crearea tabelului categories
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);

-- 2. Crearea tabelului allocations
CREATE TABLE allocations (
    id SERIAL PRIMARY KEY,
    destination VARCHAR(255) NOT NULL,
    amount_lei INT NOT NULL,
    category_id INT NOT NULL,
    CONSTRAINT fk_category
        FOREIGN KEY (category_id)
        REFERENCES categories(id)
);

--3. Comentarii coloane:
COMMENT ON TABLE categories IS 'Lista categoriilor de finanțare';
COMMENT ON COLUMN categories.name IS 'Numele categoriei (ex: Biserici, Diaspora)';

COMMENT ON TABLE allocations IS 'Alocările financiare individuale';
COMMENT ON COLUMN allocations.destination IS 'Destinația finanțării';
COMMENT ON COLUMN allocations.amount_lei IS 'Suma alocată în lei';
