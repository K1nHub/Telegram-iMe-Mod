package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@ShowFirstParty
@SafeParcelable.Class(creator = "StorageInfoResponseCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzhg extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzhg> CREATOR = new zzhh();
    @SafeParcelable.Field(m789id = 2)
    public final int zza;
    @SafeParcelable.Field(m789id = 3)
    public final long zzb;
    @SafeParcelable.Field(m789id = 4)
    public final List zzc;

    @SafeParcelable.Constructor
    public zzhg(@SafeParcelable.Param(m788id = 2) int i, @SafeParcelable.Param(m788id = 3) long j, @SafeParcelable.Param(m788id = 4) List list) {
        this.zza = i;
        this.zzb = j;
        this.zzc = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeLong(parcel, 3, this.zzb);
        SafeParcelWriter.writeTypedList(parcel, 4, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
