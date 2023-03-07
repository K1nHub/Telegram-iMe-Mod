package org.web3j.abi;

import java.util.ArrayList;
import java.util.List;
import org.web3j.abi.datatypes.Type;
/* loaded from: classes6.dex */
public class Utils {
    public static List<TypeReference<Type>> convert(List<TypeReference<?>> list) {
        ArrayList arrayList = new ArrayList(list.size());
        for (TypeReference<?> typeReference : list) {
            arrayList.add(typeReference);
        }
        return arrayList;
    }
}
