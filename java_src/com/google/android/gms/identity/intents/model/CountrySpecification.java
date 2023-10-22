package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-identity@@17.0.1 */
@SafeParcelable.Class(creator = "CountrySpecificationCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class CountrySpecification extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<CountrySpecification> CREATOR = new zza();
    @SafeParcelable.Field(m1089id = 2)
    String zza;

    @SafeParcelable.Constructor
    public CountrySpecification(@SafeParcelable.Param(m1088id = 2) String str) {
        this.zza = str;
    }

    public String getCountryCode() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
