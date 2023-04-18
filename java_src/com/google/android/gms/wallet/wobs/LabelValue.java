package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "LabelValueCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class LabelValue extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LabelValue> CREATOR = new zzd();
    @SafeParcelable.Field(m775id = 2)
    String zza;
    @SafeParcelable.Field(m775id = 3)
    String zzb;

    LabelValue() {
    }

    public String getLabel() {
        return this.zza;
    }

    public String getValue() {
        return this.zzb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public LabelValue(@SafeParcelable.Param(m774id = 2) String str, @SafeParcelable.Param(m774id = 3) String str2) {
        this.zza = str;
        this.zzb = str2;
    }
}
