package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p020ml.common.FirebaseMLException;
import com.google.firebase.p020ml.common.modeldownload.FirebaseModelManager;
import com.google.firebase.p020ml.common.modeldownload.FirebaseRemoteModel;
import com.google.firebase.p020ml.vision.common.FirebaseVisionImage;
import com.google.firebase.p020ml.vision.label.FirebaseVisionImageLabel;
import com.google.firebase.p020ml.vision.label.FirebaseVisionOnDeviceAutoMLImageLabelerOptions;
import java.util.List;
/* loaded from: classes.dex */
public final class zzqx extends zzql<List<FirebaseVisionImageLabel>> {
    private final zznv zzavr;

    public zzqx(FirebaseApp firebaseApp, FirebaseVisionOnDeviceAutoMLImageLabelerOptions firebaseVisionOnDeviceAutoMLImageLabelerOptions) throws FirebaseMLException {
        super(firebaseApp, new zzqw(firebaseApp, firebaseVisionOnDeviceAutoMLImageLabelerOptions));
        this.zzavr = zznv.zza(firebaseApp, 5);
        if (firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzmw() != null) {
            FirebaseRemoteModel nonBaseRemoteModel = FirebaseModelManager.getInstance().getNonBaseRemoteModel(firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzmw());
            if (nonBaseRemoteModel == null) {
                zzi(zzmc.MODEL_NOT_REGISTERED);
                String valueOf = String.valueOf(firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzmw());
                throw new FirebaseMLException(valueOf.length() != 0 ? "Remote model is not registered: ".concat(valueOf) : new String("Remote model is not registered: "), 3);
            } else if (nonBaseRemoteModel.isBaseModel()) {
                zzi(zzmc.MODEL_TYPE_MISUSE);
                throw new FirebaseMLException("You are trying to use a Base Model as an AutoML model. Please make sure you passed in the correct model name.", 3);
            }
        }
        if (firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzmv() != null && FirebaseModelManager.getInstance().getLocalModel(firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzmv()) == null) {
            zzi(zzmc.MODEL_NOT_REGISTERED);
            String valueOf2 = String.valueOf(firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzmv());
            throw new FirebaseMLException(valueOf2.length() != 0 ? "Local model is not registered: ".concat(valueOf2) : new String("Local model is not registered: "), 3);
        }
        zzi(zzmc.NO_ERROR);
    }

    public final Task<List<FirebaseVisionImageLabel>> detectInImage(FirebaseVisionImage firebaseVisionImage) {
        return zza(firebaseVisionImage, true, false);
    }

    private final void zzi(zzmc zzmcVar) {
        this.zzavr.zza(zzlu.zzs.zzjl().zza((zzlu.zza) ((zzuu) zzlu.zza.zzij().zza(zzmcVar).zzrq())), zzmd.AUTOML_IMAGE_LABELING_CREATE);
    }
}
