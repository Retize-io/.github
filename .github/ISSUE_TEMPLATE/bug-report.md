# Template — Bug Report

> Documento usado para reportar bugs que precisam de clareza de reprodução, impacto, evidência e validação.
> Para bugs muito simples ou ajustes pequenos, uma issue simples pode ser suficiente.

---

## Quando usar este template

Use este template quando o bug exigir investigação, rastreabilidade ou validação clara.

| Usar quando                                        | Exemplo                                                       |
| -------------------------------------------------- | ------------------------------------------------------------- |
| O bug afeta produção                               | Criativo não é salvo corretamente no Retize Ads               |
| O bug afeta cliente ou operação interna importante | Cliente não consegue cadastrar criativos de campanha          |
| O bug afeta dado, cadastro ou configuração         | Criativo aparece como salvo, mas não fica disponível para uso |
| O bug afeta fluxo principal do produto             | Cadastro de campanha, criativo, audiência ou relatório        |
| O bug é recorrente                                 | Mesmo erro aparece em mais de uma campanha                    |
| O bug precisa de evidência para análise            | Print, vídeo, payload, log ou ID da campanha                  |

---

## Quando não usar este template

Não use este template quando o problema for pequeno, visual ou muito óbvio.

| Não usar quando             | Usar no lugar                      |
| --------------------------- | ---------------------------------- |
| Ajuste simples de copy      | Issue simples                      |
| Ajuste visual pequeno       | Issue simples                      |
| Erro já conhecido e trivial | Issue simples ou sub-issue         |
| Demanda de melhoria         | `rfc-feature.md` ou `sub-issue.md` |
| Nova funcionalidade         | `rfc-feature.md`                   |
| Produto novo                | `rfc-new-product.md`               |

---

## 1. Resumo do bug

Descreva o bug de forma curta e objetiva.

**Exemplo:**

Ao cadastrar um novo criativo no Retize Ads, o sistema exibe mensagem de sucesso, mas o criativo não aparece corretamente na listagem e não fica disponível para vinculação em campanhas.

---

## 2. Produto/módulo impactado

Informe qual produto, módulo ou área foi impactada.

**Exemplo:**

* Produto: Retize Ads
* Módulo: Cadastro de criativos
* Fluxo impactado: criação de criativo para campanha display
* Repositório provável: `retize-monorepo`
* Possível backend/API impactado: serviço de cadastro de criativos

---

## 3. Ambiente

Informe onde o bug foi identificado.

**Exemplo:**

* Ambiente: Produção
* Conta/cliente: entidade de teste ou cliente impactado
* Navegador: Google Chrome
* Usuário impactado: usuário interno da Retize
* Data/hora aproximada: 09/06/2026, durante cadastro de campanha
* Campanha relacionada: campanha display em criação

---

## 4. Comportamento atual

Explique o que está acontecendo hoje.

**Exemplo:**

O usuário preenche o formulário de cadastro de criativo, envia a imagem, informa o título e a URL de destino.

Após clicar em salvar, o sistema exibe mensagem de sucesso. Porém, ao voltar para a listagem de criativos, o criativo recém-criado não aparece corretamente ou aparece sem dados suficientes para ser vinculado à campanha.

Em alguns casos, o criativo também não fica disponível na etapa de seleção de criativos dentro do fluxo de campanha.

---

## 5. Comportamento esperado

Explique qual deveria ser o comportamento correto.

**Exemplo:**

Após o cadastro, o criativo deve ser salvo corretamente, aparecer na listagem de criativos e ficar disponível para vinculação em campanhas compatíveis.

O criativo deve manter todas as informações preenchidas no formulário, incluindo:

* nome do criativo;
* tipo/formato;
* imagem enviada;
* URL de destino;
* campanha ou anunciante vinculado, quando aplicável;
* status inicial correto;
* data de criação;
* usuário responsável pelo cadastro.

---

## 6. Passos para reproduzir

Liste o passo a passo para reproduzir o bug.

