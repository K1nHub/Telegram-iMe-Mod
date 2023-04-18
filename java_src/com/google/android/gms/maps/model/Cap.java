package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-maps@@18.1.0 */
@SafeParcelable.Class(creator = "CapCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public class Cap extends AbstractSafeParcelable {
    @SafeParcelable.Field(getter = "getType", m775id = 2)
    private final int zzb;
    @SafeParcelable.Field(getter = "getWrappedBitmapDescriptorImplBinder", m775id = 3, type = "android.os.IBinder")
    private final BitmapDescriptor zzc;
    @SafeParcelable.Field(getter = "getBitmapRefWidth", m775id = 4)
    private final Float zzd;
    private static final String zza = Cap.class.getSimpleName();
    public static final Parcelable.Creator<Cap> CREATOR = new zzb();

    /* JADX INFO: Access modifiers changed from: protected */
    public Cap(int i) {
        this(i, (BitmapDescriptor) null, (Float) null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Cap) {
            Cap cap = (Cap) obj;
            return this.zzb == cap.zzb && Objects.equal(this.zzc, cap.zzc) && Objects.equal(this.zzd, cap.zzd);
        }
        return false;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zzb), this.zzc, this.zzd);
    }

    public String toString() {
        int i = this.zzb;
        return "[Cap: type=" + i + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        BitmapDescriptor bitmapDescriptor = this.zzc;
        SafeParcelWriter.writeIBinder(parcel, 3, bitmapDescriptor == null ? null : bitmapDescriptor.zza().asBinder(), false);
        SafeParcelWriter.writeFloatObject(parcel, 4, this.zzd, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Cap zza() {
        int i = this.zzb;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        Preconditions.checkState(this.zzc != null, "bitmapDescriptor must not be null");
                        Preconditions.checkState(this.zzd != null, "bitmapRefWidth must not be null");
                        return new CustomCap(this.zzc, this.zzd.floatValue());
                    }
                    String str = zza;
                    Log.w(str, "Unknown Cap type: " + i);
                    return this;
                }
                return new RoundCap();
            }
            return new SquareCap();
        }
        return new ButtCap();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public Cap(@SafeParcelable.Param(m774id = 2) int i, @SafeParcelable.Param(m774id = 3) IBinder iBinder, @SafeParcelable.Param(m774id = 4) Float f) {
        this(i, iBinder == null ? null : new BitmapDescriptor(IObjectWrapper.Stub.asInterface(iBinder)), f);
    }

    private Cap(int i, BitmapDescriptor bitmapDescriptor, Float f) {
        boolean z;
        boolean z2 = f != null && f.floatValue() > BitmapDescriptorFactory.HUE_RED;
        if (i == 3) {
            z = bitmapDescriptor != null && z2;
            i = 3;
        } else {
            z = true;
        }
        Preconditions.checkArgument(z, String.format("Invalid Cap: type=%s bitmapDescriptor=%s bitmapRefWidth=%s", Integer.valueOf(i), bitmapDescriptor, f));
        this.zzb = i;
        this.zzc = bitmapDescriptor;
        this.zzd = f;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Cap(BitmapDescriptor bitmapDescriptor, float f) {
        this(3, bitmapDescriptor, Float.valueOf(f));
    }
}
