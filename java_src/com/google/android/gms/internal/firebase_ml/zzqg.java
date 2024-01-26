package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.auth.api.AuthProxy;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Add missing generic type declarations: [ResultType] */
/* loaded from: classes.dex */
public final class zzqg<ResultType> implements zzno<ResultType, zzqe>, zznx {
    private final GoogleApiClient zzbam;
    private final zzqf zzbao;
    private final /* synthetic */ zzqd zzbap;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzqg(zzqd zzqdVar, FirebaseApp firebaseApp, boolean z) {
        this.zzbap = zzqdVar;
        if (z) {
            GoogleApiClient build = new GoogleApiClient.Builder(firebaseApp.getApplicationContext()).addApi(AuthProxy.API).build();
            this.zzbam = build;
            build.connect();
        } else {
            this.zzbam = null;
        }
        this.zzbao = zzqf.zza(firebaseApp, z, this.zzbam);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzno
    public final zznx zzll() {
        return this;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zznx
    public final void zzln() throws FirebaseMLException {
        GoogleApiClient googleApiClient = this.zzbam;
        if (googleApiClient != null && googleApiClient.blockingConnect(3L, TimeUnit.SECONDS) != ConnectionResult.RESULT_SUCCESS) {
            throw new FirebaseMLException("Failed to contact Google Play services", 14);
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zznx
    public final void release() {
        GoogleApiClient googleApiClient = this.zzbam;
        if (googleApiClient != null) {
            googleApiClient.disconnect();
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzno
    public final /* synthetic */ Object zza(zzqe zzqeVar) throws FirebaseMLException {
        zzqe zzqeVar2 = zzqeVar;
        return this.zzbap.zza(this.zzbao.zza(zzqeVar2), zzqeVar2.zzbah);
    }
}
