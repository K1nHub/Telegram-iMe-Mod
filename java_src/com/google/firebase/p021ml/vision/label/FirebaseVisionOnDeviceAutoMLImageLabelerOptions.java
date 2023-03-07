package com.google.firebase.p021ml.vision.label;

import com.google.android.gms.common.internal.Objects;
/* renamed from: com.google.firebase.ml.vision.label.FirebaseVisionOnDeviceAutoMLImageLabelerOptions */
/* loaded from: classes3.dex */
public class FirebaseVisionOnDeviceAutoMLImageLabelerOptions {
    private final String zzaxi;
    private final String zzaxj;
    private final float zzazi;

    public final float getConfidenceThreshold() {
        return this.zzazi;
    }

    public final String zzmv() {
        return this.zzaxi;
    }

    public final String zzmw() {
        return this.zzaxj;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FirebaseVisionOnDeviceAutoMLImageLabelerOptions) {
            FirebaseVisionOnDeviceAutoMLImageLabelerOptions firebaseVisionOnDeviceAutoMLImageLabelerOptions = (FirebaseVisionOnDeviceAutoMLImageLabelerOptions) obj;
            return Float.compare(this.zzazi, firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzazi) == 0 && Objects.equal(this.zzaxi, firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzaxi) && Objects.equal(this.zzaxj, firebaseVisionOnDeviceAutoMLImageLabelerOptions.zzaxj);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(Float.valueOf(this.zzazi), this.zzaxi, this.zzaxj);
    }
}
