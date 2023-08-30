package com.google.firebase.p020ml.vision.label;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.internal.firebase_ml.zzuu;
/* renamed from: com.google.firebase.ml.vision.label.FirebaseVisionOnDeviceImageLabelerOptions */
/* loaded from: classes3.dex */
public class FirebaseVisionOnDeviceImageLabelerOptions {
    private final float zzazi;

    public float getConfidenceThreshold() {
        return this.zzazi;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof FirebaseVisionOnDeviceImageLabelerOptions) && this.zzazi == ((FirebaseVisionOnDeviceImageLabelerOptions) obj).zzazi;
    }

    public int hashCode() {
        return Objects.hashCode(Float.valueOf(this.zzazi));
    }

    public final zzlu.zzad zznr() {
        return (zzlu.zzad) ((zzuu) zzlu.zzad.zzkj().zzr(this.zzazi).zzrq());
    }
}
