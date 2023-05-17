package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-auth-base@@18.0.4 */
@SafeParcelable.Class(creator = "AuthenticatorAnnotatedDataCreator")
/* loaded from: classes.dex */
public final class zzu extends zzbz {
    public static final Parcelable.Creator<zzu> CREATOR = new zzv();
    private static final HashMap zzc;
    @SafeParcelable.Indicator
    final Set zza;
    @SafeParcelable.VersionField(m776id = 1)
    final int zzb;
    @SafeParcelable.Field(getter = "getInfo", m779id = 2)
    private zzw zzd;
    @SafeParcelable.Field(getter = "getSignature", m779id = 3)
    private String zze;
    @SafeParcelable.Field(getter = "getPackageName", m779id = 4)
    private String zzf;
    @SafeParcelable.Field(getter = "getId", m779id = 5)
    private String zzg;

    static {
        HashMap hashMap = new HashMap();
        zzc = hashMap;
        hashMap.put("authenticatorInfo", FastJsonResponse.Field.forConcreteType("authenticatorInfo", 2, zzw.class));
        hashMap.put("signature", FastJsonResponse.Field.forString("signature", 3));
        hashMap.put("package", FastJsonResponse.Field.forString("package", 4));
    }

    public zzu() {
        this.zza = new HashSet(3);
        this.zzb = 1;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final void addConcreteTypeInternal(FastJsonResponse.Field field, String str, FastJsonResponse fastJsonResponse) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId != 2) {
            throw new IllegalArgumentException(String.format("Field with id=%d is not a known custom type. Found %s", Integer.valueOf(safeParcelableFieldId), fastJsonResponse.getClass().getCanonicalName()));
        }
        this.zzd = (zzw) fastJsonResponse;
        this.zza.add(Integer.valueOf(safeParcelableFieldId));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final /* synthetic */ Map getFieldMappings() {
        return zzc;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object getFieldValue(FastJsonResponse.Field field) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId != 1) {
            if (safeParcelableFieldId != 2) {
                if (safeParcelableFieldId != 3) {
                    if (safeParcelableFieldId == 4) {
                        return this.zzf;
                    }
                    int safeParcelableFieldId2 = field.getSafeParcelableFieldId();
                    throw new IllegalStateException("Unknown SafeParcelable id=" + safeParcelableFieldId2);
                }
                return this.zze;
            }
            return this.zzd;
        }
        return Integer.valueOf(this.zzb);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean isFieldSet(FastJsonResponse.Field field) {
        return this.zza.contains(Integer.valueOf(field.getSafeParcelableFieldId()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setStringInternal(FastJsonResponse.Field field, String str, String str2) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 3) {
            this.zze = str2;
        } else if (safeParcelableFieldId != 4) {
            throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string.", Integer.valueOf(safeParcelableFieldId)));
        } else {
            this.zzf = str2;
        }
        this.zza.add(Integer.valueOf(safeParcelableFieldId));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        Set set = this.zza;
        if (set.contains(1)) {
            SafeParcelWriter.writeInt(parcel, 1, this.zzb);
        }
        if (set.contains(2)) {
            SafeParcelWriter.writeParcelable(parcel, 2, this.zzd, i, true);
        }
        if (set.contains(3)) {
            SafeParcelWriter.writeString(parcel, 3, this.zze, true);
        }
        if (set.contains(4)) {
            SafeParcelWriter.writeString(parcel, 4, this.zzf, true);
        }
        if (set.contains(5)) {
            SafeParcelWriter.writeString(parcel, 5, this.zzg, true);
        }
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzu(@SafeParcelable.Indicator Set set, @SafeParcelable.Param(m778id = 1) int i, @SafeParcelable.Param(m778id = 2) zzw zzwVar, @SafeParcelable.Param(m778id = 3) String str, @SafeParcelable.Param(m778id = 4) String str2, @SafeParcelable.Param(m778id = 5) String str3) {
        this.zza = set;
        this.zzb = i;
        this.zzd = zzwVar;
        this.zze = str;
        this.zzf = str2;
        this.zzg = str3;
    }
}
