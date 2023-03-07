package com.google.android.gms.internal.firebase_ml;

import android.content.Context;
import com.google.firebase.FirebaseApp;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzqh extends zzir {
    private final /* synthetic */ FirebaseApp zzbaq;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzqh(zzqf zzqfVar, String str, FirebaseApp firebaseApp) {
        super(str);
        this.zzbaq = firebaseApp;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.firebase_ml.zzir
    public final void zza(zzis<?> zzisVar) throws IOException {
        String zzb;
        super.zza(zzisVar);
        Context applicationContext = this.zzbaq.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        zzisVar.zzeh().put("X-Android-Package", packageName);
        zzb = zzqf.zzb(applicationContext, packageName);
        zzisVar.zzeh().put("X-Android-Cert", zzb);
    }
}
