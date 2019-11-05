// this is a partially revealing module pattern - just a variation on what we've already done

const myVM = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let userButtons = document.querySelectorAll('.u-link img'),
        lightbox = document.querySelector('.lightbox');

    function renderSocialMedia(socialMedia) {
        return `<ul class="u-social">
                    ${socialMedia.map(item => `<li>${item}</li>`).join('')}
                </ul>`
    }
    
    function parseUserData(things) { //things is a database result
        let targetDiv = document.querySelector('.lb-content'),
            targetImg = lightbox.querySelector('img');

        let bioContent = `
        <div class="image">
        <img src="${things.IMAGE}" alt="favs">
        </div>
        <div class="info">
        <p>${things.DESCRIPTION}</p>
        <a href="${things.VIDEO}">Click to view video</a>
        </div>
        `;

     // ${renderSocialMedia(things.social)}

        console.log(bioContent);

        targetDiv.innerHTML = bioContent;
        targetImg.src = things.imgsrc;

        lightbox.classList.add('show-lb');

    }

    function getUserData(event) {
        // kill the default a tag behaviour (don't navigate anywhere)
        event.preventDefault(); 
        //debugger;
        // find the image closest to the anchor tag and get its src property
        let imgSrc = this.getAttribute('src');
        let url = `/users/${this.parentElement.getAttribute('href')}`; // /1

        fetch(url) // go get the data
            .then(res => res.json()) // parse the json result inta a plain object
            .then(data => {
                console.log("my database result is: ", data)

                data[0].imgsrc = imgSrc;

                parseUserData(data[0]);
            })
            .catch((err) => {
                console.log(err)
            });
    }

    userButtons.forEach(button => button.addEventListener('click', getUserData))

    lightbox.querySelector('.close').addEventListener('click', function() {
        lightbox.classList.remove('show-lb');
    })

})();