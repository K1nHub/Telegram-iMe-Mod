package com.google.android.gms.internal.firebase_ml;

import android.content.Context;
import android.os.SystemClock;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.vision.face.Face;
import com.google.android.gms.vision.face.FaceDetector;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import com.google.firebase.p020ml.vision.face.FirebaseVisionFace;
import com.google.firebase.p020ml.vision.face.FirebaseVisionFaceDetectorOptions;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public final class zzqq implements zzno<List<FirebaseVisionFace>, zzqp>, zznx {
    private static AtomicBoolean zzaxr = new AtomicBoolean(true);
    private static volatile Boolean zzbcf;
    private final Context zzauh;
    private final zznv zzavr;
    private zzqk zzazv = new zzqk();
    private final FirebaseVisionFaceDetectorOptions zzbcg;
    private FaceDetector zzbch;
    private FaceDetector zzbci;

    public zzqq(FirebaseApp firebaseApp, FirebaseVisionFaceDetectorOptions firebaseVisionFaceDetectorOptions) {
        Preconditions.checkNotNull(firebaseApp, "FirebaseApp can not be null");
        Preconditions.checkNotNull(firebaseVisionFaceDetectorOptions, "FirebaseVisionFaceDetectorOptions can not be null");
        this.zzauh = firebaseApp.getApplicationContext();
        this.zzbcg = firebaseVisionFaceDetectorOptions;
        this.zzavr = zznv.zza(firebaseApp, 1);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzno
    public final zznx zzll() {
        return this;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zznx
    public final synchronized void zzln() {
        if (this.zzbcg.getContourMode() == 2) {
            if (this.zzbci == null) {
                this.zzbci = new FaceDetector.Builder(this.zzauh).setLandmarkType(2).setMode(2).setTrackingEnabled(false).setProminentFaceOnly(true).build();
            }
            if ((this.zzbcg.getLandmarkMode() == 2 || this.zzbcg.getClassificationMode() == 2 || this.zzbcg.getPerformanceMode() == 2) && this.zzbch == null) {
                this.zzbch = new FaceDetector.Builder(this.zzauh).setLandmarkType(zzqm.zzbo(this.zzbcg.getLandmarkMode())).setClassificationType(zzqm.zzbq(this.zzbcg.getClassificationMode())).setMode(zzqm.zzbp(this.zzbcg.getPerformanceMode())).setMinFaceSize(this.zzbcg.getMinFaceSize()).setTrackingEnabled(this.zzbcg.isTrackingEnabled()).build();
            }
        } else if (this.zzbch == null) {
            this.zzbch = new FaceDetector.Builder(this.zzauh).setLandmarkType(zzqm.zzbo(this.zzbcg.getLandmarkMode())).setClassificationType(zzqm.zzbq(this.zzbcg.getClassificationMode())).setMode(zzqm.zzbp(this.zzbcg.getPerformanceMode())).setMinFaceSize(this.zzbcg.getMinFaceSize()).setTrackingEnabled(this.zzbcg.isTrackingEnabled()).build();
        }
    }

    @Override // com.google.android.gms.internal.firebase_ml.zznx
    public final synchronized void release() {
        FaceDetector faceDetector = this.zzbch;
        if (faceDetector != null) {
            faceDetector.release();
            this.zzbch = null;
        }
        FaceDetector faceDetector2 = this.zzbci;
        if (faceDetector2 != null) {
            faceDetector2.release();
            this.zzbci = null;
        }
        zzaxr.set(true);
    }

    private final synchronized List<FirebaseVisionFace> zza(FaceDetector faceDetector, zzqp zzqpVar, long j) throws FirebaseMLException {
        ArrayList arrayList;
        if (this.zzbci != null) {
            if (zzbcf == null) {
                zzbcf = Boolean.valueOf(DynamiteModule.getLocalVersion(this.zzauh, "com.google.android.gms.vision.dynamite.face") > 0);
            }
            if (!zzbcf.booleanValue()) {
                throw new FirebaseMLException("No Face Contour model is bundled. Please check your app setup to include firebase-ml-vision-face-model dependency.", 14);
            }
        }
        if (!faceDetector.isOperational()) {
            zza(zzmc.MODEL_NOT_DOWNLOADED, j, zzqpVar, 0, 0);
            throw new FirebaseMLException("Waiting for the face detection model to be downloaded. Please wait.", 14);
        }
        SparseArray<Face> detect = faceDetector.detect(zzqpVar.zzbay);
        arrayList = new ArrayList();
        for (int i = 0; i < detect.size(); i++) {
            arrayList.add(new FirebaseVisionFace(detect.get(detect.keyAt(i))));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005c, code lost:
        r0 = r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0100 A[Catch: all -> 0x0153, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x000f, B:9:0x0014, B:10:0x0026, B:11:0x0027, B:13:0x0031, B:15:0x003d, B:17:0x0042, B:19:0x0046, B:23:0x0052, B:24:0x0059, B:56:0x012d, B:63:0x0141, B:62:0x013c, B:59:0x0133, B:30:0x0065, B:31:0x006e, B:33:0x0074, B:34:0x007f, B:36:0x0085, B:38:0x0091, B:41:0x0098, B:43:0x00a6, B:49:0x0100, B:50:0x0108, B:53:0x011b, B:55:0x0126), top: B:69:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0133 A[Catch: all -> 0x0153, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x000f, B:9:0x0014, B:10:0x0026, B:11:0x0027, B:13:0x0031, B:15:0x003d, B:17:0x0042, B:19:0x0046, B:23:0x0052, B:24:0x0059, B:56:0x012d, B:63:0x0141, B:62:0x013c, B:59:0x0133, B:30:0x0065, B:31:0x006e, B:33:0x0074, B:34:0x007f, B:36:0x0085, B:38:0x0091, B:41:0x0098, B:43:0x00a6, B:49:0x0100, B:50:0x0108, B:53:0x011b, B:55:0x0126), top: B:69:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x013c A[Catch: all -> 0x0153, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x000f, B:9:0x0014, B:10:0x0026, B:11:0x0027, B:13:0x0031, B:15:0x003d, B:17:0x0042, B:19:0x0046, B:23:0x0052, B:24:0x0059, B:56:0x012d, B:63:0x0141, B:62:0x013c, B:59:0x0133, B:30:0x0065, B:31:0x006e, B:33:0x0074, B:34:0x007f, B:36:0x0085, B:38:0x0091, B:41:0x0098, B:43:0x00a6, B:49:0x0100, B:50:0x0108, B:53:0x011b, B:55:0x0126), top: B:69:0x0005 }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0108 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.firebase_ml.zzno
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized java.util.List<com.google.firebase.p020ml.vision.face.FirebaseVisionFace> zza(com.google.android.gms.internal.firebase_ml.zzqp r22) throws com.google.firebase.p020ml.common.FirebaseMLException {
        /*
            Method dump skipped, instructions count: 342
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_ml.zzqq.zza(com.google.android.gms.internal.firebase_ml.zzqp):java.util.List");
    }

    private static void zzk(List<FirebaseVisionFace> list) {
        for (FirebaseVisionFace firebaseVisionFace : list) {
            firebaseVisionFace.zzaz(-1);
        }
    }

    private final synchronized void zza(final zzmc zzmcVar, final long j, final zzqp zzqpVar, final int i, final int i2) {
        this.zzavr.zza(new zzny(this, j, zzmcVar, i, i2, zzqpVar) { // from class: com.google.android.gms.internal.firebase_ml.zzqr
            private final long zzaxy;
            private final zzmc zzbab;
            private final zzqq zzbcj;
            private final int zzbck;
            private final int zzbcl;
            private final zzqp zzbcm;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzbcj = this;
                this.zzaxy = j;
                this.zzbab = zzmcVar;
                this.zzbck = i;
                this.zzbcl = i2;
                this.zzbcm = zzqpVar;
            }

            @Override // com.google.android.gms.internal.firebase_ml.zzny
            public final zzlu.zzs.zza zzlo() {
                return this.zzbcj.zza(this.zzaxy, this.zzbab, this.zzbck, this.zzbcl, this.zzbcm);
            }
        }, zzmd.ON_DEVICE_FACE_DETECT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzlu.zzs.zza zza(long j, zzmc zzmcVar, int i, int i2, zzqp zzqpVar) {
        return zzlu.zzs.zzjl().zza(zzlu.zzab.zzkf().zze(zzlu.zzu.zzjp().zzk(SystemClock.elapsedRealtime() - j).zzd(zzmcVar).zzp(zzaxr.get()).zzq(true).zzr(true)).zzb(this.zzbcg.zznq()).zzbf(i).zzbg(i2).zzd(zzqm.zzc(zzqpVar)));
    }
}
