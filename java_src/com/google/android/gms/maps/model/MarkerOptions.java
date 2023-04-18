package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.IObjectWrapper;
/* compiled from: com.google.android.gms:play-services-maps@@18.1.0 */
@SafeParcelable.Class(creator = "MarkerOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class MarkerOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<MarkerOptions> CREATOR = new zzi();
    @SafeParcelable.Field(getter = "getPosition", m775id = 2)
    private LatLng zza;
    @SafeParcelable.Field(getter = "getTitle", m775id = 3)
    private String zzb;
    @SafeParcelable.Field(getter = "getSnippet", m775id = 4)
    private String zzc;
    @SafeParcelable.Field(getter = "getWrappedIconDescriptorImplBinder", m775id = 5, type = "android.os.IBinder")
    private BitmapDescriptor zzd;
    @SafeParcelable.Field(getter = "getAnchorU", m775id = 6)
    private float zze;
    @SafeParcelable.Field(getter = "getAnchorV", m775id = 7)
    private float zzf;
    @SafeParcelable.Field(getter = "isDraggable", m775id = 8)
    private boolean zzg;
    @SafeParcelable.Field(getter = "isVisible", m775id = 9)
    private boolean zzh;
    @SafeParcelable.Field(getter = "isFlat", m775id = 10)
    private boolean zzi;
    @SafeParcelable.Field(getter = "getRotation", m775id = 11)
    private float zzj;
    @SafeParcelable.Field(defaultValue = "0.5f", getter = "getInfoWindowAnchorU", m775id = 12)
    private float zzk;
    @SafeParcelable.Field(getter = "getInfoWindowAnchorV", m775id = 13)
    private float zzl;
    @SafeParcelable.Field(defaultValue = "1.0f", getter = "getAlpha", m775id = 14)
    private float zzm;
    @SafeParcelable.Field(getter = "getZIndex", m775id = 15)
    private float zzn;

    public MarkerOptions() {
        this.zze = 0.5f;
        this.zzf = 1.0f;
        this.zzh = true;
        this.zzi = false;
        this.zzj = BitmapDescriptorFactory.HUE_RED;
        this.zzk = 0.5f;
        this.zzl = BitmapDescriptorFactory.HUE_RED;
        this.zzm = 1.0f;
    }

    public MarkerOptions alpha(float f) {
        this.zzm = f;
        return this;
    }

    public MarkerOptions anchor(float f, float f2) {
        this.zze = f;
        this.zzf = f2;
        return this;
    }

    public MarkerOptions draggable(boolean z) {
        this.zzg = z;
        return this;
    }

    public MarkerOptions flat(boolean z) {
        this.zzi = z;
        return this;
    }

    public float getAlpha() {
        return this.zzm;
    }

    public float getAnchorU() {
        return this.zze;
    }

    public float getAnchorV() {
        return this.zzf;
    }

    public BitmapDescriptor getIcon() {
        return this.zzd;
    }

    public float getInfoWindowAnchorU() {
        return this.zzk;
    }

    public float getInfoWindowAnchorV() {
        return this.zzl;
    }

    public LatLng getPosition() {
        return this.zza;
    }

    public float getRotation() {
        return this.zzj;
    }

    public String getSnippet() {
        return this.zzc;
    }

    public String getTitle() {
        return this.zzb;
    }

    public float getZIndex() {
        return this.zzn;
    }

    public MarkerOptions icon(BitmapDescriptor bitmapDescriptor) {
        this.zzd = bitmapDescriptor;
        return this;
    }

    public MarkerOptions infoWindowAnchor(float f, float f2) {
        this.zzk = f;
        this.zzl = f2;
        return this;
    }

    public boolean isDraggable() {
        return this.zzg;
    }

    public boolean isFlat() {
        return this.zzi;
    }

    public boolean isVisible() {
        return this.zzh;
    }

    public MarkerOptions position(LatLng latLng) {
        if (latLng != null) {
            this.zza = latLng;
            return this;
        }
        throw new IllegalArgumentException("latlng cannot be null - a position is required.");
    }

    public MarkerOptions rotation(float f) {
        this.zzj = f;
        return this;
    }

    public MarkerOptions snippet(String str) {
        this.zzc = str;
        return this;
    }

    public MarkerOptions title(String str) {
        this.zzb = str;
        return this;
    }

    public MarkerOptions visible(boolean z) {
        this.zzh = z;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getPosition(), i, false);
        SafeParcelWriter.writeString(parcel, 3, getTitle(), false);
        SafeParcelWriter.writeString(parcel, 4, getSnippet(), false);
        BitmapDescriptor bitmapDescriptor = this.zzd;
        SafeParcelWriter.writeIBinder(parcel, 5, bitmapDescriptor == null ? null : bitmapDescriptor.zza().asBinder(), false);
        SafeParcelWriter.writeFloat(parcel, 6, getAnchorU());
        SafeParcelWriter.writeFloat(parcel, 7, getAnchorV());
        SafeParcelWriter.writeBoolean(parcel, 8, isDraggable());
        SafeParcelWriter.writeBoolean(parcel, 9, isVisible());
        SafeParcelWriter.writeBoolean(parcel, 10, isFlat());
        SafeParcelWriter.writeFloat(parcel, 11, getRotation());
        SafeParcelWriter.writeFloat(parcel, 12, getInfoWindowAnchorU());
        SafeParcelWriter.writeFloat(parcel, 13, getInfoWindowAnchorV());
        SafeParcelWriter.writeFloat(parcel, 14, getAlpha());
        SafeParcelWriter.writeFloat(parcel, 15, getZIndex());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public MarkerOptions zIndex(float f) {
        this.zzn = f;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public MarkerOptions(@SafeParcelable.Param(m774id = 2) LatLng latLng, @SafeParcelable.Param(m774id = 3) String str, @SafeParcelable.Param(m774id = 4) String str2, @SafeParcelable.Param(m774id = 5) IBinder iBinder, @SafeParcelable.Param(m774id = 6) float f, @SafeParcelable.Param(m774id = 7) float f2, @SafeParcelable.Param(m774id = 8) boolean z, @SafeParcelable.Param(m774id = 9) boolean z2, @SafeParcelable.Param(m774id = 10) boolean z3, @SafeParcelable.Param(m774id = 11) float f3, @SafeParcelable.Param(m774id = 12) float f4, @SafeParcelable.Param(m774id = 13) float f5, @SafeParcelable.Param(m774id = 14) float f6, @SafeParcelable.Param(m774id = 15) float f7) {
        this.zze = 0.5f;
        this.zzf = 1.0f;
        this.zzh = true;
        this.zzi = false;
        this.zzj = BitmapDescriptorFactory.HUE_RED;
        this.zzk = 0.5f;
        this.zzl = BitmapDescriptorFactory.HUE_RED;
        this.zzm = 1.0f;
        this.zza = latLng;
        this.zzb = str;
        this.zzc = str2;
        if (iBinder == null) {
            this.zzd = null;
        } else {
            this.zzd = new BitmapDescriptor(IObjectWrapper.Stub.asInterface(iBinder));
        }
        this.zze = f;
        this.zzf = f2;
        this.zzg = z;
        this.zzh = z2;
        this.zzi = z3;
        this.zzj = f3;
        this.zzk = f4;
        this.zzl = f5;
        this.zzm = f6;
        this.zzn = f7;
    }
}
