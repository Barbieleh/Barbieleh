java
Copiar código
String[][] pessoas = new String[10][3]; // 10 linhas e 3 colunas
int contador = 0; // Para controlar quantas pessoas foram cadastradas
Função para Salvar:

java
Copiar código
void salvar() {
    if (nome.isEmpty()) {
        mostrarMensagem("Por favor, preencha o nome.");
        focoNoCampo(nome);
        return;
    }
    if (cidade.isEmpty()) {
        mostrarMensagem("Por favor, preencha a cidade.");
        focoNoCampo(cidade);
        return;
    }
    if (estado.isEmpty()) {
        mostrarMensagem("Por favor, preencha o estado.");
        focoNoCampo(estado);
        return;
    }

    if (contador < 10) {
        pessoas[contador][0] = nome;
        pessoas[contador][1] = cidade;
        pessoas[contador][2] = estado;
        contador++;
    } else {
        mostrarMensagem("Máximo de 10 pessoas cadastradas.");
    }

    // Limpar campos
    nome = "";
    cidade = "";
    estado = "";
    focoNoCampo(nome);
}
Função para Imprimir:

java
Copiar código
void imprimir() {
    StringBuilder dados = new StringBuilder();
    for (int i = 0; i < contador; i++) {
        dados.append("Nome: ").append(pessoas[i][0])
             .append(", Cidade: ").append(pessoas[i][1])
             .append(", Estado: ").append(pessoas[i][2])
             .append("\n");
    }
    mostrarDialogo(dados.toString());
}
