package com.google.firebase.p020ml.vision.automl.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "ImageMetadataParcelCreator")
/* renamed from: com.google.firebase.ml.vision.automl.internal.zzh */
/* loaded from: classes3.dex */
public final class zzh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzh> CREATOR = new zzg();
    @SafeParcelable.Field(m797id = 2)
    private final int height;
    @SafeParcelable.Field(m797id = 3)

    /* renamed from: id */
    private final int f284id;
    @SafeParcelable.Field(m797id = 5)
    private final int rotation;
    @SafeParcelable.Field(m797id = 4)
    private final long timestampMillis;
    @SafeParcelable.Field(m797id = 1)
    private final int width;

    @SafeParcelable.Constructor
    public zzh(@SafeParcelable.Param(m796id = 1) int i, @SafeParcelable.Param(m796id = 2) int i2, @SafeParcelable.Param(m796id = 3) int i3, @SafeParcelable.Param(m796id = 4) long j, @SafeParcelable.Param(m796id = 5) int i4) {
        this.width = i;
        this.height = i2;
        this.f284id = i3;
        this.timestampMillis = j;
        this.rotation = i4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.width);
        SafeParcelWriter.writeInt(parcel, 2, this.height);
        SafeParcelWriter.writeInt(parcel, 3, this.f284id);
        SafeParcelWriter.writeLong(parcel, 4, this.timestampMillis);
        SafeParcelWriter.writeInt(parcel, 5, this.rotation);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
