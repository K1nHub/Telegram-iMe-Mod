package com.google.android.gms.internal.auth;

import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-auth-base@@18.0.4 */
/* loaded from: classes.dex */
public final class zzcw extends zzdc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcw(zzcz zzczVar, String str, Boolean bool, boolean z) {
        super(zzczVar, str, bool, true, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.auth.zzdc
    final /* bridge */ /* synthetic */ Object zza(Object obj) {
        if (zzcb.zzc.matcher(obj).matches()) {
            return Boolean.TRUE;
        }
        if (!zzcb.zzd.matcher(obj).matches()) {
            String zzc = super.zzc();
            Log.e("PhenotypeFlag", "Invalid boolean value for " + zzc + ": " + ((String) obj));
            return null;
        }
        return Boolean.FALSE;
    }
}
