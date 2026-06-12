---
name: Sub-issue
about: Criar uma issue de execução vinculada a um épico ou issue principal
title: "[Sub-issue] "
---

# Template — Sub-issue

> Issue de execução criada no repositório responsável pela implementação.
> Deve sempre estar vinculada a uma issue principal/épico no `retize-docs`.

---

## 1. Épico relacionado

Informe o link da issue principal no `retize-docs`.

**Exemplo:**

Épico relacionado: `retize-docs#123 — Nova tela de dados 1st party no Retize Analytics`

---

## 2. Objetivo da sub-issue

Descreva o que esta sub-issue precisa entregar especificamente.

**Exemplo:**

Criar a interface da nova tela de dados 1st party dentro do Retize Analytics no `retize-monorepo`.

Essa sub-issue deve entregar a estrutura visual inicial da tela, com cards de indicadores, área de evolução da base e seções para origem dos dados, atributos disponíveis e consentimento.

---

## 3. Contexto técnico

Inclua informações técnicas relevantes para execução dentro deste repositório.

**Exemplo:**

A implementação será feita no `retize-monorepo`, dentro do módulo de Analytics.

A tela deverá seguir os padrões visuais e estruturais já utilizados nas demais telas do Analytics, reaproveitando componentes existentes sempre que possível.

Nesta primeira versão, a interface pode consumir dados mockados ou dados vindos de endpoint já disponível, dependendo da disponibilidade da sub-issue de backend/dados.

A tela deve estar preparada para receber os seguintes blocos de informação:

* total de contatos/fãs disponíveis;
* evolução da base ao longo do tempo;
* origem dos dados;
* principais atributos disponíveis;
* indicadores de consentimento;
* status geral da qualidade dos dados.

---

## 4. Escopo da execução

### Dentro do escopo

Liste o que entra nesta sub-issue.

**Exemplo:**

* Criar rota/tela de dados 1st party no módulo Analytics.
* Criar layout inicial da tela.
* Criar cards de indicadores principais.
* Criar área para gráfico de evolução da base.
* Criar seção de origem dos dados.
* Criar seção de atributos disponíveis.
* Criar seção de consentimento, se aplicável.
* Garantir responsividade mínima conforme padrão atual do Analytics.
* Reaproveitar componentes existentes do `retize-monorepo` quando possível.

### Fora do escopo

Liste o que não entra nesta sub-issue.

**Exemplo:**

* Criar endpoint de backend.
* Criar pipeline de dados.
* Criar tabela nova no banco.
* Implementar segmentação de audiência.
* Implementar exportação de contatos.
* Implementar edição ou gestão de contatos.
* Criar dashboards customizados por patrocinador.
* Definir regras finais de qualidade dos dados.

---

## 5. Critérios de aceite

Liste os critérios que precisam ser atendidos para considerar a sub-issue pronta.

**Exemplo:**

* [ ] A nova tela está acessível dentro do módulo Analytics.
* [ ] A tela possui título e descrição contextualizando dados 1st party.
* [ ] A tela exibe cards para os principais indicadores.
* [ ] A tela possui área para evolução da base ao longo do tempo.
* [ ] A tela possui seção de origem dos dados.
* [ ] A tela possui seção de atributos disponíveis.
* [ ] A tela possui seção de consentimento ou estado vazio quando esse dado não existir.
* [ ] A interface segue o padrão visual atual do Analytics.
* [ ] A tela possui estados mínimos de loading, vazio e erro, quando aplicável.
* [ ] A tela está preparada para integração com endpoint real ou dados mockados definidos.

---

## 6. Áreas impactadas

Liste arquivos, módulos, telas, rotas, componentes ou partes do sistema que podem ser impactadas.

**Exemplo:**

* Módulo Analytics no `retize-monorepo`.
* Menu/navegação lateral do Analytics.
* Rotas internas do Analytics.
* Componentes de cards de indicadores.
* Componentes de gráfico/visualização temporal.
* Componentes de estado vazio/loading/erro.
* Eventuais serviços/hooks de consumo de dados do Analytics.

---

## 7. Validação técnica

Explique como a entrega deve ser testada ou validada tecnicamente.

**Exemplo:**

* Rodar o projeto localmente.
* Acessar o módulo Analytics.
* Validar se a nova tela aparece na navegação esperada.
* Validar se a tela renderiza corretamente com dados mockados ou endpoint disponível.
* Validar comportamento em loading, vazio e erro.
* Validar responsividade básica.
* Rodar lint/build/testes obrigatórios do repositório.
* Confirmar que nenhuma tela existente do Analytics foi quebrada.

---

## 8. Definition of Done

Marque os critérios finais antes de fechar a sub-issue.

**Exemplo:**

* [ ] Código implementado no repo correto.
* [ ] Critérios de aceite atendidos.
* [ ] Validação técnica realizada.
* [ ] Lint/build/testes obrigatórios executados.
* [ ] PR aberta vinculando esta sub-issue.
* [ ] PR vinculada ao épico principal no `retize-docs`.
* [ ] Evidências adicionadas na PR, quando aplicável.
* [ ] Sub-issue atualizada com status final.
* [ ] Épico principal atualizado ou sinalizado para atualização.
