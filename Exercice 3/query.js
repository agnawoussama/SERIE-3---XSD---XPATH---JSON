function query() {
    // File
    let vFile = document.getElementById("myfile").files[0];
    // Un objet Reader pour lier le document personne.json
    let vReader = new FileReader();
    vReader.readAsText(vFile);
    // lorsque le lecteur a lu le document et est prêt
    vReader.onload = function() {
        // vContent qui stock le resultat de vReader
        let vContent = vReader.result;
        // nous allons convertir le json en objet pour accéder à ses valeurs
        let vJson = JSON.parse(vContent);
        // Ensuite, on concatenne les infos de l'objet dans un string
        let vResult = vJson.prenom + " " + vJson.nom + " (" + vJson.age + ")" + " " + vJson.adresseEmails
        // Enfin, On affiche le resultat dans le html document
        document.getElementById("mydiv").innerText= vResult;
    };
}