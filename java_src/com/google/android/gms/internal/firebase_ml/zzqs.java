package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p021ml.vision.common.FirebaseVisionImage;
import com.google.firebase.p021ml.vision.label.FirebaseVisionImageLabel;
import com.google.firebase.p021ml.vision.label.FirebaseVisionOnDeviceImageLabelerOptions;
import java.util.List;
/* loaded from: classes.dex */
public final class zzqs extends zzql<List<FirebaseVisionImageLabel>> {
    public zzqs(FirebaseApp firebaseApp, FirebaseVisionOnDeviceImageLabelerOptions firebaseVisionOnDeviceImageLabelerOptions) {
        super(firebaseApp, new zzqv(firebaseApp, firebaseVisionOnDeviceImageLabelerOptions));
        zznv.zza(firebaseApp, 1).zza(zzlu.zzs.zzjl(), zzmd.ON_DEVICE_IMAGE_LABEL_CREATE);
    }

    public final Task<List<FirebaseVisionImageLabel>> detectInImage(FirebaseVisionImage firebaseVisionImage) {
        return zza(firebaseVisionImage, true, false);
    }
}
