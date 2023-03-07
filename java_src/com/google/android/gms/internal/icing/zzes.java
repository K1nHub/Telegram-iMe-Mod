package com.google.android.gms.internal.icing;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
/* loaded from: classes.dex */
public final class zzes extends zzez {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzes(int i) {
        super(i, null);
    }

    @Override // com.google.android.gms.internal.icing.zzez
    public final void zza() {
        if (!zzb()) {
            for (int i = 0; i < zzc(); i++) {
                Map.Entry zzd = zzd(i);
                if (((zzct) zzd.getKey()).zzc()) {
                    zzd.setValue(Collections.unmodifiableList((List) zzd.getValue()));
                }
            }
            for (Map.Entry entry : zze()) {
                if (((zzct) entry.getKey()).zzc()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.zza();
    }
}
