using {db} from '../db/schema';
@requries:['authenticated-user']
service OptimisticConcurrency {
  
   @restrict: [
    { grant: ['READ','CREATE'], to: ['Viewer'],where:(coutry=$user.Country)},
    { grant: '*', to: ['Admin'] ,},
    {grant : 'UPDATE' , to:['Viewer'],where:(createdBy = $user)}
  ]
  entity Books as projection on db.Books;
}