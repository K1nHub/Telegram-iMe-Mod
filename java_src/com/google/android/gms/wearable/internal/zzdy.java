package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@SafeParcelable.Class(creator = "GetCloudSyncOptInStatusCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzdy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzdy> CREATOR = new zzdx();
    @SafeParcelable.Field(m779id = 2)
    public final int zza;
    @SafeParcelable.Field(m779id = 3)
    public final boolean zzb;
    @SafeParcelable.Field(m779id = 4)
    public final boolean zzc;

    @SafeParcelable.Constructor
    public zzdy(@SafeParcelable.Param(m778id = 2) int i, @SafeParcelable.Param(m778id = 3) boolean z, @SafeParcelable.Param(m778id = 4) boolean z2) {
        this.zza = i;
        this.zzb = z;
        this.zzc = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeBoolean(parcel, 3, this.zzb);
        SafeParcelWriter.writeBoolean(parcel, 4, this.zzc);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
