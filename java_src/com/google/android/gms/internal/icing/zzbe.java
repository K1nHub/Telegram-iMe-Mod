package com.google.android.gms.internal.icing;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.net.Uri;
import androidx.collection.ArrayMap;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.util.Iterator;
import java.util.Map;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* loaded from: classes.dex */
public final class zzbe {
    private final ContentResolver zzc;
    private final ContentObserver zzd;
    private static final Map<Uri, zzbe> zzb = new ArrayMap();
    public static final String[] zza = {"key", AppMeasurementSdk.ConditionalUserProperty.VALUE};

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void zza() {
        synchronized (zzbe.class) {
            Map<Uri, zzbe> map = zzb;
            Iterator<zzbe> it = map.values().iterator();
            if (it.hasNext()) {
                ContentResolver contentResolver = it.next().zzc;
                throw null;
            }
            map.clear();
        }
    }
}
