using {db} from '../db/schema';

service OptimisticConcurrency{
  

  entity Books as projection on db.Books;
}