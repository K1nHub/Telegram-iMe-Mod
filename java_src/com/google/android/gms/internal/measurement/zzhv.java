package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import androidx.collection.ArrayMap;
import java.util.Iterator;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-measurement-impl@@19.0.2 */
/* loaded from: classes.dex */
public final class zzhv implements zzhe {
    private static final Map<String, zzhv> zza = new ArrayMap();
    private final SharedPreferences zzb;
    private final SharedPreferences.OnSharedPreferenceChangeListener zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzhv zza(Context context, String str) {
        zzhv zzhvVar;
        if (!zzgw.zza()) {
            synchronized (zzhv.class) {
                zzhvVar = zza.get(null);
                if (zzhvVar == null) {
                    StrictMode.allowThreadDiskReads();
                    throw null;
                }
            }
            return zzhvVar;
        }
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void zzc() {
        synchronized (zzhv.class) {
            Map<String, zzhv> map = zza;
            Iterator<zzhv> it = map.values().iterator();
            if (it.hasNext()) {
                SharedPreferences sharedPreferences = it.next().zzb;
                throw null;
            }
            map.clear();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzhe
    public final Object zzb(String str) {
        throw null;
    }
}
