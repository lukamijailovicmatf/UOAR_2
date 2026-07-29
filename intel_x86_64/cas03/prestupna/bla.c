unsigned prestupna(unsigned g){

    if(g % 4 == 0){

        if(g % 100 == 0){

            if(g % 400 == 0){
                return 1;
            }else{
                return 0;
            }
        }else{
            return 1;
        }
    }else{
        return 0;
    }
}