package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-location@@21.0.1 */
@ShowFirstParty
@SafeParcelable.Class(creator = "UserPreferredSleepWindowCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class zzaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaj> CREATOR = new zzak();
    @SafeParcelable.Field(getter = "getStartHour", m1090id = 1)
    private final int zza;
    @SafeParcelable.Field(getter = "getStartMinute", m1090id = 2)
    private final int zzb;
    @SafeParcelable.Field(getter = "getEndHour", m1090id = 3)
    private final int zzc;
    @SafeParcelable.Field(getter = "getEndMinute", m1090id = 4)
    private final int zzd;

    @SafeParcelable.Constructor
    public zzaj(@SafeParcelable.Param(m1089id = 1) int i, @SafeParcelable.Param(m1089id = 2) int i2, @SafeParcelable.Param(m1089id = 3) int i3, @SafeParcelable.Param(m1089id = 4) int i4) {
        Preconditions.checkState(i >= 0 && i <= 23, "Start hour must be in range [0, 23].");
        Preconditions.checkState(i2 >= 0 && i2 <= 59, "Start minute must be in range [0, 59].");
        Preconditions.checkState(i3 >= 0 && i3 <= 23, "End hour must be in range [0, 23].");
        Preconditions.checkState(i4 >= 0 && i4 <= 59, "End minute must be in range [0, 59].");
        Preconditions.checkState(((i + i2) + i3) + i4 > 0, "Parameters can't be all 0.");
        this.zza = i;
        this.zzb = i2;
        this.zzc = i3;
        this.zzd = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzaj) {
            zzaj zzajVar = (zzaj) obj;
            return this.zza == zzajVar.zza && this.zzb == zzajVar.zzb && this.zzc == zzajVar.zzc && this.zzd == zzajVar.zzd;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zza), Integer.valueOf(this.zzb), Integer.valueOf(this.zzc), Integer.valueOf(this.zzd));
    }

    public final String toString() {
        int i = this.zza;
        int i2 = this.zzb;
        int i3 = this.zzc;
        int i4 = this.zzd;
        return "UserPreferredSleepWindow [startHour=" + i + ", startMinute=" + i2 + ", endHour=" + i3 + ", endMinute=" + i4 + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeInt(parcel, 2, this.zzb);
        SafeParcelWriter.writeInt(parcel, 3, this.zzc);
        SafeParcelWriter.writeInt(parcel, 4, this.zzd);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
