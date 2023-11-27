# Velv - CACIB Robot Framework Test

## Exercise

**Segue os seguintes passos:**

O exercício deve ser escrito utilizando o Robot Framework, utilizando Keyword-driven e utilizando todas as boas praticas que conheces.

**Passos:**

1. Launch browser
2. Navigate to page '<http://automationexercise.com>'
3. Navigate to page 'Products'
4. Verify if search bar is visible
5. write 'men tshirt'
6. Click on 'search button'
7. Verify 'men tshirt' is visible
8. Add product to cart
9. Click on 'Cart' button
10. verify that product are visible in cart
11. verify that product value are correct

## NOTES

### Exercise.robot

Como este exercício só tem 1 teste decidi simplesmente meter o ***Base.robot*** como resource, se houvessem mais testes ou o teste fosse mais complexo iria criar um ficheiro à parte chamado ***ExerciseSteps.robot*** com keywords intermediárias.

### BasePage.robot

Decidi utilizar xpath na keyword **Navigate to "${Link}" Page** pois deixa-me reutilizar esta keyword no caso de surgir um novo teste que necessite de navegar para outras páginas.

### ProuctsPage.robot

Utilizei xpath para as variáveis *{txtProductSearch}* e *{btnSubmitProduct}* pois o programa parecia não detectar estes elementos sobre a forma de "*tag[atributo=valor]*".

Adicionalmente como só existe 1 produto neste teste, não fiz nenhuma indexação os resultados da pesquisa, se houvessem mais resultados teria de se especificar qual deles é que deveria ser considerado.

**Comentário:** Acho estranho o produto efectivamente ter 2 botões de *Add to Cart*, um na *div* do produto em si e outro num overlay que aparece após *mouseover* (isto é capaz de criar alguns problemas).

No passo **Click on 'Cart' button** não tinha a certeza sobre se devia clicar no link que está na navigation bar do site ou no pop-up que aparece, decidi usar o do pop-up (apesar de já ter uma keyword para a nav-bar).
