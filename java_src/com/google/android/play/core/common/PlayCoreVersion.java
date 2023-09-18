package com.google.android.play.core.common;

import android.os.Bundle;
import com.google.android.play.core.internal.zzag;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public class PlayCoreVersion {
    private static final Map<String, Map<String, Integer>> zzc;

    static {
        new HashSet(Arrays.asList("app_update", "review"));
        new HashSet(Arrays.asList("native", "unity"));
        zzc = new HashMap();
        new zzag("PlayCoreVersion");
    }

    public static Bundle zza(String str) {
        Bundle bundle = new Bundle();
        Map<String, Integer> zzb = zzb(str);
        bundle.putInt("playcore_version_code", zzb.get("java").intValue());
        if (zzb.containsKey("native")) {
            bundle.putInt("playcore_native_version", zzb.get("native").intValue());
        }
        if (zzb.containsKey("unity")) {
            bundle.putInt("playcore_unity_version", zzb.get("unity").intValue());
        }
        return bundle;
    }

    public static synchronized Map<String, Integer> zzb(String str) {
        Map<String, Integer> map;
        synchronized (PlayCoreVersion.class) {
            Map<String, Map<String, Integer>> map2 = zzc;
            if (!map2.containsKey(str)) {
                HashMap hashMap = new HashMap();
                hashMap.put("java", 11002);
                map2.put(str, hashMap);
            }
            map = map2.get(str);
        }
        return map;
    }
}
