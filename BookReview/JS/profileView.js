let imgDiv = document.querySelector(".profile-picture");
let saveBtn = document.querySelector(".save-btn");
let file = document.getElementById("imgFileUpload");

file.addEventListener("change", function () {
    const choosedFile = this.files[0];
    if (choosedFile) {
        const reader = new FileReader();
        reader.addEventListener("load", function () {
            imgDiv.style.backgroundImage = "url('" + reader.result + "')";
        });
        reader.readAsDataURL(choosedFile);
        saveBtn.style.display = "inline";
    }
});