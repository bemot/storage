export default function Feedback( {type, content}){

    if(!content){
      type  = "";
    }
  
      return <p className={type}>{content}</p>;
    }