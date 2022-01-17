({
    publishMovieData : function(component, event, helper) {
alert("Publishing from Aura");
        let matrixData = {
            MovieId: 'matrix',
            Name : 'The Matrix Revolutions',
            iMDB : 5.7,
            ReleaseDate : '27 October 2003',
            Director : 'Lana Wachowski',
            MovieData: {
                MovieId: 'matrix',
                Name : 'The Matrix Revolutions',
                iMDB : 5.7,
                ReleaseDate : '27 October 2003',
                Director : 'Lana Wachowski',
            },
            SourceOfData:'Aura Publisher'
        };
        component.find("matrixMovieDataId").publish(matrixData);
        alert("Publish complete from Aura");
    }
})
