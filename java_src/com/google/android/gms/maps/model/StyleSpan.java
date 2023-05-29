package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-maps@@18.1.0 */
@SafeParcelable.Class(creator = "StyleSpanCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class StyleSpan extends AbstractSafeParcelable {
    public static final Parcelable.Creator<StyleSpan> CREATOR = new zzw();
    @SafeParcelable.Field(getter = "getStyle", m779id = 2)
    private final StrokeStyle zza;
    @SafeParcelable.Field(getter = "getSegments", m779id = 3)
    private final double zzb;

    public StyleSpan(int i) {
        this.zza = StrokeStyle.colorBuilder(i).build();
        this.zzb = 1.0d;
    }

    public double getSegments() {
        return this.zzb;
    }

    public StrokeStyle getStyle() {
        return this.zza;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getStyle(), i, false);
        SafeParcelWriter.writeDouble(parcel, 3, getSegments());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public StyleSpan(int i, double d) {
        if (d <= 0.0d) {
            throw new IllegalArgumentException("A style must be applied to some segments on a polyline.");
        }
        this.zza = StrokeStyle.colorBuilder(i).build();
        this.zzb = d;
    }

    public StyleSpan(StrokeStyle strokeStyle) {
        this.zza = strokeStyle;
        this.zzb = 1.0d;
    }

    @SafeParcelable.Constructor
    public StyleSpan(@SafeParcelable.Param(m778id = 2) StrokeStyle strokeStyle, @SafeParcelable.Param(m778id = 3) double d) {
        if (d > 0.0d) {
            this.zza = strokeStyle;
            this.zzb = d;
            return;
        }
        throw new IllegalArgumentException("A style must be applied to some segments on a polyline.");
    }
}
