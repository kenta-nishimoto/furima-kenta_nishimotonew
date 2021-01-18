window.addEventListener('load', () => {
  const priceInput = document.getElementById("item-price");
  // ↪︎金額を入力しているフォームを呼び出している

  priceInput.addEventListener("input", () => {
    // ↪︎そのフォームにあたいが入力された時にイベントを起こすようにしている。

    const inputValue = priceInput.value;
    // ↪︎そのフォームのValueを取得している

    const addTaxDom = document.getElementById("add-tax-price");
    // ↪︎販売手数料を表示する場所のidを取得している

    // ====ここからわからない＝＝＝＝

    addTaxDom.innerHTML = "入力した金額をもとに販売手数料を計算する処理"


  })
});