package com.google.firebase.p020ml.common.modeldownload;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.firebase.ml.common.modeldownload.FirebaseRemoteModel */
/* loaded from: classes3.dex */
public class FirebaseRemoteModel {
    private static final Map<BaseModel, String> zzawu;
    private static final Map<BaseModel, String> zzawv;
    private final String zzauc;
    private String zzawa;
    private final BaseModel zzawt;
    private final boolean zzaww;
    private final FirebaseModelDownloadConditions zzawx;
    private final FirebaseModelDownloadConditions zzawy;

    @KeepForSdk
    public String getModelNameForBackend() {
        String str = this.zzauc;
        return str != null ? str : zzawv.get(this.zzawt);
    }

    @KeepForSdk
    public String getUniqueModelNameForPersist() {
        String str = this.zzauc;
        if (str != null) {
            return str;
        }
        String valueOf = String.valueOf(zzawv.get(this.zzawt));
        return valueOf.length() != 0 ? "COM.GOOGLE.BASE_".concat(valueOf) : new String("COM.GOOGLE.BASE_");
    }

    @KeepForSdk
    public boolean isBaseModel() {
        return this.zzawt != null;
    }

    @KeepForSdk
    public String getModelName() {
        return this.zzauc;
    }

    @KeepForSdk
    public boolean isModelUpdatesEnabled() {
        return this.zzaww;
    }

    @KeepForSdk
    public FirebaseModelDownloadConditions getInitialDownloadConditions() {
        return this.zzawx;
    }

    @KeepForSdk
    public FirebaseModelDownloadConditions getUpdatesDownloadConditions() {
        return this.zzawy;
    }

    @KeepForSdk
    public boolean baseModelHashMatches(String str) {
        BaseModel baseModel = this.zzawt;
        if (baseModel == null) {
            return false;
        }
        return str.equals(zzawu.get(baseModel));
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FirebaseRemoteModel) {
            FirebaseRemoteModel firebaseRemoteModel = (FirebaseRemoteModel) obj;
            return Objects.equal(this.zzauc, firebaseRemoteModel.zzauc) && Objects.equal(this.zzawt, firebaseRemoteModel.zzawt) && this.zzaww == firebaseRemoteModel.zzaww && this.zzawx.equals(firebaseRemoteModel.zzawx) && this.zzawy.equals(firebaseRemoteModel.zzawy);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.zzauc, this.zzawt, Boolean.valueOf(this.zzaww), Integer.valueOf(Objects.hashCode(this.zzawx)), Integer.valueOf(Objects.hashCode(this.zzawy)));
    }

    @KeepForSdk
    public void setModelHash(String str) {
        this.zzawa = str;
    }

    @KeepForSdk
    public String getModelHash() {
        return this.zzawa;
    }

    static {
        HashMap hashMap = new HashMap();
        zzawu = hashMap;
        HashMap hashMap2 = new HashMap();
        zzawv = hashMap2;
        BaseModel baseModel = BaseModel.FACE_DETECTION;
        hashMap2.put(baseModel, "face_detector_model_m41");
        BaseModel baseModel2 = BaseModel.SMART_REPLY;
        hashMap2.put(baseModel2, "smart_reply_model_m41");
        BaseModel baseModel3 = BaseModel.TRANSLATE;
        hashMap2.put(baseModel3, "translate_model_m41");
        hashMap.put(baseModel, "modelHash");
        hashMap.put(baseModel2, "smart_reply_model_hash");
        hashMap.put(baseModel3, "modelHash");
    }
}
