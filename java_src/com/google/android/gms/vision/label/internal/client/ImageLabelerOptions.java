package com.google.android.gms.vision.label.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;
@SafeParcelable.Class(creator = "ImageLabelerOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public class ImageLabelerOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ImageLabelerOptions> CREATOR = new zzg();
    @SafeParcelable.Field(m789id = 2)
    private int zzef;
    @SafeParcelable.Field(m789id = 3)
    public int zzeg;
    @SafeParcelable.Field(m789id = 4)
    public float zzeh;
    @SafeParcelable.Field(m789id = 5)
    public int zzei;

    public static int zza(String str) {
        str.equals(Locale.ENGLISH.getLanguage());
        return 1;
    }

    @SafeParcelable.Constructor
    public ImageLabelerOptions(@SafeParcelable.Param(m788id = 2) int i, @SafeParcelable.Param(m788id = 3) int i2, @SafeParcelable.Param(m788id = 4) float f, @SafeParcelable.Param(m788id = 5) int i3) {
        if (i != 1) {
            throw new IllegalArgumentException("Unknown language.");
        }
        this.zzef = i;
        this.zzeg = i2;
        this.zzeh = f;
        this.zzei = i3;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zzef);
        SafeParcelWriter.writeInt(parcel, 3, this.zzeg);
        SafeParcelWriter.writeFloat(parcel, 4, this.zzeh);
        SafeParcelWriter.writeInt(parcel, 5, this.zzei);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
