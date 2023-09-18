package com.google.mlkit.common.model;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.mlkit.common.sdkinternal.model.BaseModel;
import java.util.EnumMap;
import java.util.Map;
/* compiled from: com.google.mlkit:common@@17.0.0 */
/* loaded from: classes4.dex */
public class RemoteModel {
    private static final Map<BaseModel, String> zze;
    private final String zza;
    private final BaseModel zzb;
    private String zzf;

    @KeepForSdk
    public String getModelNameForBackend() {
        String str = this.zza;
        return str != null ? str : zze.get(this.zzb);
    }

    @KeepForSdk
    public String getUniqueModelNameForPersist() {
        String str = this.zza;
        if (str != null) {
            return str;
        }
        String valueOf = String.valueOf(zze.get(this.zzb));
        return valueOf.length() != 0 ? "COM.GOOGLE.BASE_".concat(valueOf) : new String("COM.GOOGLE.BASE_");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass().equals(getClass())) {
            RemoteModel remoteModel = (RemoteModel) obj;
            if (Objects.equal(this.zza, remoteModel.zza) && Objects.equal(this.zzb, remoteModel.zzb)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb);
    }

    @KeepForSdk
    public String getModelHash() {
        return this.zzf;
    }

    static {
        new EnumMap(BaseModel.class);
        zze = new EnumMap(BaseModel.class);
    }
}
