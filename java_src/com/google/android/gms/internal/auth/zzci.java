package com.google.android.gms.internal.auth;

import android.net.Uri;
import androidx.collection.SimpleArrayMap;
/* compiled from: com.google.android.gms:play-services-auth-base@@18.0.4 */
/* loaded from: classes.dex */
public final class zzci {
    private final SimpleArrayMap zza;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzci(SimpleArrayMap simpleArrayMap) {
        this.zza = simpleArrayMap;
    }

    public final String zza(Uri uri, String str, String str2, String str3) {
        if (uri != null) {
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) this.zza.get(uri.toString());
            if (simpleArrayMap == null) {
                return null;
            }
            return (String) simpleArrayMap.get("".concat(String.valueOf(str3)));
        }
        return null;
    }
}
