package com.google.android.gms.internal.firebase_ml;

import android.content.Context;
import android.os.SystemClock;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.vision.label.ImageLabeler;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p021ml.vision.label.FirebaseVisionImageLabel;
import com.google.firebase.p021ml.vision.label.FirebaseVisionOnDeviceImageLabelerOptions;
import java.util.List;
/* loaded from: classes.dex */
public final class zzqv implements zzno<List<FirebaseVisionImageLabel>, zzqp>, zznx {
    private static boolean zzazs = true;
    private static volatile Boolean zzbcx;
    private final Context zzauh;
    private final zznv zzavr;
    private final FirebaseVisionOnDeviceImageLabelerOptions zzbcy;
    private ImageLabeler zzbcz;

    public zzqv(FirebaseApp firebaseApp, FirebaseVisionOnDeviceImageLabelerOptions firebaseVisionOnDeviceImageLabelerOptions) {
        Preconditions.checkNotNull(firebaseApp, "Context can not be null");
        Preconditions.checkNotNull(firebaseVisionOnDeviceImageLabelerOptions, "FirebaseVisionOnDeviceImageLabelerOptions can not be null");
        this.zzauh = firebaseApp.getApplicationContext();
        this.zzbcy = firebaseVisionOnDeviceImageLabelerOptions;
        this.zzavr = zznv.zza(firebaseApp, 1);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzno
    public final zznx zzll() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    @Override // com.google.android.gms.internal.firebase_ml.zzno
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.List<com.google.firebase.p021ml.vision.label.FirebaseVisionImageLabel> zza(com.google.android.gms.internal.firebase_ml.zzqp r9) throws com.google.firebase.p021ml.common.FirebaseMLException {
        /*
            r8 = this;
            monitor-enter(r8)
            java.lang.Boolean r0 = com.google.android.gms.internal.firebase_ml.zzqv.zzbcx     // Catch: java.lang.Throwable -> L97
            r1 = 0
            if (r0 != 0) goto L27
            android.content.Context r0 = r8.zzauh     // Catch: java.lang.Throwable -> L97
            java.lang.String r2 = "com.google.android.gms.vision.dynamite.ica"
            int r2 = com.google.android.gms.dynamite.DynamiteModule.getLocalVersion(r0, r2)     // Catch: java.lang.Throwable -> L97
            r3 = 1
            if (r2 > 0) goto L1c
            java.lang.String r2 = "com.google.android.gms.vision.dynamite.imagelabel"
            int r0 = com.google.android.gms.dynamite.DynamiteModule.getLocalVersion(r0, r2)     // Catch: java.lang.Throwable -> L97
            if (r0 <= 0) goto L1a
            goto L1c
        L1a:
            r0 = r1
            goto L1d
        L1c:
            r0 = r3
        L1d:
            if (r0 != 0) goto L20
            goto L21
        L20:
            r3 = r1
        L21:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r3)     // Catch: java.lang.Throwable -> L97
            com.google.android.gms.internal.firebase_ml.zzqv.zzbcx = r0     // Catch: java.lang.Throwable -> L97
        L27:
            java.lang.Boolean r0 = com.google.android.gms.internal.firebase_ml.zzqv.zzbcx     // Catch: java.lang.Throwable -> L97
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L97
            r2 = 14
            if (r0 != 0) goto L8f
            long r3 = android.os.SystemClock.elapsedRealtime()     // Catch: java.lang.Throwable -> L97
            com.google.android.gms.vision.label.ImageLabeler r0 = r8.zzbcz     // Catch: java.lang.Throwable -> L97
            if (r0 == 0) goto L80
            boolean r0 = r0.isOperational()     // Catch: java.lang.Throwable -> L97
            if (r0 == 0) goto L73
            com.google.android.gms.vision.label.ImageLabeler r0 = r8.zzbcz     // Catch: java.lang.Throwable -> L97
            com.google.android.gms.vision.Frame r2 = r9.zzbay     // Catch: java.lang.Throwable -> L97
            android.util.SparseArray r0 = r0.detect(r2)     // Catch: java.lang.Throwable -> L97
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L97
            r2.<init>()     // Catch: java.lang.Throwable -> L97
            if (r0 == 0) goto L6a
            r5 = r1
        L4f:
            int r6 = r0.size()     // Catch: java.lang.Throwable -> L97
            if (r5 >= r6) goto L6a
            int r6 = r0.keyAt(r5)     // Catch: java.lang.Throwable -> L97
            com.google.firebase.ml.vision.label.FirebaseVisionImageLabel r7 = new com.google.firebase.ml.vision.label.FirebaseVisionImageLabel     // Catch: java.lang.Throwable -> L97
            java.lang.Object r6 = r0.get(r6)     // Catch: java.lang.Throwable -> L97
            com.google.android.gms.vision.label.ImageLabel r6 = (com.google.android.gms.vision.label.ImageLabel) r6     // Catch: java.lang.Throwable -> L97
            r7.<init>(r6)     // Catch: java.lang.Throwable -> L97
            r2.add(r7)     // Catch: java.lang.Throwable -> L97
            int r5 = r5 + 1
            goto L4f
        L6a:
            com.google.android.gms.internal.firebase_ml.zzmc r0 = com.google.android.gms.internal.firebase_ml.zzmc.NO_ERROR     // Catch: java.lang.Throwable -> L97
            r8.zza(r0, r3, r9)     // Catch: java.lang.Throwable -> L97
            com.google.android.gms.internal.firebase_ml.zzqv.zzazs = r1     // Catch: java.lang.Throwable -> L97
            monitor-exit(r8)
            return r2
        L73:
            com.google.android.gms.internal.firebase_ml.zzmc r0 = com.google.android.gms.internal.firebase_ml.zzmc.MODEL_NOT_DOWNLOADED     // Catch: java.lang.Throwable -> L97
            r8.zza(r0, r3, r9)     // Catch: java.lang.Throwable -> L97
            com.google.firebase.ml.common.FirebaseMLException r9 = new com.google.firebase.ml.common.FirebaseMLException     // Catch: java.lang.Throwable -> L97
            java.lang.String r0 = "Waiting for the label detection model to be downloaded. Please wait."
            r9.<init>(r0, r2)     // Catch: java.lang.Throwable -> L97
            throw r9     // Catch: java.lang.Throwable -> L97
        L80:
            com.google.android.gms.internal.firebase_ml.zzmc r0 = com.google.android.gms.internal.firebase_ml.zzmc.UNKNOWN_ERROR     // Catch: java.lang.Throwable -> L97
            r8.zza(r0, r3, r9)     // Catch: java.lang.Throwable -> L97
            com.google.firebase.ml.common.FirebaseMLException r9 = new com.google.firebase.ml.common.FirebaseMLException     // Catch: java.lang.Throwable -> L97
            java.lang.String r0 = "Model source is unavailable. Please load the model resource first."
            r1 = 13
            r9.<init>(r0, r1)     // Catch: java.lang.Throwable -> L97
            throw r9     // Catch: java.lang.Throwable -> L97
        L8f:
            com.google.firebase.ml.common.FirebaseMLException r9 = new com.google.firebase.ml.common.FirebaseMLException     // Catch: java.lang.Throwable -> L97
            java.lang.String r0 = "No model is bundled. Please check your app setup to includefirebase-ml-vision-image-label-model dependency."
            r9.<init>(r0, r2)     // Catch: java.lang.Throwable -> L97
            throw r9     // Catch: java.lang.Throwable -> L97
        L97:
            r9 = move-exception
            monitor-exit(r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzqv.zza(com.google.android.gms.internal.firebase_ml.zzqp):java.util.List");
    }

    @Override // com.google.android.gms.internal.firebase_ml.zznx
    public final synchronized void zzln() {
        if (this.zzbcz == null) {
            this.zzbcz = new ImageLabeler.Builder(this.zzauh).setScoreThreshold(this.zzbcy.getConfidenceThreshold()).build();
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zznx
    public final synchronized void release() {
        ImageLabeler imageLabeler = this.zzbcz;
        if (imageLabeler != null) {
            imageLabeler.release();
            this.zzbcz = null;
        }
        zzazs = true;
    }

    private final void zza(final zzmc zzmcVar, final long j, final zzqp zzqpVar) {
        this.zzavr.zza(new zzny(this, j, zzmcVar, zzqpVar) { // from class: com.google.android.gms.internal.firebase_ml.zzqu
            private final long zzaxy;
            private final zzmc zzbab;
            private final zzqp zzbac;
            private final zzqv zzbcw;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzbcw = this;
                this.zzaxy = j;
                this.zzbab = zzmcVar;
                this.zzbac = zzqpVar;
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzny
            public final zzlu.zzs.zza zzlo() {
                return this.zzbcw.zza(this.zzaxy, this.zzbab, this.zzbac);
            }
        }, zzmd.ON_DEVICE_IMAGE_LABEL_DETECT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzlu.zzs.zza zza(long j, zzmc zzmcVar, zzqp zzqpVar) {
        return zzlu.zzs.zzjl().zza(zzlu.zzac.zzkh().zzf(zzlu.zzu.zzjp().zzk(SystemClock.elapsedRealtime() - j).zzd(zzmcVar).zzp(zzazs).zzq(true).zzr(true)).zzb(this.zzbcy.zznr()).zze(zzqm.zzc(zzqpVar)));
    }
}
