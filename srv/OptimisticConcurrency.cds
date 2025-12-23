using {db} from '../db/schema';
@requries:['authenticated-user']
service OptimisticConcurrency {
  
   @restrict: [
    { grant: ['READ','CREATE'], to: ['Viewer']},
    { grant: '*', to: ['Admin'] ,},
    {grant : 'UPDATE' , to:['Viewer']}
  ]
  entity Books as projection on db.Books;


  function getBooks() returns Books;
}


