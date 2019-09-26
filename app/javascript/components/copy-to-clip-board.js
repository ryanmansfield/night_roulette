function copyToClipBoard() {
  /* Get the text field */
  var copyText = document.getElementById('myInput');

  /* Select the text field */
  copyText.select();
  copyText.setSelectionRange(0, 99999); /*For mobile devices*/

  /* Copy the text inside the text field */
  document.execCommand('copy');

  let shareBtn = document.getElementById('share-btn');
  if (shareBtn) {
    shareBtn.addEventListener('click', event => {
      copyToClipBoard();
    });
  }
}

export { copyToClipBoard };
