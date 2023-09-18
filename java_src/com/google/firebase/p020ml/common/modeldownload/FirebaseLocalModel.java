package com.google.firebase.p020ml.common.modeldownload;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.firebase_ml.zzlu;
import com.google.android.gms.internal.firebase_ml.zzor;
import com.google.android.gms.internal.firebase_ml.zzuu;
/* renamed from: com.google.firebase.ml.common.modeldownload.FirebaseLocalModel */
/* loaded from: classes4.dex */
public class FirebaseLocalModel {
    private final String zzauc;
    private final String zzawg;
    private final String zzawh;

    public final String getModelName() {
        return this.zzauc;
    }

    @KeepForSdk
    public String getFilePath() {
        return this.zzawg;
    }

    @KeepForSdk
    public String getAssetFilePath() {
        return this.zzawh;
    }

    private FirebaseLocalModel(String str, String str2, String str3) {
        this.zzauc = str;
        this.zzawg = str2;
        this.zzawh = str3;
    }

    /* renamed from: com.google.firebase.ml.common.modeldownload.FirebaseLocalModel$Builder */
    /* loaded from: classes4.dex */
    public static class Builder {
        private final String zzauc;
        private String zzawg = null;
        private String zzawl = null;

        public Builder(String str) {
            Preconditions.checkNotEmpty(str, "Model name can not be empty");
            this.zzauc = str;
        }

        public Builder setFilePath(String str) {
            Preconditions.checkNotEmpty(str, "Model Source file path can not be empty");
            Preconditions.checkArgument(this.zzawl == null, "A local model source is either from local file or for asset, you can not set both.");
            this.zzawg = str;
            return this;
        }

        public Builder setAssetFilePath(String str) {
            Preconditions.checkNotEmpty(str, "Model Source file path can not be empty");
            Preconditions.checkArgument(this.zzawg == null, "A local model source is either from local file or for asset, you can not set both.");
            this.zzawl = str;
            return this;
        }

        public FirebaseLocalModel build() {
            String str = this.zzawg;
            Preconditions.checkArgument((str != null && this.zzawl == null) || (str == null && this.zzawl != null), "Set either filePath or assetFilePath.");
            return new FirebaseLocalModel(this.zzauc, this.zzawg, this.zzawl);
        }
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (obj instanceof FirebaseLocalModel) {
            FirebaseLocalModel firebaseLocalModel = (FirebaseLocalModel) obj;
            return Objects.equal(this.zzauc, firebaseLocalModel.zzauc) && Objects.equal(this.zzawg, firebaseLocalModel.zzawg) && Objects.equal(this.zzawh, firebaseLocalModel.zzawh);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.zzauc, this.zzawg, this.zzawh);
    }

    public final zzlu.zzy zza(zzor zzorVar) {
        zzlu.zzx.zzc zzcVar;
        zzlu.zzy.zza zzjw = zzlu.zzy.zzjw();
        zzlu.zzx.zza zza = zzlu.zzx.zzju().zza(zzorVar.zzly());
        String str = this.zzawg;
        if (str == null) {
            str = this.zzawh;
        }
        zzlu.zzx.zza zzba = zza.zzba(str);
        if (this.zzawg != null) {
            zzcVar = zzlu.zzx.zzc.LOCAL;
        } else if (this.zzawh != null) {
            zzcVar = zzlu.zzx.zzc.APP_ASSET;
        } else {
            zzcVar = zzlu.zzx.zzc.SOURCE_UNKNOWN;
        }
        return (zzlu.zzy) ((zzuu) zzjw.zza(zzba.zza(zzcVar)).zzrq());
    }
}
