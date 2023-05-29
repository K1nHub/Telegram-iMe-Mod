package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@SafeParcelable.Class(creator = "AppRecommendationsResponseCreator")
/* loaded from: classes3.dex */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new zzr();
    @SafeParcelable.Field(m779id = 1)
    public final int zza;
    @SafeParcelable.Field(m779id = 2)
    public final List zzb;
    @SafeParcelable.Field(m779id = 3)
    public final zziv zzc;

    @SafeParcelable.Constructor
    public zzq(@SafeParcelable.Param(m778id = 1) int i, @SafeParcelable.Param(m778id = 2) List list, @SafeParcelable.Param(m778id = 3) zziv zzivVar) {
        this.zza = i;
        this.zzb = list;
        this.zzc = zzivVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeTypedList(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
