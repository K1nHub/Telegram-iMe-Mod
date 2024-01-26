package com.google.mlkit.common.model;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.mlkit_common.zzy;
import com.google.android.gms.internal.mlkit_common.zzz;
import com.google.mlkit.common.sdkinternal.ModelType;
import com.google.mlkit.common.sdkinternal.model.BaseModel;
import java.util.EnumMap;
import java.util.Map;
/* compiled from: com.google.mlkit:common@@18.10.0 */
/* loaded from: classes3.dex */
public abstract class RemoteModel {
    public static final Map zza;
    private final String zzc;
    private final BaseModel zzd;
    private final ModelType zze;
    private String zzf;

    static {
        new EnumMap(BaseModel.class);
        zza = new EnumMap(BaseModel.class);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof RemoteModel) {
            RemoteModel remoteModel = (RemoteModel) obj;
            return Objects.equal(this.zzc, remoteModel.zzc) && Objects.equal(this.zzd, remoteModel.zzd) && Objects.equal(this.zze, remoteModel.zze);
        }
        return false;
    }

    @KeepForSdk
    public String getModelHash() {
        return this.zzf;
    }

    @KeepForSdk
    public String getModelNameForBackend() {
        String str = this.zzc;
        if (str != null) {
            return str;
        }
        return (String) zza.get(this.zzd);
    }

    @KeepForSdk
    public ModelType getModelType() {
        return this.zze;
    }

    @KeepForSdk
    public String getUniqueModelNameForPersist() {
        String str = this.zzc;
        if (str != null) {
            return str;
        }
        return "COM.GOOGLE.BASE_".concat(String.valueOf((String) zza.get(this.zzd)));
    }

    public int hashCode() {
        return Objects.hashCode(this.zzc, this.zzd, this.zze);
    }

    public String toString() {
        zzy zzb = zzz.zzb("RemoteModel");
        zzb.zza("modelName", this.zzc);
        zzb.zza("baseModel", this.zzd);
        zzb.zza("modelType", this.zze);
        return zzb.toString();
    }
}
