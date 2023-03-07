package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-vision@@20.1.3 */
@ShowFirstParty
@SafeParcelable.Class(creator = "TextRecognizerOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzam extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzam> CREATOR = new zzap();
    @SafeParcelable.Field(getter = "getCustomModelsDir", m789id = 2)
    private final String zza;

    @SafeParcelable.Constructor
    public zzam(@SafeParcelable.Param(m788id = 2) String str) {
        this.zza = str;
    }

    public zzam() {
        this(null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zza, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
