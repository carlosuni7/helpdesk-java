CREATE TABLE categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    ativo BOOLEAN NOT NULL DEFAULT TRUE
);

CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    perfil VARCHAR(50) NOT NULL,
    ativo BOOLEAN NOT NULL DEFAULT TRUE,
    data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE solicitacoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT NOT NULL,
    local_ocorrencia VARCHAR(150),
    prioridade VARCHAR(20) NOT NULL DEFAULT 'MEDIA',
    status VARCHAR(30) NOT NULL DEFAULT 'ABERTO',
    data_abertura DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    data_fechamento DATETIME,
    usuario_id INT NOT NULL,
    tecnico_id INT,
    categoria_id INT NOT NULL,
    
    CONSTRAINT fk_solicitacoes_usuario 
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
        
    CONSTRAINT fk_solicitacoes_tecnico 
        FOREIGN KEY (tecnico_id) REFERENCES usuarios(id),
        
    CONSTRAINT fk_solicitacoes_categoria 
        FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

CREATE TABLE interacoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    mensagem TEXT NOT NULL,
    data_interacao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    solicitacao_id INT NOT NULL,
    usuario_id INT NOT NULL,
    
    CONSTRAINT fk_interacoes_solicitacao 
        FOREIGN KEY (solicitacao_id) REFERENCES solicitacoes(id) 
        ON DELETE CASCADE,
        
    CONSTRAINT fk_interacoes_usuario 
        FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);