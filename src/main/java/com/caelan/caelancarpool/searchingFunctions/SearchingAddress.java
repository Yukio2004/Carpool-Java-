/*package com.caelan.caelancarpool.searchingFunctions;

import com.caelan.caelancarpool.pojo.AddressList;

import java.util.List;

public class SearchingAddress {
    public List<Integer> finalMatch(List<AddressList> adList){
        for (int i = 0; i < adList.size(); i++){
            String campus = adList.get(i).getCampus();
            String livingPlace = adList.get(i).getLivingPlace();
            if(GoogleMap(campus,livingPlace)){
                adList.remove(i);
            }
        }
        return adList;
    }
}
*/