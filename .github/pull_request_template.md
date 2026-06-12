# Template — Pull Request

> Template usado para abertura de Pull Requests.
> Toda PR deve estar vinculada a uma sub-issue de execução e, quando aplicável, ao épico principal no `retize-docs`.

---

## Quando usar este template

Use este template em toda PR que entrega código, configuração, documentação técnica ou ajuste relevante em um repositório da Retize.

| Usar quando                                            | Exemplo                                                 |
| ------------------------------------------------------ | ------------------------------------------------------- |
| A PR implementa uma sub-issue                          | Criar interface da tela de dados 1st party no Analytics |
| A PR corrige um bug                                    | Corrigir cadastro de criativos no Retize Ads            |
| A PR altera comportamento do produto                   | Ajustar regra de criação de campanha                    |
| A PR altera backend, frontend, dados ou infraestrutura | Criar endpoint, tela, migration ou pipeline             |
| A PR precisa ser validada por outra pessoa             | Alteração que entra no fluxo de revisão                 |
| A PR fecha uma issue                                   | `Closes #456`                                           |

---

## Quando não usar este template

Não use este template apenas quando não houver PR envolvida.

| Não usar quando              | Motivo                                        |
| ---------------------------- | --------------------------------------------- |
| Atualização apenas de status | Usar `issue-status.md`                        |
| Discussão de refinamento     | Usar issue, Discord ou RFC                    |
| Decisão técnica documentada  | Usar `adr.md`                                 |
| Especificação de produto     | Usar `rfc-feature.md` ou `rfc-new-product.md` |

---

## 1. Issue relacionada

Informe a sub-issue que esta PR resolve.

Use `Closes` quando a PR finalizar a issue.
Use `Related to` quando a PR for parcial.

**Exemplo:**

```md
Closes Retize-io/retize-monorepo#456
```

Sub-issue: `Criar interface da tela de dados 1st party no Retize Analytics`

---

## 2. Épico relacionado

Informe o épico principal no `retize-docs`.

**Exemplo:**

```md
Related to Retize-io/retize-docs#123
```

Épico: `Nova tela de dados 1st party no Retize Analytics`

---

## 3. Resumo da entrega

Explique, de forma objetiva, o que esta PR entrega.

**Exemplo:**

Esta PR cria a estrutura visual inicial da nova tela de dados 1st party dentro do módulo Analytics.

A entrega inclui rota inicial, layout base, cards de indicadores, área para evolução da base e seções visuais para origem dos dados, atributos disponíveis e consentimento.

---

## 4. O que foi alterado

Liste as principais alterações feitas nesta PR.

**Exemplo:**

* Criada nova rota para a tela de dados 1st party no módulo Analytics.
* Criado layout base da tela.
* Adicionados cards visuais para indicadores principais.
* Criada área reservada para gráfico de evolução da base.
* Criadas seções para origem dos dados, atributos disponíveis e consentimento.
* Reaproveitados componentes visuais já existentes no Analytics.
* Adicionados estados iniciais de loading, vazio e erro.
* Ajustada navegação para permitir acesso à nova tela.

---

## 5. O que não foi alterado

Liste explicitamente o que ficou fora desta PR.

**Exemplo:**

* Esta PR não cria endpoint de backend.
* Esta PR não cria pipeline ou view de dados.
* Esta PR não implementa segmentação de audiência.
* Esta PR não implementa exportação de contatos.
* Esta PR não altera regras de permissão.
* Esta PR não define o payload final da API.
* Esta PR não altera telas existentes do Analytics além da navegação necessária.

---

## 6. Como validar

Explique o passo a passo para validar a PR.

**Exemplo:**

1. Rodar o projeto localmente.
2. Acessar o Retize Analytics.
3. Verificar se a nova tela de dados 1st party aparece na navegação esperada.
4. Acessar a nova tela.
5. Confirmar que o layout base renderiza corretamente.
6. Confirmar que os cards de indicadores aparecem.
7. Confirmar que a área de evolução da base aparece.
8. Confirmar que as seções de origem dos dados, atributos e consentimento aparecem.
9. Validar estados de loading, vazio e erro, quando aplicável.
10. Validar responsividade básica.
11. Confirmar que nenhuma tela existente do Analytics foi quebrada.

---

## 7. Evidências

Inclua prints, vídeos, logs, links ou qualquer evidência útil para revisão.

**Exemplo:**

* Print da nova tela renderizada.
* Print dos cards de indicadores.
* Print do estado vazio.
* Print do estado de loading.
* Print da navegação do Analytics com a nova tela.
* Vídeo curto demonstrando o fluxo de acesso.
* Link do ambiente de preview, se existir.

---

## 8. Riscos ou pontos de atenção

Liste riscos, limitações ou pontos que o revisor precisa saber.

**Exemplo:**

* A interface ainda depende da definição final do payload da API.
* Alguns dados podem estar mockados ou provisórios.
* Pode ser necessário ajustar os componentes quando a sub-issue de backend/dados for concluída.
* A nomenclatura final da tela ainda pode ser ajustada pelo time de produto.
* A tela foi preparada para integração futura, mas esta PR foca apenas na parte visual.

---

## 9. Checklist de revisão

Marque os itens antes de solicitar revisão.

**Exemplo:**

* [ ] PR vinculada à sub-issue correta.
* [ ] PR vinculada ao épico no `retize-docs`.
* [ ] Resumo da entrega preenchido.
* [ ] Escopo da PR está claro.
* [ ] O que ficou fora da PR está claro.
* [ ] Critérios de validação foram descritos.
* [ ] Evidências foram adicionadas, quando aplicável.
* [ ] Riscos ou limitações foram documentados.
* [ ] Código foi testado localmente.
* [ ] Lint/build/testes obrigatórios foram executados, quando aplicável.
* [ ] Não há alteração fora do escopo da issue.
* [ ] A PR está pequena o suficiente para revisão.
* [ ] A issue relacionada foi atualizada, se necessário.

---

## 10. Comandos executados

Liste os comandos usados para validar a alteração.

**Exemplo:**

```bash
npm run lint
npm run build
npm run test
```

Caso algum comando não tenha sido executado, explique o motivo.

**Exemplo:**

```md
Não foram executados testes automatizados porque esta PR altera apenas estrutura visual inicial e o módulo ainda não possui testes específicos para essa tela.
```