**Exemplo:**

1. Acessar o Retize Ads.
2. Entrar na área de criativos.
3. Clicar em “Novo criativo”.
4. Preencher o nome do criativo.
5. Selecionar o tipo/formato display.
6. Fazer upload de uma imagem `.png` ou `.jpg`.
7. Informar uma URL de destino.
8. Salvar o criativo.
9. Voltar para a listagem de criativos.
10. Tentar localizar o criativo recém-cadastrado.
11. Acessar o fluxo de criação/edição de campanha.
12. Tentar vincular o criativo à campanha.

Resultado atual: o criativo não aparece corretamente ou não fica disponível para vinculação.

---

## 7. Impacto

Explique o impacto do bug para usuário, operação, cliente ou negócio.

**Exemplo:**

Este bug impede ou dificulta a criação de campanhas no Retize Ads, porque o criativo cadastrado não fica disponível para uso.

Impactos possíveis:

* atraso na configuração de campanhas;
* necessidade de intervenção manual;
* risco de campanha não subir no prazo;
* retrabalho para o time de operação;
* perda de confiança no fluxo de cadastro;
* impacto direto em clientes que dependem da ativação de mídia.

---

## 8. Severidade

Classifique a severidade do bug.

| Severidade   | Quando usar                                                                 |
| ------------ | --------------------------------------------------------------------------- |
| S1 — Crítico | Produção parada, cliente bloqueado, perda de dado, segurança ou faturamento |
| S2 — Alto    | Fluxo importante quebrado, mas existe alguma alternativa operacional        |
| S3 — Médio   | Problema relevante, mas não bloqueia o fluxo principal                      |
| S4 — Baixo   | Bug visual, inconsistência pequena ou baixo impacto                         |

**Exemplo:**

S2 — Alto

Justificativa:

O bug afeta um fluxo importante do Retize Ads, pois impede que criativos cadastrados sejam usados corretamente em campanhas. Não necessariamente derruba o sistema inteiro, mas pode bloquear a ativação de uma campanha.

---

## 9. Evidências

Inclua prints, vídeos, IDs, payloads, logs ou qualquer informação que ajude na investigação.

**Exemplo:**

* Print da mensagem de sucesso após salvar o criativo.
* Print da listagem sem o criativo cadastrado.
* Print da etapa de campanha onde o criativo não aparece.
* ID da campanha, se existir.
* ID do anunciante, se existir.
* Nome do criativo usado no teste.
* Horário aproximado da tentativa.
* Payload da requisição, se disponível.
* Erro no console do navegador, se houver.
* Erro no log da API, se houver.

---

## 10. Hipótese inicial / área suspeita

Indique uma hipótese inicial, se houver.
Não precisa ser a causa final, apenas um ponto de partida para investigação.

**Exemplo:**

Possíveis áreas suspeitas:

* falha no endpoint de criação de criativos;
* criativo salvo sem vínculo correto com anunciante ou campanha;
* problema na query da listagem de criativos;
* problema na atualização de estado após salvar;
* erro no upload ou persistência da imagem;
* inconsistência entre o cadastro do criativo e o filtro usado na seleção de campanha;
* status inicial do criativo sendo salvo de forma incorreta.

---

## 11. Validação da correção

Explique como validar que o bug foi corrigido.

**Exemplo:**

Para validar a correção:

1. Criar um novo criativo no Retize Ads.
2. Preencher todos os campos obrigatórios.
3. Fazer upload da imagem.
4. Informar URL de destino.
5. Salvar o criativo.
6. Confirmar que o criativo aparece na listagem.
7. Confirmar que os dados do criativo foram salvos corretamente.
8. Confirmar que o criativo fica disponível para vinculação em campanhas.
9. Vincular o criativo a uma campanha de teste.
10. Confirmar que nenhuma tela existente do fluxo de criativos/campanhas foi quebrada.
11. Rodar validações obrigatórias do repositório, como lint, build ou testes aplicáveis.
