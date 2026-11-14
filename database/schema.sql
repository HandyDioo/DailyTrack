CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_code TEXT UNIQUE NOT NULL,
    name TEXT NOT NULL,
    user_type TEXT NOT NULL CHECK(user_type IN ('Student', 'Teacher')),
    student_id TEXT UNIQUE,
    employee_id TEXT,
    class_name TEXT,
    is_active INTEGER DEFAULT 1,
    created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    item_code TEXT UNIQUE NOT NULL,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    total_stock INTEGER NOT NULL CHECK(total_stock >= 0),
    available_stock INTEGER NOT NULL CHECK(available_stock >= 0),
    is_archived INTEGER DEFAULT 0,
    created_at TEXT DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS loans (
    id INTEGERR PRIMARY KEY AUTOINCREMENT,
    loan_code TEXT UNIQUE NOT NULL,
    responsible_id INTEGER NOT NULL,
    requested_by_id INTEGER,
    collected_by_id INTEGER NOT NULL,
    loan_date TEXT NOT NULL,
    due_date TEXT,
    status TEXT DEFAULT 'Dipinjam',
    notes TEXT
    FOREIGN KEY (responsible_id) REFERENCES users (users_id),
    FOREIGN KEY (requested_by_id) REFERENCES users (users_id),
    FOREIGN KEY (collected_by_id) REFERENCES users (users_id)
);