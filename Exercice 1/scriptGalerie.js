

$.getJSON("galerie.json", function (maGallerie) {
    $.each(maGallerie, function (key, value) {
        if (Array.isArray(value)) {
            for (const img of maGallerie.listeImages) {
                $("#myTable").append(`<tr><td>Image de ${img.titre}</td>
                <td>
                    <div><b>Titre:</b> ${img.titre}</div>
                    <div><b>Source:</b> ${img.source}</div>
                    <div><b>Texte:</b> ${img.texte}</div>
                    <div><b>Date de Creation:</b> ${img.dateCreation}</div>
                    <div><b>Personnes:</b> ${img.personnesPresentes}</div>
                </td>                  
                </tr>`);
            }          
        }else
        $("#myTable").append(`<tr><td>${key}</td><td>${value}</td></tr>`);      
    })
})

