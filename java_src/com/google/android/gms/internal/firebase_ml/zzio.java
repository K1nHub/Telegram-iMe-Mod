package com.google.android.gms.internal.firebase_ml;

import java.io.IOException;
/* loaded from: classes.dex */
public final class zzio extends zzeu {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzio(zzin zzinVar) {
        super(zzinVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.firebase_ml.zzep
    public final void zza(zzer<?> zzerVar) throws IOException {
        super.zza(zzerVar);
    }

    static {
        boolean z = zzek.zzrz.intValue() == 1 && zzek.zzsa.intValue() >= 15;
        Object[] objArr = {zzek.VERSION};
        if (!z) {
            throw new IllegalStateException(zzld.zzb("You are currently running with version %s of google-api-client. You need at least version 1.15 of google-api-client to run version 1.25.0-SNAPSHOT of the Cloud Vision API library.", objArr));
        }
    }
}
