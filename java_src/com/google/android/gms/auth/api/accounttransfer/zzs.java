package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.internal.auth.zzbz;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-auth-base@@18.0.4 */
@SafeParcelable.Class(creator = "AccountTransferProgressCreator")
/* loaded from: classes.dex */
public final class zzs extends zzbz {
    public static final Parcelable.Creator<zzs> CREATOR = new zzt();
    private static final ArrayMap zzb;
    @SafeParcelable.VersionField(m776id = 1)
    final int zza;
    @SafeParcelable.Field(getter = "getRegisteredAccountTypes", m779id = 2)
    private List zzc;
    @SafeParcelable.Field(getter = "getInProgressAccountTypes", m779id = 3)
    private List zzd;
    @SafeParcelable.Field(getter = "getSuccessAccountTypes", m779id = 4)
    private List zze;
    @SafeParcelable.Field(getter = "getFailedAccountTypes", m779id = 5)
    private List zzf;
    @SafeParcelable.Field(getter = "getEscrowedAccountTypes", m779id = 6)
    private List zzg;

    static {
        ArrayMap arrayMap = new ArrayMap();
        zzb = arrayMap;
        arrayMap.put("registered", FastJsonResponse.Field.forStrings("registered", 2));
        arrayMap.put("in_progress", FastJsonResponse.Field.forStrings("in_progress", 3));
        arrayMap.put("success", FastJsonResponse.Field.forStrings("success", 4));
        arrayMap.put("failed", FastJsonResponse.Field.forStrings("failed", 5));
        arrayMap.put("escrowed", FastJsonResponse.Field.forStrings("escrowed", 6));
    }

    public zzs() {
        this.zza = 1;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Map getFieldMappings() {
        return zzb;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Object getFieldValue(FastJsonResponse.Field field) {
        switch (field.getSafeParcelableFieldId()) {
            case 1:
                return Integer.valueOf(this.zza);
            case 2:
                return this.zzc;
            case 3:
                return this.zzd;
            case 4:
                return this.zze;
            case 5:
                return this.zzf;
            case 6:
                return this.zzg;
            default:
                int safeParcelableFieldId = field.getSafeParcelableFieldId();
                throw new IllegalStateException("Unknown SafeParcelable id=" + safeParcelableFieldId);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean isFieldSet(FastJsonResponse.Field field) {
        return true;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setStringsInternal(FastJsonResponse.Field field, String str, ArrayList arrayList) {
        int safeParcelableFieldId = field.getSafeParcelableFieldId();
        if (safeParcelableFieldId == 2) {
            this.zzc = arrayList;
        } else if (safeParcelableFieldId == 3) {
            this.zzd = arrayList;
        } else if (safeParcelableFieldId == 4) {
            this.zze = arrayList;
        } else if (safeParcelableFieldId == 5) {
            this.zzf = arrayList;
        } else if (safeParcelableFieldId != 6) {
            throw new IllegalArgumentException(String.format("Field with id=%d is not known to be a string list.", Integer.valueOf(safeParcelableFieldId)));
        } else {
            this.zzg = arrayList;
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeStringList(parcel, 2, this.zzc, false);
        SafeParcelWriter.writeStringList(parcel, 3, this.zzd, false);
        SafeParcelWriter.writeStringList(parcel, 4, this.zze, false);
        SafeParcelWriter.writeStringList(parcel, 5, this.zzf, false);
        SafeParcelWriter.writeStringList(parcel, 6, this.zzg, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzs(@SafeParcelable.Param(m778id = 1) int i, @SafeParcelable.Param(m778id = 2) List list, @SafeParcelable.Param(m778id = 3) List list2, @SafeParcelable.Param(m778id = 4) List list3, @SafeParcelable.Param(m778id = 5) List list4, @SafeParcelable.Param(m778id = 6) List list5) {
        this.zza = i;
        this.zzc = list;
        this.zzd = list2;
        this.zze = list3;
        this.zzf = list4;
        this.zzg = list5;
    }
}
