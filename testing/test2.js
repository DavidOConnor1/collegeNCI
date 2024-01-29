$(document).ready(function () {
    $.getJSON('https://failteireland.azure-api.net/opendata-api/v1/activities/'),
    function(data){
        console.log(data);
        const activitiesHolder = data.results;
        const actIndex = activitiesHolder[2];

        const actInfo = `<p> Name: ${activitiesHolder.name}, Url of the event ${activitiesHolder.url}</p> `
        $('#load-content').append(actInfo);
    }
})