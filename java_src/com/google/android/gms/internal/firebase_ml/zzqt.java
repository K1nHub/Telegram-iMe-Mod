package com.google.android.gms.internal.firebase_ml;

import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.tasks.Task;
import com.google.firebase.FirebaseApp;
import com.google.firebase.p021ml.vision.cloud.FirebaseVisionCloudDetectorOptions;
import com.google.firebase.p021ml.vision.common.FirebaseVisionImage;
import com.google.firebase.p021ml.vision.label.FirebaseVisionImageLabel;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class zzqt extends zzqd<List<FirebaseVisionImageLabel>> {
    public zzqt(FirebaseApp firebaseApp, FirebaseVisionCloudDetectorOptions firebaseVisionCloudDetectorOptions) {
        super(firebaseApp, "LABEL_DETECTION", firebaseVisionCloudDetectorOptions);
        zznv.zza(firebaseApp, 1).zza(zzlu.zzs.zzjl(), zzmd.CLOUD_IMAGE_LABEL_CREATE);
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzqd
    protected final int zznj() {
        return 640;
    }

    @Override // com.google.android.gms.internal.firebase_ml.zzqd
    protected final int zznk() {
        return 480;
    }

    public final Task<List<FirebaseVisionImageLabel>> detectInImage(FirebaseVisionImage firebaseVisionImage) {
        zznv.zza(this.firebaseApp, 1).zza(zzlu.zzs.zzjl(), zzmd.CLOUD_IMAGE_LABEL_DETECT);
        return super.zza(firebaseVisionImage);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.firebase_ml.zzqd
    public final /* synthetic */ List<FirebaseVisionImageLabel> zza(zzit zzitVar, float f) {
        if (zzitVar.zzhf() == null) {
            return new ArrayList();
        }
        List<zzjd> zzhf = zzitVar.zzhf();
        ArrayList arrayList = new ArrayList();
        for (zzjd zzjdVar : zzhf) {
            FirebaseVisionImageLabel zza = FirebaseVisionImageLabel.zza(zzjdVar);
            if (zza != null) {
                arrayList.add(zza);
            }
        }
        return arrayList;
    }
}
