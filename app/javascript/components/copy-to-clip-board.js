function copyToClipBoard() {
  /* Get the text field */
  const shareBtn = document.getElementById('share-btn');
if (shareBtn) {
  shareBtn.addEventListener('click', event => {
   var copyText = document.getElementById("myInput");

  /* Select the text field */
  // copyText.select();
  // copyText.setSelectionRange(0, 99999); /*For mobile devices*/

  /* Copy the text inside the text field */
  // document.execCommand("copy");

  /* Alert the copied text */
  alert("Your night has been shared with friends, have a great time!!");
  });
}
}

export { copyToClipBoard };




