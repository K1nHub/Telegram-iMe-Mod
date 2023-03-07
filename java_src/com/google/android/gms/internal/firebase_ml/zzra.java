package com.google.android.gms.internal.firebase_ml;

import android.content.Context;
import android.os.SystemClock;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.vision.text.TextBlock;
import com.google.android.gms.vision.text.TextRecognizer;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p021ml.common.FirebaseMLException;
import com.google.firebase.p021ml.vision.text.FirebaseVisionText;
/* loaded from: classes.dex */
public final class zzra implements zzno<FirebaseVisionText, zzqp>, zznx {
    static boolean zzazs = true;
    private final Context zzauh;
    private final zznv zzavr;
    private zzqk zzazv = new zzqk();
    private TextRecognizer zzbdx;

    public zzra(FirebaseApp firebaseApp) {
        Preconditions.checkNotNull(firebaseApp, "Firebase App can not be null");
        this.zzauh = firebaseApp.getApplicationContext();
        this.zzavr = zznv.zza(firebaseApp, 1);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzno
    public final zznx zzll() {
        return this;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zznx
    public final synchronized void zzln() {
        if (this.zzbdx == null) {
            this.zzbdx = new TextRecognizer.Builder(this.zzauh).build();
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zznx
    public final synchronized void release() {
        TextRecognizer textRecognizer = this.zzbdx;
        if (textRecognizer != null) {
            textRecognizer.release();
            this.zzbdx = null;
        }
        zzazs = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.internal.firebase_ml.zzno
    /* renamed from: zzd */
    public final synchronized FirebaseVisionText zza(zzqp zzqpVar) throws FirebaseMLException {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        TextRecognizer textRecognizer = this.zzbdx;
        if (textRecognizer == null) {
            zza(zzmc.UNKNOWN_ERROR, elapsedRealtime, zzqpVar);
            throw new FirebaseMLException("Model source is unavailable. Please load the model resource first.", 13);
        } else if (!textRecognizer.isOperational()) {
            zza(zzmc.MODEL_NOT_DOWNLOADED, elapsedRealtime, zzqpVar);
            throw new FirebaseMLException("Waiting for the text recognition model to be downloaded. Please wait.", 14);
        } else {
            this.zzazv.zzb(zzqpVar);
            SparseArray<TextBlock> detect = this.zzbdx.detect(zzqpVar.zzbay);
            zza(zzmc.NO_ERROR, elapsedRealtime, zzqpVar);
            zzazs = false;
            if (detect == null) {
                return null;
            }
            return new FirebaseVisionText(detect);
        }
    }

    private final void zza(final zzmc zzmcVar, final long j, final zzqp zzqpVar) {
        this.zzavr.zza(new zzny(j, zzmcVar, zzqpVar) { // from class: com.google.android.gms.internal.firebase_ml.zzrd
            private final long zzbdy;
            private final zzmc zzbdz;
            private final zzqp zzbea;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzbdy = j;
                this.zzbdz = zzmcVar;
                this.zzbea = zzqpVar;
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzny
            public final zzlu.zzs.zza zzlo() {
                long j2 = this.zzbdy;
                zzmc zzmcVar2 = this.zzbdz;
                zzqp zzqpVar2 = this.zzbea;
                return zzlu.zzs.zzjl().zza(zzlu.zzak.zzkz().zzh(zzlu.zzu.zzjp().zzk(SystemClock.elapsedRealtime() - j2).zzd(zzmcVar2).zzp(zzra.zzazs).zzq(true).zzr(true)).zzg(zzqm.zzc(zzqpVar2)));
            }
        }, zzmd.ON_DEVICE_TEXT_DETECT);
    }
}
