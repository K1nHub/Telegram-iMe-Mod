package com.google.android.gms.internal.icing;

import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
@ShowFirstParty
@VisibleForTesting
/* loaded from: classes.dex */
public final class zzq {
    @VisibleForTesting
    static final String[] zza = {"text1", "text2", "icon", "intent_action", "intent_data", "intent_data_id", "intent_extra_data", "suggest_large_icon", "intent_activity", "thing_proto"};
    private static final Map<String, Integer> zzb = new HashMap(10);

    static {
        int i = 0;
        while (true) {
            String[] strArr = zza;
            int length = strArr.length;
            if (i >= 10) {
                return;
            }
            zzb.put(strArr[i], Integer.valueOf(i));
            i++;
        }
    }

    public static String zza(int i) {
        if (i >= 0) {
            String[] strArr = zza;
            int length = strArr.length;
            if (i >= 10) {
                return null;
            }
            return strArr[i];
        }
        return null;
    }

    public static int zzb(String str) {
        Integer num = zzb.get(str);
        if (num == null) {
            StringBuilder sb = new StringBuilder(str.length() + 44);
            sb.append("[");
            sb.append(str);
            sb.append("] is not a valid global search section name");
            throw new IllegalArgumentException(sb.toString());
        }
        return num.intValue();
    }
}
