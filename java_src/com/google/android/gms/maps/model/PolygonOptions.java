package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-maps@@18.1.0 */
@SafeParcelable.Class(creator = "PolygonOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class PolygonOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PolygonOptions> CREATOR = new zzl();
    @SafeParcelable.Field(getter = "getPoints", m797id = 2)
    private final List zza;
    @SafeParcelable.Field(getter = "getHolesForParcel", m797id = 3, type = "java.util.List")
    private final List zzb;
    @SafeParcelable.Field(getter = "getStrokeWidth", m797id = 4)
    private float zzc;
    @SafeParcelable.Field(getter = "getStrokeColor", m797id = 5)
    private int zzd;
    @SafeParcelable.Field(getter = "getFillColor", m797id = 6)
    private int zze;
    @SafeParcelable.Field(getter = "getZIndex", m797id = 7)
    private float zzf;
    @SafeParcelable.Field(getter = "isVisible", m797id = 8)
    private boolean zzg;
    @SafeParcelable.Field(getter = "isGeodesic", m797id = 9)
    private boolean zzh;
    @SafeParcelable.Field(getter = "isClickable", m797id = 10)
    private boolean zzi;
    @SafeParcelable.Field(getter = "getStrokeJointType", m797id = 11)
    private int zzj;
    @SafeParcelable.Field(getter = "getStrokePattern", m797id = 12)
    private List zzk;

    public PolygonOptions() {
        this.zzc = 10.0f;
        this.zzd = -16777216;
        this.zze = 0;
        this.zzf = BitmapDescriptorFactory.HUE_RED;
        this.zzg = true;
        this.zzh = false;
        this.zzi = false;
        this.zzj = 0;
        this.zzk = null;
        this.zza = new ArrayList();
        this.zzb = new ArrayList();
    }

    public PolygonOptions add(LatLng latLng) {
        Preconditions.checkNotNull(latLng, "point must not be null.");
        this.zza.add(latLng);
        return this;
    }

    public PolygonOptions addAll(Iterable<LatLng> iterable) {
        Preconditions.checkNotNull(iterable, "points must not be null.");
        for (LatLng latLng : iterable) {
            this.zza.add(latLng);
        }
        return this;
    }

    public PolygonOptions addHole(Iterable<LatLng> iterable) {
        Preconditions.checkNotNull(iterable, "points must not be null.");
        ArrayList arrayList = new ArrayList();
        for (LatLng latLng : iterable) {
            arrayList.add(latLng);
        }
        this.zzb.add(arrayList);
        return this;
    }

    public PolygonOptions clickable(boolean z) {
        this.zzi = z;
        return this;
    }

    public PolygonOptions fillColor(int i) {
        this.zze = i;
        return this;
    }

    public PolygonOptions geodesic(boolean z) {
        this.zzh = z;
        return this;
    }

    public int getFillColor() {
        return this.zze;
    }

    public List<List<LatLng>> getHoles() {
        return this.zzb;
    }

    public List<LatLng> getPoints() {
        return this.zza;
    }

    public int getStrokeColor() {
        return this.zzd;
    }

    public int getStrokeJointType() {
        return this.zzj;
    }

    public List<PatternItem> getStrokePattern() {
        return this.zzk;
    }

    public float getStrokeWidth() {
        return this.zzc;
    }

    public float getZIndex() {
        return this.zzf;
    }

    public boolean isClickable() {
        return this.zzi;
    }

    public boolean isGeodesic() {
        return this.zzh;
    }

    public boolean isVisible() {
        return this.zzg;
    }

    public PolygonOptions strokeColor(int i) {
        this.zzd = i;
        return this;
    }

    public PolygonOptions strokeJointType(int i) {
        this.zzj = i;
        return this;
    }

    public PolygonOptions strokePattern(List<PatternItem> list) {
        this.zzk = list;
        return this;
    }

    public PolygonOptions strokeWidth(float f) {
        this.zzc = f;
        return this;
    }

    public PolygonOptions visible(boolean z) {
        this.zzg = z;
        return this;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 2, getPoints(), false);
        SafeParcelWriter.writeList(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeFloat(parcel, 4, getStrokeWidth());
        SafeParcelWriter.writeInt(parcel, 5, getStrokeColor());
        SafeParcelWriter.writeInt(parcel, 6, getFillColor());
        SafeParcelWriter.writeFloat(parcel, 7, getZIndex());
        SafeParcelWriter.writeBoolean(parcel, 8, isVisible());
        SafeParcelWriter.writeBoolean(parcel, 9, isGeodesic());
        SafeParcelWriter.writeBoolean(parcel, 10, isClickable());
        SafeParcelWriter.writeInt(parcel, 11, getStrokeJointType());
        SafeParcelWriter.writeTypedList(parcel, 12, getStrokePattern(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public PolygonOptions zIndex(float f) {
        this.zzf = f;
        return this;
    }

    public PolygonOptions add(LatLng... latLngArr) {
        Preconditions.checkNotNull(latLngArr, "points must not be null.");
        this.zza.addAll(Arrays.asList(latLngArr));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public PolygonOptions(@SafeParcelable.Param(m796id = 2) List list, @SafeParcelable.Param(m796id = 3) List list2, @SafeParcelable.Param(m796id = 4) float f, @SafeParcelable.Param(m796id = 5) int i, @SafeParcelable.Param(m796id = 6) int i2, @SafeParcelable.Param(m796id = 7) float f2, @SafeParcelable.Param(m796id = 8) boolean z, @SafeParcelable.Param(m796id = 9) boolean z2, @SafeParcelable.Param(m796id = 10) boolean z3, @SafeParcelable.Param(m796id = 11) int i3, @SafeParcelable.Param(m796id = 12) List list3) {
        this.zza = list;
        this.zzb = list2;
        this.zzc = f;
        this.zzd = i;
        this.zze = i2;
        this.zzf = f2;
        this.zzg = z;
        this.zzh = z2;
        this.zzi = z3;
        this.zzj = i3;
        this.zzk = list3;
    }
}
