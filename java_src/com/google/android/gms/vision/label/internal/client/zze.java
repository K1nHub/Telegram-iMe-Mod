package com.google.android.gms.vision.label.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "ImageLabelParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zze extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zze> CREATOR = new zzf();
    @SafeParcelable.Field(m779id = 2)
    public final String label;
    @SafeParcelable.Field(m779id = 4)
    public final String zzdn;
    @SafeParcelable.Field(m779id = 3)
    public final float zzdo;

    @SafeParcelable.Constructor
    public zze(@SafeParcelable.Param(m778id = 4) String str, @SafeParcelable.Param(m778id = 2) String str2, @SafeParcelable.Param(m778id = 3) float f) {
        this.label = str2;
        this.zzdo = f;
        this.zzdn = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.label, false);
        SafeParcelWriter.writeFloat(parcel, 3, this.zzdo);
        SafeParcelWriter.writeString(parcel, 4, this.zzdn, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
