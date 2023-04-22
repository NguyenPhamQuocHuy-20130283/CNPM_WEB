// thêm bảng logs để ghi lại lịch sử đăng nhập
CREATE TABLE logs (
id_log BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
user_id VARCHAR(50) DEFAULT '-1',
src VARCHAR(255),
content TEXT,
ip_address VARCHAR(255),
web_browser VARCHAR(255),
create_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
status VARCHAR(255)
);
