package com.google.firebase.p021ml.vision.face;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.internal.firebase_ml.zzkm;
import com.google.firebase.p021ml.vision.common.FirebaseVisionPoint;
/* renamed from: com.google.firebase.ml.vision.face.FirebaseVisionFaceLandmark */
/* loaded from: classes3.dex */
public class FirebaseVisionFaceLandmark {
    private final int type;
    private final FirebaseVisionPoint zzbce;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FirebaseVisionFaceLandmark(int i, FirebaseVisionPoint firebaseVisionPoint) {
        this.type = i;
        this.zzbce = firebaseVisionPoint;
    }

    public String toString() {
        return zzkm.zzaw("FirebaseVisionFaceLandmark").zzb(SessionDescription.ATTR_TYPE, this.type).zzh("position", this.zzbce).toString();
    }
}
