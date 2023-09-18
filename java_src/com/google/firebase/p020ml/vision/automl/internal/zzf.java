package com.google.firebase.p020ml.vision.automl.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
@SafeParcelable.Class(creator = "ImageLabelParcelCreator")
/* renamed from: com.google.firebase.ml.vision.automl.internal.zzf */
/* loaded from: classes4.dex */
public final class zzf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzf> CREATOR = new zze();
    @SafeParcelable.Field(m797id = 1)
    public final String entityId;
    @SafeParcelable.Field(m797id = 2)
    public final String text;
    @SafeParcelable.Field(m797id = 3)
    public final float zzazh;

    @SafeParcelable.Constructor
    public zzf(@SafeParcelable.Param(m796id = 1) String str, @SafeParcelable.Param(m796id = 2) String str2, @SafeParcelable.Param(m796id = 3) float f) {
        this.entityId = str;
        this.text = str2;
        this.zzazh = f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.entityId, false);
        SafeParcelWriter.writeString(parcel, 2, this.text, false);
        SafeParcelWriter.writeFloat(parcel, 3, this.zzazh);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzf) {
            zzf zzfVar = (zzf) obj;
            return Objects.equal(this.entityId, zzfVar.entityId) && Objects.equal(this.text, zzfVar.text) && Float.compare(this.zzazh, zzfVar.zzazh) == 0;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.entityId, this.text, Float.valueOf(this.zzazh));
    }
}
