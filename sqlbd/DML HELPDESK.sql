INSERT INTO usuarios (nome, email, senha, perfil, ativo) VALUES
('João Souza', 'joao.cliente@empresa.com', '123456', 'CLIENTE', TRUE),
('Ana Paula', 'ana.tecnica@empresa.com', 'senha123', 'TECNICO', TRUE),
('Admin Teste', 'admin.teste@empresa.com', 'admin', 'ADMIN', TRUE);

INSERT INTO categorias (nome, descricao, ativo) VALUES
('Hardware', 'Problemas com computadores, monitores, periféricos e componentes físicos.', TRUE),
('Software', 'Instalação, erros e licenças de sistemas operacionais e programas.', TRUE),
('Redes e Internet', 'Instabilidade de conexão, cabo desconectado, Wi-Fi e VPN.', TRUE),
('Sistemas Internos', 'Erros e dúvidas no ERP, CRM e sistemas de gestão da empresa.', TRUE),
('Acessos e Permissões', 'Reset de senha, criação de contas e permissões de pasta.', TRUE);

INSERT INTO solicitacoes (titulo, descricao, local_ocorrencia, prioridade, status, usuario_id, tecnico_id, categoria_id) VALUES
(
    'Monitor não liga após picos de energia', 
    'Após a queda de luz de ontem à tarde, meu monitor secundário não dá nenhum sinal de vida.', 
    'Bloco A - Sala 204', 
    'ALTA', 
    'EM_ANDAMENTO', 
    4, -- Fernanda (Cliente)
    2, -- Mariana (Técnica)
    1  -- Categoria Hardware
),
(
    'Esqueci a senha do sistema ERP', 
    'Preciso de reset na senha do sistema financeiro para emitir as notas fiscais de hoje.', 
    'Bloco B - Sala 101', 
    'URGENTE', 
    'CONCLUIDO', 
    5, -- Roberto (Cliente)
    3, -- Lucas (Técnico)
    5  -- Categoria Acessos e Permissões
),
(
    'Wi-Fi caindo frequentemente na sala de reunião', 
    'Durante as chamadas de vídeo, a conexão do Wi-Fi corporativo cai a cada 10 minutos.', 
    'Bloco C - Sala de Reunião Principal', 
    'MEDIA', 
    'ABERTO', 
    4, -- Fernanda (Cliente)
    NULL, -- Ainda sem técnico atribuído
    3  -- Categoria Redes e Internet
);

INSERT INTO interacoes (mensagem, solicitacao_id, usuario_id) VALUES
-- Interações do Chamado 1 (Monitor não liga)
(
    'Olá Fernanda, tudo bem? Vou passar na sua sala em 15 minutos para testar a fonte do monitor.', 
    1, 
    2  -- Mariana (Técnica)
),
(
    'Perfeito Mariana, estarei aqui aguardando. Obrigada!', 
    1, 
    4  -- Fernanda (Cliente)
),
(
    'Fonte de alimentação testada e queimada. Solicitei a substituição com o almoxarifado.', 
    1, 
    2  -- Mariana (Técnica)
),

-- Interações do Chamado 2 (Reset de Senha)
(
    'Senha provisória gerada e enviada para o e-mail cadastrado. Por favor, altere no primeiro acesso.', 
    2, 
    3  -- Lucas (Técnico)
),
(
    'Consegui acessar e já fiz a alteração da senha. Pode fechar o chamado, muito obrigado!', 
    2, 
    5  -- Roberto (Cliente)
);