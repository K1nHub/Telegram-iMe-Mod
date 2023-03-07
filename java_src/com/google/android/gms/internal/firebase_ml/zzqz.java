package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p021ml.vision.common.FirebaseVisionImage;
import com.google.firebase.p021ml.vision.text.FirebaseVisionCloudTextRecognizerOptions;
import com.google.firebase.p021ml.vision.text.FirebaseVisionText;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class zzqz extends zzqd<FirebaseVisionText> {
    private static final Map<zznw<FirebaseVisionCloudTextRecognizerOptions>, zzqz> zzatg = new HashMap();
    private final FirebaseVisionCloudTextRecognizerOptions zzbdw;

    public static synchronized zzqz zza(FirebaseApp firebaseApp, FirebaseVisionCloudTextRecognizerOptions firebaseVisionCloudTextRecognizerOptions) {
        zzqz zzqzVar;
        synchronized (zzqz.class) {
            Preconditions.checkNotNull(firebaseApp, "FirebaseApp must not be null");
            Preconditions.checkNotNull(firebaseApp.getPersistenceKey(), "Firebase app name must not be null");
            Preconditions.checkNotNull(firebaseVisionCloudTextRecognizerOptions, "Options must not be null");
            zznw<FirebaseVisionCloudTextRecognizerOptions> zzj = zznw.zzj(firebaseApp.getPersistenceKey(), firebaseVisionCloudTextRecognizerOptions);
            Map<zznw<FirebaseVisionCloudTextRecognizerOptions>, zzqz> map = zzatg;
            zzqzVar = map.get(zzj);
            if (zzqzVar == null) {
                zzqzVar = new zzqz(firebaseApp, firebaseVisionCloudTextRecognizerOptions);
                map.put(zzj, zzqzVar);
            }
        }
        return zzqzVar;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzqd
    protected final int zznj() {
        return 1024;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzqd
    protected final int zznk() {
        return 768;
    }

    private zzqz(FirebaseApp firebaseApp, FirebaseVisionCloudTextRecognizerOptions firebaseVisionCloudTextRecognizerOptions) {
        super(firebaseApp, firebaseVisionCloudTextRecognizerOptions.getModelType() == 1 ? "TEXT_DETECTION" : "DOCUMENT_TEXT_DETECTION", new zzjh(), firebaseVisionCloudTextRecognizerOptions.isEnforceCertFingerprintMatch());
        this.zzbdw = firebaseVisionCloudTextRecognizerOptions;
        zznv.zza(firebaseApp, 1).zza(zzlu.zzs.zzjl(), firebaseVisionCloudTextRecognizerOptions.getModelType() == 2 ? zzmd.CLOUD_DOCUMENT_TEXT_CREATE : zzmd.CLOUD_TEXT_CREATE);
    }

    public final Task<FirebaseVisionText> processImage(FirebaseVisionImage firebaseVisionImage) {
        zzmd zzmdVar = zzmd.CLOUD_TEXT_DETECT;
        if (this.zzbdw.getModelType() == 2) {
            zzmdVar = zzmd.CLOUD_DOCUMENT_TEXT_DETECT;
        }
        zznv.zza(this.firebaseApp, 1).zza(zzlu.zzs.zzjl(), zzmdVar);
        return super.zza(firebaseVisionImage);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.firebase_ml.zzqd
    public final /* synthetic */ FirebaseVisionText zza(zzit zzitVar, float f) {
        return zzrc.zzb(zzitVar.zzhe(), 1.0f / f);
    }
}
