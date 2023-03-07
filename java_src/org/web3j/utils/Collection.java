package org.web3j.utils;

import java.util.List;
/* loaded from: classes6.dex */
public class Collection {

    /* loaded from: classes6.dex */
    public interface Function<R, S> {
        S apply(R r);
    }

    public static <T> String join(List<T> list, String str, Function<T, String> function) {
        String str2 = "";
        int i = 0;
        while (i < list.size()) {
            str2 = str2 + function.apply(list.get(i)).trim();
            i++;
            if (i < list.size()) {
                str2 = str2 + str;
            }
        }
        return str2;
    }
}
