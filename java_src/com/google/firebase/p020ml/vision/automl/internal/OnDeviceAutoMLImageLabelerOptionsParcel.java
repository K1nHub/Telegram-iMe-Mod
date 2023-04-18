package com.google.firebase.p020ml.vision.automl.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "OnDeviceAutoMLImageLabelerOptionsParcelCreator")
/* renamed from: com.google.firebase.ml.vision.automl.internal.OnDeviceAutoMLImageLabelerOptionsParcel */
/* loaded from: classes3.dex */
public class OnDeviceAutoMLImageLabelerOptionsParcel extends AbstractSafeParcelable {
    public static final Parcelable.Creator<OnDeviceAutoMLImageLabelerOptionsParcel> CREATOR = new zzi();
    @SafeParcelable.Field(m775id = 2)
    public final String zzaxi;
    @SafeParcelable.Field(m775id = 3)
    public final String zzaxj;
    @SafeParcelable.Field(m775id = 1)
    public final float zzazi;

    @SafeParcelable.Constructor
    public OnDeviceAutoMLImageLabelerOptionsParcel(@SafeParcelable.Param(m774id = 1) float f, @SafeParcelable.Param(m774id = 2) String str, @SafeParcelable.Param(m774id = 3) String str2) {
        this.zzazi = f;
        this.zzaxi = str;
        this.zzaxj = str2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeFloat(parcel, 1, this.zzazi);
        SafeParcelWriter.writeString(parcel, 2, this.zzaxi, false);
        SafeParcelWriter.writeString(parcel, 3, this.zzaxj, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
