package com.google.firebase.p021ml.vision.face;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.firebase_ml.zzkm;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.internal.firebase_ml.zzuu;
/* renamed from: com.google.firebase.ml.vision.face.FirebaseVisionFaceDetectorOptions */
/* loaded from: classes3.dex */
public class FirebaseVisionFaceDetectorOptions {
    private final boolean trackingEnabled;
    private final int zzbbz;
    private final int zzbca;
    private final int zzbcb;
    private final int zzbcc;
    private final float zzbcd;

    public int getLandmarkMode() {
        return this.zzbbz;
    }

    public int getContourMode() {
        return this.zzbca;
    }

    public int getClassificationMode() {
        return this.zzbcb;
    }

    public int getPerformanceMode() {
        return this.zzbcc;
    }

    public boolean isTrackingEnabled() {
        return this.trackingEnabled;
    }

    public float getMinFaceSize() {
        return this.zzbcd;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FirebaseVisionFaceDetectorOptions) {
            FirebaseVisionFaceDetectorOptions firebaseVisionFaceDetectorOptions = (FirebaseVisionFaceDetectorOptions) obj;
            return Float.floatToIntBits(this.zzbcd) == Float.floatToIntBits(firebaseVisionFaceDetectorOptions.zzbcd) && this.zzbbz == firebaseVisionFaceDetectorOptions.zzbbz && this.zzbca == firebaseVisionFaceDetectorOptions.zzbca && this.zzbcc == firebaseVisionFaceDetectorOptions.zzbcc && this.trackingEnabled == firebaseVisionFaceDetectorOptions.trackingEnabled && this.zzbcb == firebaseVisionFaceDetectorOptions.zzbcb;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(Float.floatToIntBits(this.zzbcd)), Integer.valueOf(this.zzbbz), Integer.valueOf(this.zzbca), Integer.valueOf(this.zzbcc), Boolean.valueOf(this.trackingEnabled), Integer.valueOf(this.zzbcb));
    }

    public String toString() {
        return zzkm.zzaw("FaceDetectorOptions").zzb("landmarkMode", this.zzbbz).zzb("contourMode", this.zzbca).zzb("classificationMode", this.zzbcb).zzb("performanceMode", this.zzbcc).zza("trackingEnabled", this.trackingEnabled).zza("minFaceSize", this.zzbcd).toString();
    }

    public final zzlu.zzr zznq() {
        zzlu.zzr.zzd zzdVar;
        zzlu.zzr.zzb zzbVar;
        zzlu.zzr.zze zzeVar;
        zzlu.zzr.zzc zzcVar;
        zzlu.zzr.zza zzji = zzlu.zzr.zzji();
        int i = this.zzbbz;
        if (i == 1) {
            zzdVar = zzlu.zzr.zzd.NO_LANDMARKS;
        } else if (i == 2) {
            zzdVar = zzlu.zzr.zzd.ALL_LANDMARKS;
        } else {
            zzdVar = zzlu.zzr.zzd.UNKNOWN_LANDMARKS;
        }
        zzlu.zzr.zza zza = zzji.zza(zzdVar);
        int i2 = this.zzbcb;
        if (i2 == 1) {
            zzbVar = zzlu.zzr.zzb.NO_CLASSIFICATIONS;
        } else if (i2 == 2) {
            zzbVar = zzlu.zzr.zzb.ALL_CLASSIFICATIONS;
        } else {
            zzbVar = zzlu.zzr.zzb.UNKNOWN_CLASSIFICATIONS;
        }
        zzlu.zzr.zza zza2 = zza.zza(zzbVar);
        int i3 = this.zzbcc;
        if (i3 == 1) {
            zzeVar = zzlu.zzr.zze.FAST;
        } else if (i3 == 2) {
            zzeVar = zzlu.zzr.zze.ACCURATE;
        } else {
            zzeVar = zzlu.zzr.zze.UNKNOWN_PERFORMANCE;
        }
        zzlu.zzr.zza zza3 = zza2.zza(zzeVar);
        int i4 = this.zzbca;
        if (i4 == 1) {
            zzcVar = zzlu.zzr.zzc.NO_CONTOURS;
        } else if (i4 == 2) {
            zzcVar = zzlu.zzr.zzc.ALL_CONTOURS;
        } else {
            zzcVar = zzlu.zzr.zzc.UNKNOWN_CONTOURS;
        }
        return (zzlu.zzr) ((zzuu) zza3.zza(zzcVar).zzk(isTrackingEnabled()).zzm(this.zzbcd).zzrq());
    }
}
