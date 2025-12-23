

module.exports = cds.service.impl(async function (){



    this.on("getBooks",async (req)=>{
        const { Books } = this.entities;
        const books =await this.run(SELECT.from(Books,7006609).forUpdate());
        let update = await this.run(UPDATE(Books,7006609).with({title:"hello"}))
        req.reply(books);
    })
})