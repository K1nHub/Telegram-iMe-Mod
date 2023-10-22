package com.google.firebase.p020ml.vision.common;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.firebase_ml.zzkm;
/* renamed from: com.google.firebase.ml.vision.common.FirebaseVisionPoint */
/* loaded from: classes3.dex */
public final class FirebaseVisionPoint {
    private final Float zzbbf;
    private final Float zzbbg;

    public FirebaseVisionPoint(Float f, Float f2, Float f3) {
        this.zzbbf = f;
        this.zzbbg = f2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FirebaseVisionPoint) {
            FirebaseVisionPoint firebaseVisionPoint = (FirebaseVisionPoint) obj;
            return Objects.equal(this.zzbbf, firebaseVisionPoint.zzbbf) && Objects.equal(this.zzbbg, firebaseVisionPoint.zzbbg) && Objects.equal(null, null);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zzbbf, this.zzbbg, null);
    }

    public final String toString() {
        return zzkm.zzaw("FirebaseVisionPoint").zzh("x", this.zzbbf).zzh("y", this.zzbbg).zzh("z", null).toString();
    }
}
