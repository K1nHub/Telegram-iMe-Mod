package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.MessageEvent;
/* compiled from: com.google.android.gms:play-services-wearable@@18.0.0 */
@SafeParcelable.Class(creator = "MessageEventParcelableCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzfx extends AbstractSafeParcelable implements MessageEvent {
    public static final Parcelable.Creator<zzfx> CREATOR = new zzfy();
    @SafeParcelable.Field(getter = "getRequestId", m789id = 2)
    private final int zza;
    @SafeParcelable.Field(getter = "getPath", m789id = 3)
    private final String zzb;
    @SafeParcelable.Field(getter = "getData", m789id = 4)
    private final byte[] zzc;
    @SafeParcelable.Field(getter = "getSourceNodeId", m789id = 5)
    private final String zzd;

    @SafeParcelable.Constructor
    public zzfx(@SafeParcelable.Param(m788id = 2) int i, @SafeParcelable.Param(m788id = 3) String str, @SafeParcelable.Param(m788id = 4) byte[] bArr, @SafeParcelable.Param(m788id = 5) String str2) {
        this.zza = i;
        this.zzb = str;
        this.zzc = bArr;
        this.zzd = str2;
    }

    @Override // com.google.android.gms.wearable.MessageEvent
    public final byte[] getData() {
        return this.zzc;
    }

    @Override // com.google.android.gms.wearable.MessageEvent
    public final String getPath() {
        return this.zzb;
    }

    @Override // com.google.android.gms.wearable.MessageEvent
    public final int getRequestId() {
        return this.zza;
    }

    @Override // com.google.android.gms.wearable.MessageEvent
    public final String getSourceNodeId() {
        return this.zzd;
    }

    public final String toString() {
        int i = this.zza;
        String str = this.zzb;
        byte[] bArr = this.zzc;
        String obj = (bArr == null ? "null" : Integer.valueOf(bArr.length)).toString();
        return "MessageEventParcelable[" + i + "," + str + ", size=" + obj + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.zza);
        SafeParcelWriter.writeString(parcel, 3, this.zzb, false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 5, this.zzd, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
