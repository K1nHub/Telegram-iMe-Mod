package com.google.firebase.p020ml.vision.face;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.internal.firebase_ml.zzkm;
import com.google.firebase.p020ml.vision.common.FirebaseVisionPoint;
import java.util.List;
/* renamed from: com.google.firebase.ml.vision.face.FirebaseVisionFaceContour */
/* loaded from: classes4.dex */
public class FirebaseVisionFaceContour {
    private final int type;
    private final List<FirebaseVisionPoint> zzbbq;

    public FirebaseVisionFaceContour(int i, List<FirebaseVisionPoint> list) {
        this.type = i;
        this.zzbbq = list;
    }

    public String toString() {
        return zzkm.zzaw("FirebaseVisionFaceContour").zzb(SessionDescription.ATTR_TYPE, this.type).zzh("points", this.zzbbq.toArray()).toString();
    }
}
