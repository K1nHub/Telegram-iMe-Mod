package com.google.firebase.p020ml.vision.label;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzjd;
import com.google.android.gms.internal.firebase_ml.zzqc;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.vision.label.ImageLabel;
import com.google.firebase.p020ml.vision.automl.internal.zzf;
/* renamed from: com.google.firebase.ml.vision.label.FirebaseVisionImageLabel */
/* loaded from: classes4.dex */
public class FirebaseVisionImageLabel {
    private final String entityId;
    private final String text;
    private final float zzazh;

    public FirebaseVisionImageLabel(ImageLabel imageLabel) {
        this(imageLabel.getLabel(), imageLabel.getConfidence(), imageLabel.getMid());
    }

    public static FirebaseVisionImageLabel zza(zzjd zzjdVar) {
        if (zzjdVar == null) {
            return null;
        }
        return new FirebaseVisionImageLabel(zzjdVar.getDescription(), zzqc.zza(zzjdVar.zzhn()), zzjdVar.getMid());
    }

    public static FirebaseVisionImageLabel zza(zzf zzfVar) {
        Preconditions.checkNotNull(zzfVar, "Returned image label parcel can not be null");
        return new FirebaseVisionImageLabel(zzfVar.text, zzfVar.zzazh, zzfVar.entityId);
    }

    private FirebaseVisionImageLabel(String str, float f, String str2) {
        this.text = str == null ? "" : str;
        this.entityId = str2;
        if (Float.compare(f, BitmapDescriptorFactory.HUE_RED) < 0) {
            f = 0.0f;
        } else if (Float.compare(f, 1.0f) > 0) {
            f = 1.0f;
        }
        this.zzazh = f;
    }

    public String getEntityId() {
        return this.entityId;
    }

    public String getText() {
        return this.text;
    }

    public float getConfidence() {
        return this.zzazh;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FirebaseVisionImageLabel) {
            FirebaseVisionImageLabel firebaseVisionImageLabel = (FirebaseVisionImageLabel) obj;
            return Objects.equal(this.entityId, firebaseVisionImageLabel.getEntityId()) && Objects.equal(this.text, firebaseVisionImageLabel.getText()) && Float.compare(this.zzazh, firebaseVisionImageLabel.getConfidence()) == 0;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.entityId, this.text, Float.valueOf(this.zzazh));
    }
}
