package com.google.firebase.p020ml.common.modeldownload;

import com.google.android.gms.common.internal.Objects;
/* renamed from: com.google.firebase.ml.common.modeldownload.FirebaseModelDownloadConditions */
/* loaded from: classes4.dex */
public class FirebaseModelDownloadConditions {
    private final boolean zzawm;
    private final boolean zzawn;
    private final boolean zzawo;

    public boolean isChargingRequired() {
        return this.zzawm;
    }

    public boolean isWifiRequired() {
        return this.zzawn;
    }

    public boolean isDeviceIdleRequired() {
        return this.zzawo;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FirebaseModelDownloadConditions) {
            FirebaseModelDownloadConditions firebaseModelDownloadConditions = (FirebaseModelDownloadConditions) obj;
            return this.zzawm == firebaseModelDownloadConditions.zzawm && this.zzawo == firebaseModelDownloadConditions.zzawo && this.zzawn == firebaseModelDownloadConditions.zzawn;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.zzawm), Boolean.valueOf(this.zzawn), Boolean.valueOf(this.zzawo));
    }
}
