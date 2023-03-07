package com.google.firebase.p021ml.custom;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
/* renamed from: com.google.firebase.ml.custom.FirebaseModelOptions */
/* loaded from: classes3.dex */
public final class FirebaseModelOptions {
    private final String zzaxi;
    private final String zzaxj;
    private final boolean zzaxk;

    /* renamed from: com.google.firebase.ml.custom.FirebaseModelOptions$Builder */
    /* loaded from: classes3.dex */
    public static class Builder {
        private String zzaxi;
        private String zzaxj;

        public Builder setLocalModelName(String str) {
            Preconditions.checkNotNull(str);
            this.zzaxi = str;
            return this;
        }

        public FirebaseModelOptions build() {
            Preconditions.checkArgument((this.zzaxi == null && this.zzaxj == null) ? false : true, "At least one model source should be not null");
            return new FirebaseModelOptions(this.zzaxi, this.zzaxj);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof FirebaseModelOptions) {
            FirebaseModelOptions firebaseModelOptions = (FirebaseModelOptions) obj;
            return Objects.equal(this.zzaxi, firebaseModelOptions.zzaxi) && Objects.equal(this.zzaxj, firebaseModelOptions.zzaxj);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zzaxi, this.zzaxj);
    }

    private FirebaseModelOptions(String str, String str2, boolean z) {
        this.zzaxj = str2;
        this.zzaxi = str;
        this.zzaxk = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzmv() {
        return this.zzaxi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String zzmw() {
        return this.zzaxj;
    }

    public final boolean zzmx() {
        return this.zzaxk;
    }
}
