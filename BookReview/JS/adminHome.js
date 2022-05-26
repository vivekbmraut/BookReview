let searchForm = document.querySelector('.search-form');

document.querySelector('#search-btn').onclick = () => {
    searchForm.classList.toggle('active');
}

let viewProfile = document.querySelector(".profile");

document.querySelector('#details').onclick = () => {
    viewProfile.classList.toggle('active');
}
