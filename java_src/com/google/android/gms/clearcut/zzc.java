package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "CollectForDebugParcelableCreator")
/* loaded from: classes.dex */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new zzd();
    @SafeParcelable.Field(defaultValue = "false", m779id = 1)
    private final boolean zzad;
    @SafeParcelable.Field(m779id = 3)
    private final long zzae;
    @SafeParcelable.Field(m779id = 2)
    private final long zzaf;

    @SafeParcelable.Constructor
    public zzc(@SafeParcelable.Param(m778id = 1) boolean z, @SafeParcelable.Param(m778id = 3) long j, @SafeParcelable.Param(m778id = 2) long j2) {
        this.zzad = z;
        this.zzae = j;
        this.zzaf = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzc) {
            zzc zzcVar = (zzc) obj;
            if (this.zzad == zzcVar.zzad && this.zzae == zzcVar.zzae && this.zzaf == zzcVar.zzaf) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.zzad), Long.valueOf(this.zzae), Long.valueOf(this.zzaf));
    }

    public final String toString() {
        return "CollectForDebugParcelable[skipPersistentStorage: " + this.zzad + ",collectForDebugStartTimeMillis: " + this.zzae + ",collectForDebugExpiryTimeMillis: " + this.zzaf + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.zzad);
        SafeParcelWriter.writeLong(parcel, 2, this.zzaf);
        SafeParcelWriter.writeLong(parcel, 3, this.zzae);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
