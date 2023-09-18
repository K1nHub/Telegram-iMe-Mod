package com.google.android.play.core.assetpacks;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.play:core@@1.10.2 */
/* loaded from: classes4.dex */
public abstract class AssetPackStates {
    public static AssetPackStates zza(Bundle bundle, zzco zzcoVar, zzeb zzebVar) {
        return zzd(bundle, zzcoVar, zzebVar, new ArrayList(), new zzbe() { // from class: com.google.android.play.core.assetpacks.zzbf
            @Override // com.google.android.play.core.assetpacks.zzbe
            public final int zza(int i, String str) {
                return i;
            }
        });
    }

    private static AssetPackStates zzd(Bundle bundle, zzco zzcoVar, zzeb zzebVar, List<String> list, zzbe zzbeVar) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList("pack_names");
        HashMap hashMap = new HashMap();
        int size = stringArrayList.size();
        for (int i = 0; i < size; i++) {
            String str = stringArrayList.get(i);
            hashMap.put(str, AssetPackState.zzc(bundle, str, zzcoVar, zzebVar, zzbeVar));
        }
        for (String str2 : list) {
            hashMap.put(str2, AssetPackState.zzb(str2, 4, 0, 0L, 0L, 0.0d, 1, "", ""));
        }
        return new zzbo(bundle.getLong("total_bytes_to_download"), hashMap);
    }

    public abstract Map<String, AssetPackState> packStates();

    public abstract long totalBytes();
}
