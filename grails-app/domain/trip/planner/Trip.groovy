package trip.planner
class Trip {
    int id
    String name
    String startDate
    String finishDate
    String airline
    String place
    double calification

    static constraints = {
        name maxSize: 255
        startDate
        finishDate
        airline inList: ['Emirates', 'Avianca', 'Wingo', 'Aviatur', 'Latam', 'Despegar']
        place nullable: true
        calification nullable: true
    }
}
