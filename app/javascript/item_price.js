// const price = function () {
//   const totalPrice = document.getElementById("total_price");
//   const onePrice = document.getElementById("one_price");

//   // ------<人数を選択した時の計算>
//   const selectNum = document.getElementById("num");
//     selectNum.addEventListener('change', function (){
//       // numのdata属性の値を取る
//       const numSelectBox = document.getElementById("num");
//       const dataNum = numSelectBox.options[ numSelectBox.selectedIndex].getAttribute("data-multiple");
//       // 一人料金のidを取得
//       const priceOne = document.getElementById("one_price");
//       //値を数列にする
//       const displayPriceOne = priceOne.innerHTML;
//       //カンマを除去する
//       const displayPriceOneInteger = Number( displayPriceOne.replace(/,/, '') );
//       // 計算する
//       const total = (displayPriceOneInteger*dataNum);
//       // 正規表現でカンマ区切りに直して日本円に変換する
//       const totalComma = total.toLocaleString('ja-JP', { style: 'currency', currency: 'JPY'});
//       // 表示する
//       totalPrice.innerHTML = totalComma;
//       // ----<フォームに入力>
//       // 合計金額の値を取得 
//       const displayPriceTotal = totalPrice.innerHTML;
//       // 取得した合計金額をフォームに入力
//       document.getElementById("f_price").value = displayPriceTotal;
//     });
// }

// window.addEventListener("load", price);