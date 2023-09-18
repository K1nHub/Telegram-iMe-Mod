package com.google.android.play.core.review.model;

import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public final class zza {
    private static final Map<Integer, String> zza;
    private static final Map<Integer, String> zzb;

    static {
        HashMap hashMap = new HashMap();
        zza = hashMap;
        HashMap hashMap2 = new HashMap();
        zzb = hashMap2;
        hashMap.put(-1, "The Play Store app is either not installed or not the official version.");
        hashMap.put(-2, "Call first requestReviewFlow to get the ReviewInfo.");
        hashMap2.put(-1, "PLAY_STORE_NOT_FOUND");
        hashMap2.put(-2, "INVALID_REQUEST");
    }

    public static String zza(int i) {
        Map<Integer, String> map = zza;
        Integer valueOf = Integer.valueOf(i);
        if (map.containsKey(valueOf)) {
            String str = map.get(valueOf);
            String str2 = zzb.get(valueOf);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 106 + String.valueOf(str2).length());
            sb.append(str);
            sb.append(" (https://developer.android.com/reference/com/google/android/play/core/review/model/ReviewErrorCode.html#");
            sb.append(str2);
            sb.append(")");
            return sb.toString();
        }
        return "";
    }
}
