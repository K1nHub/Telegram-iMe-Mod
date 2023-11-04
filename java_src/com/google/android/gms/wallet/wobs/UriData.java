package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-wallet@@19.1.0 */
@SafeParcelable.Class(creator = "UriDataCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class UriData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<UriData> CREATOR = new zzm();
    @SafeParcelable.Field(m1090id = 2)
    String zza;
    @SafeParcelable.Field(m1090id = 3)
    String zzb;

    UriData() {
    }

    public String getDescription() {
        return this.zzb;
    }

    public String getUri() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    @SafeParcelable.Constructor
    public UriData(@SafeParcelable.Param(m1089id = 2) String str, @SafeParcelable.Param(m1089id = 3) String str2) {
        this.zza = str;
        this.zzb = str2;
    }
}
