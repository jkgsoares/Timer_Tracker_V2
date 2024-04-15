const cds = require("@sap/cds");

class TimeTracker_srv extends cds.ApplicationService {
    init() {

        this.on ('aprovarStatus', async req => {
            let succeded = await UPDATE (req.subject) .with ({status:'Aprovado'})

            if (succeded) {
                console.log("Operação bem-sucedida!")
                req.info("Operação bem-sucedida!")
            } else {
                console.log("Operação inválida.")
                req.info("Operação inválida.")
            }
        })
        this.on ('reprovarStatus', async req => {
            let succeded = await UPDATE (req.subject) .with ({status:'Reprovado'})

            if (succeded) {
                console.log("Operação bem-sucedida!")
                req.info("Operação bem-sucedida!")
            } else {
                console.log("Operação inválida.")
                req.info("Operação inválida.")
            }
        })
        return super.init();
    }
}

// Exportar a função para que ela possa ser usada em outros arquivos
module.exports = { TimeTracker_srv };


