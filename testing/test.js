fetch('https://www.eventbriteapi.com/v3/users/me/?token=3VME6455CX26VW2ST3KU', {
    method: 'POST', 
    header : {
        'content-type' : 'application/json'
    },
    body: JSON.stringify({
        name: 'User 1'
    })
}).then(res => {
    return res.json()
})



   /* .then(res => {
        if(res.ok){
            console.log('success!')
        } else {
            console.log('Error?')
        }
        //res.json() 
    })*/
    .then(data => console.log(data))
    .catch(error => console.log('Error'))