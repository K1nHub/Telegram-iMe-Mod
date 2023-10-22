package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
@ShowFirstParty
@SafeParcelable.Class(creator = "GetRecentContextCall_ResponseCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzo extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();
    @SafeParcelable.Field(m1089id = 1)
    public Status zza;
    @SafeParcelable.Field(m1089id = 2)
    public List<zzx> zzb;
    @SafeParcelable.Field(m1089id = 3)
    @Deprecated
    public String[] zzc;

    public zzo() {
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.zza, i, false);
        SafeParcelWriter.writeTypedList(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeStringArray(parcel, 3, this.zzc, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzo(@SafeParcelable.Param(m1088id = 1) Status status, @SafeParcelable.Param(m1088id = 2) List<zzx> list, @SafeParcelable.Param(m1088id = 3) String[] strArr) {
        this.zza = status;
        this.zzb = list;
        this.zzc = strArr;
    }
}
