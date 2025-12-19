namespace db;


entity Books{
 
  key ID    : Integer;
      title : String;
      price : Decimal(9,2);
      @odata.etag
      version : Integer;

}

