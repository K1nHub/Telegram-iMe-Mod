package com.google.firebase.p021ml.vision.cloud;

import com.google.android.gms.common.internal.Objects;
/* renamed from: com.google.firebase.ml.vision.cloud.FirebaseVisionCloudDetectorOptions */
/* loaded from: classes3.dex */
public class FirebaseVisionCloudDetectorOptions {
    private final int zzazx;
    private final int zzazy;
    private final boolean zzazz;

    private FirebaseVisionCloudDetectorOptions(int i, int i2, boolean z) {
        this.zzazx = i;
        this.zzazy = i2;
        this.zzazz = z;
    }

    public int getMaxResults() {
        return this.zzazx;
    }

    public int getModelType() {
        return this.zzazy;
    }

    public final boolean isEnforceCertFingerprintMatch() {
        return this.zzazz;
    }

    /* renamed from: com.google.firebase.ml.vision.cloud.FirebaseVisionCloudDetectorOptions$Builder */
    /* loaded from: classes3.dex */
    public static class Builder {
        private int zzazx = 10;
        private int zzazy = 1;
        private boolean zzazz = false;

        public FirebaseVisionCloudDetectorOptions build() {
            return new FirebaseVisionCloudDetectorOptions(this.zzazx, this.zzazy, this.zzazz);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FirebaseVisionCloudDetectorOptions) {
            FirebaseVisionCloudDetectorOptions firebaseVisionCloudDetectorOptions = (FirebaseVisionCloudDetectorOptions) obj;
            return this.zzazx == firebaseVisionCloudDetectorOptions.zzazx && this.zzazy == firebaseVisionCloudDetectorOptions.zzazy && this.zzazz == firebaseVisionCloudDetectorOptions.zzazz;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zzazx), Integer.valueOf(this.zzazy), Boolean.valueOf(this.zzazz));
    }

    static {
        new Builder().build();
    }
}
