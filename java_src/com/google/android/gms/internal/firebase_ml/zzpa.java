package com.google.android.gms.internal.firebase_ml;

import android.os.SystemClock;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p021ml.common.modeldownload.FirebaseRemoteModel;
/* loaded from: classes.dex */
public final class zzpa {
    private static final GmsLogger zzass = new GmsLogger("ModelDownloadLogger", "");
    private final zzob zzato;
    private final FirebaseRemoteModel zzavo;
    private final zznv zzavr;

    public zzpa(FirebaseApp firebaseApp, FirebaseRemoteModel firebaseRemoteModel) {
        this.zzavr = zznv.zza(firebaseApp, 4);
        this.zzavo = firebaseRemoteModel;
        this.zzato = zzob.zzc(firebaseApp);
    }

    public final void zza(zzmc zzmcVar, String str, boolean z, zzor zzorVar) {
        zza(zzmcVar, str, false, zzorVar, zzlu.zzw.zza.UNKNOWN_STATUS, 0);
    }

    private final void zza(zzmc zzmcVar, String str, boolean z, zzor zzorVar, zzlu.zzw.zza zzaVar, int i) {
        zzlu.zzy zza = zzox.zza(this.zzavo, zzorVar);
        if (!z) {
            this.zzavr.zza(zzlu.zzs.zzjl().zza(zzlu.zzam.zzle().zzbi(str)).zza(zzlu.zzw.zzjs().zze(zzmcVar).zzb(zzaVar).zzav(i).zzk(zza)), zzmd.MODEL_DOWNLOAD);
            return;
        }
        long zzf = this.zzato.zzf(this.zzavo);
        if (zzf == 0) {
            zzass.m791w("ModelDownloadLogger", "Model downloaded without its beginning time recorded.");
            this.zzavr.zza(zzlu.zzs.zzjl().zza(zzlu.zzam.zzle().zzbi(str)).zza(zzlu.zzw.zzjs().zze(zzmc.UNKNOWN_ERROR).zzav(i).zzk(zza)), zzmd.MODEL_DOWNLOAD);
            return;
        }
        long zzg = this.zzato.zzg(this.zzavo);
        if (zzg == 0) {
            zzg = SystemClock.elapsedRealtime();
            this.zzato.zza(this.zzavo, zzg);
        }
        this.zzavr.zza(zzlu.zzs.zzjl().zza(zzlu.zzam.zzle().zzbi(str)).zza(zzlu.zzw.zzjs().zzm(zzg - zzf).zzav(i).zze(zzmcVar).zzk(zza)), zzmd.MODEL_DOWNLOAD);
    }

    public final void zza(zzmc zzmcVar, boolean z, zzor zzorVar, zzlu.zzw.zza zzaVar) {
        zza(zzmcVar, "NA", z, zzorVar, zzaVar, 0);
    }

    public final void zza(boolean z, zzor zzorVar, int i) {
        zza(zzmc.DOWNLOAD_FAILED, "NA", false, zzorVar, zzlu.zzw.zza.FAILED, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzh(zzmc zzmcVar) {
        zza(zzmcVar, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzmc zzmcVar, int i) {
        zza(zzmcVar, "NA", false, zzor.UNKNOWN, zzlu.zzw.zza.MODEL_INFO_RETRIEVAL_FAILED, i);
    }
}
