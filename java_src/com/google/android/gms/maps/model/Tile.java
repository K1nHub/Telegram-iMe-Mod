package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-maps@@18.1.0 */
@SafeParcelable.Class(creator = "TileCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class Tile extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Tile> CREATOR = new zzz();
    @SafeParcelable.Field(m1090id = 4)
    public final byte[] data;
    @SafeParcelable.Field(m1090id = 3)
    public final int height;
    @SafeParcelable.Field(m1090id = 2)
    public final int width;

    @SafeParcelable.Constructor
    public Tile(@SafeParcelable.Param(m1089id = 2) int i, @SafeParcelable.Param(m1089id = 3) int i2, @SafeParcelable.Param(m1089id = 4) byte[] bArr) {
        this.width = i;
        this.height = i2;
        this.data = bArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.width);
        SafeParcelWriter.writeInt(parcel, 3, this.height);
        SafeParcelWriter.writeByteArray(parcel, 4, this.data, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
