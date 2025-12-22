using {managed} from '@sap/cds/common';
namespace db;



entity Books:managed{
 
  key ID    : Integer;
      title : String;
      price : Decimal(9,2);
      coutry:String;



}

annotate Books with {
  modifiedAt @odata.etag
};

