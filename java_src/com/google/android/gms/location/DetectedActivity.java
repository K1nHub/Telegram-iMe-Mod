package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Comparator;
/* compiled from: com.google.android.gms:play-services-location@@21.0.1 */
@SafeParcelable.Class(creator = "DetectedActivityCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class DetectedActivity extends AbstractSafeParcelable {
    public static final int IN_VEHICLE = 0;
    public static final int ON_BICYCLE = 1;
    public static final int ON_FOOT = 2;
    public static final int RUNNING = 8;
    public static final int STILL = 3;
    public static final int TILTING = 5;
    public static final int UNKNOWN = 4;
    public static final int WALKING = 7;
    @SafeParcelable.Field(m1090id = 1)
    int zzb;
    @SafeParcelable.Field(m1090id = 2)
    int zzc;
    public static final Comparator zza = new zzk();
    public static final Parcelable.Creator<DetectedActivity> CREATOR = new zzl();

    @SafeParcelable.Constructor
    public DetectedActivity(@SafeParcelable.Param(m1089id = 1) int i, @SafeParcelable.Param(m1089id = 2) int i2) {
        this.zzb = i;
        this.zzc = i2;
    }

    @ShowFirstParty
    public final boolean equals(Object obj) {
        if (obj instanceof DetectedActivity) {
            DetectedActivity detectedActivity = (DetectedActivity) obj;
            if (this.zzb == detectedActivity.zzb && this.zzc == detectedActivity.zzc) {
                return true;
            }
        }
        return false;
    }

    public int getConfidence() {
        return this.zzc;
    }

    public int getType() {
        int i = this.zzb;
        if (i > 22 || i < 0) {
            return 4;
        }
        return i;
    }

    @ShowFirstParty
    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zzb), Integer.valueOf(this.zzc));
    }

    public String toString() {
        String str;
        int type = getType();
        if (type == 0) {
            str = "IN_VEHICLE";
        } else if (type == 1) {
            str = "ON_BICYCLE";
        } else if (type == 2) {
            str = "ON_FOOT";
        } else if (type == 3) {
            str = "STILL";
        } else if (type == 4) {
            str = "UNKNOWN";
        } else if (type == 5) {
            str = "TILTING";
        } else if (type == 7) {
            str = "WALKING";
        } else if (type == 8) {
            str = "RUNNING";
        } else if (type != 16) {
            str = type != 17 ? Integer.toString(type) : "IN_RAIL_VEHICLE";
        } else {
            str = "IN_ROAD_VEHICLE";
        }
        int i = this.zzc;
        return "DetectedActivity [type=" + str + ", confidence=" + i + "]";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zzb);
        SafeParcelWriter.writeInt(parcel, 2, this.zzc);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
