package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
@SafeParcelable.Class(creator = "ScoringConfigCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzu> CREATOR = new zzv();
    @SafeParcelable.Field(m789id = 1)
    public final boolean zza;

    @SafeParcelable.Constructor
    public zzu(@SafeParcelable.Param(m788id = 1) boolean z) {
        this.zza = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof zzu) && this.zza == ((zzu) obj).zza;
    }

    public final int hashCode() {
        return this.zza ? 1 : 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.zza);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
