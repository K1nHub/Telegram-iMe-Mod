package com.google.firebase.p021ml.vision.face;

import android.graphics.PointF;
import android.graphics.Rect;
import android.util.SparseArray;
import com.google.android.gms.internal.firebase_ml.zzkm;
import com.google.android.gms.internal.firebase_ml.zzko;
import com.google.android.gms.vision.face.Contour;
import com.google.android.gms.vision.face.Face;
import com.google.android.gms.vision.face.Landmark;
import com.google.firebase.p021ml.vision.common.FirebaseVisionPoint;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: com.google.firebase.ml.vision.face.FirebaseVisionFace */
/* loaded from: classes3.dex */
public class FirebaseVisionFace {
    private Rect zzbat;
    private int zzbbr;
    private float zzbbs;
    private float zzbbt;
    private float zzbbu;
    private float zzbbv;
    private float zzbbw;
    private final SparseArray<FirebaseVisionFaceLandmark> zzbbx = new SparseArray<>();
    private final SparseArray<FirebaseVisionFaceContour> zzbby = new SparseArray<>();

    private static boolean zzbr(int i) {
        return i == 0 || i == 1 || i == 7 || i == 3 || i == 9 || i == 4 || i == 10 || i == 5 || i == 11 || i == 6;
    }

    public Rect getBoundingBox() {
        return this.zzbat;
    }

    public FirebaseVisionFace(Face face) {
        int i;
        this.zzbbr = -1;
        this.zzbbs = -1.0f;
        this.zzbbt = -1.0f;
        this.zzbbu = -1.0f;
        PointF position = face.getPosition();
        float f = position.x;
        this.zzbat = new Rect((int) f, (int) position.y, (int) (f + face.getWidth()), (int) (position.y + face.getHeight()));
        this.zzbbr = face.getId();
        for (Landmark landmark : face.getLandmarks()) {
            if (zzbr(landmark.getType()) && landmark.getPosition() != null) {
                this.zzbbx.put(landmark.getType(), new FirebaseVisionFaceLandmark(landmark.getType(), new FirebaseVisionPoint(Float.valueOf(landmark.getPosition().x), Float.valueOf(landmark.getPosition().y), null)));
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Contour> it = face.getContours().iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                this.zzbby.put(1, new FirebaseVisionFaceContour(1, arrayList));
                this.zzbbv = face.getEulerY();
                this.zzbbw = face.getEulerZ();
                this.zzbbu = face.getIsSmilingProbability();
                this.zzbbt = face.getIsLeftEyeOpenProbability();
                this.zzbbs = face.getIsRightEyeOpenProbability();
                return;
            }
            Contour next = it.next();
            switch (next.getType()) {
                case 1:
                    i = 2;
                    break;
                case 2:
                    i = 3;
                    break;
                case 3:
                    i = 4;
                    break;
                case 4:
                    i = 5;
                    break;
                case 5:
                    i = 6;
                    break;
                case 6:
                    i = 7;
                    break;
                case 7:
                    i = 8;
                    break;
                case 8:
                    i = 9;
                    break;
                case 9:
                    i = 10;
                    break;
                case 10:
                    i = 11;
                    break;
                case 11:
                    i = 12;
                    break;
                case 12:
                    i = 13;
                    break;
                case 13:
                    i = 14;
                    break;
                default:
                    i = -1;
                    break;
            }
            if ((i > 14 || i <= 0) ? false : false) {
                PointF[] positions = next.getPositions();
                ArrayList arrayList2 = new ArrayList();
                if (positions != null) {
                    for (PointF pointF : positions) {
                        arrayList2.add(new FirebaseVisionPoint(Float.valueOf(pointF.x), Float.valueOf(pointF.y), null));
                    }
                    this.zzbby.put(i, new FirebaseVisionFaceContour(i, arrayList2));
                    arrayList.addAll(arrayList2);
                }
            }
        }
    }

    public FirebaseVisionFaceLandmark getLandmark(int i) {
        return this.zzbbx.get(i);
    }

    public FirebaseVisionFaceContour getContour(int i) {
        FirebaseVisionFaceContour firebaseVisionFaceContour = this.zzbby.get(i);
        return firebaseVisionFaceContour != null ? firebaseVisionFaceContour : new FirebaseVisionFaceContour(i, new ArrayList());
    }

    public final SparseArray<FirebaseVisionFaceContour> zznp() {
        return this.zzbby;
    }

    public final void zza(SparseArray<FirebaseVisionFaceContour> sparseArray) {
        this.zzbby.clear();
        for (int i = 0; i < sparseArray.size(); i++) {
            this.zzbby.put(sparseArray.keyAt(i), sparseArray.valueAt(i));
        }
    }

    public final void zzaz(int i) {
        this.zzbbr = -1;
    }

    public String toString() {
        zzko zza = zzkm.zzaw("FirebaseVisionFace").zzh("boundingBox", this.zzbat).zzb("trackingId", this.zzbbr).zza("rightEyeOpenProbability", this.zzbbs).zza("leftEyeOpenProbability", this.zzbbt).zza("smileProbability", this.zzbbu).zza("eulerY", this.zzbbv).zza("eulerZ", this.zzbbw);
        zzko zzaw = zzkm.zzaw("Landmarks");
        for (int i = 0; i <= 11; i++) {
            if (zzbr(i)) {
                StringBuilder sb = new StringBuilder(20);
                sb.append("landmark_");
                sb.append(i);
                zzaw.zzh(sb.toString(), getLandmark(i));
            }
        }
        zza.zzh("landmarks", zzaw.toString());
        zzko zzaw2 = zzkm.zzaw("Contours");
        for (int i2 = 1; i2 <= 14; i2++) {
            StringBuilder sb2 = new StringBuilder(19);
            sb2.append("Contour_");
            sb2.append(i2);
            zzaw2.zzh(sb2.toString(), getContour(i2));
        }
        zza.zzh("contours", zzaw2.toString());
        return zza.toString();
    }
}
