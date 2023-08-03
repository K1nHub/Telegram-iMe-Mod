package com.google.firebase.appindexing.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
@SafeParcelable.Class(creator = "MetadataImplCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class zzb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new zzy();
    @SafeParcelable.Field(getter = "getEventStatus", m797id = 1)
    private int zza;
    @SafeParcelable.Field(getter = "isUploadable", m797id = 2)
    private final boolean zzb;
    @SafeParcelable.Field(getter = "getCompletionToken", m797id = 3)
    private final String zzc;
    @SafeParcelable.Field(getter = "getAccountName", m797id = 4)
    private final String zzd;
    @SafeParcelable.Field(getter = "getSsbContext", m797id = 5)
    private final byte[] zze;
    @SafeParcelable.Field(getter = "isContextOnly", m797id = 6)
    private final boolean zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzb(@SafeParcelable.Param(m796id = 1) int i, @SafeParcelable.Param(m796id = 2) boolean z, @SafeParcelable.Param(m796id = 3) String str, @SafeParcelable.Param(m796id = 4) String str2, @SafeParcelable.Param(m796id = 5) byte[] bArr, @SafeParcelable.Param(m796id = 6) boolean z2) {
        this.zza = i;
        this.zzb = z;
        this.zzc = str;
        this.zzd = str2;
        this.zze = bArr;
        this.zzf = z2;
    }

    public final String toString() {
        byte[] bArr;
        StringBuilder sb = new StringBuilder();
        sb.append("MetadataImpl { { eventStatus: '");
        sb.append(this.zza);
        sb.append("' } { uploadable: '");
        sb.append(this.zzb);
        sb.append("' } ");
        if (this.zzc != null) {
            sb.append("{ completionToken: '");
            sb.append(this.zzc);
            sb.append("' } ");
        }
        if (this.zzd != null) {
            sb.append("{ accountName: '");
            sb.append(this.zzd);
            sb.append("' } ");
        }
        if (this.zze != null) {
            sb.append("{ ssbContext: [ ");
            for (byte b : this.zze) {
                sb.append("0x");
                sb.append(Integer.toHexString(b));
                sb.append(" ");
            }
            sb.append("] } ");
        }
        sb.append("{ contextOnly: '");
        sb.append(this.zzf);
        sb.append("' } }");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeBoolean(parcel, 2, this.zzb);
        SafeParcelWriter.writeString(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeString(parcel, 4, this.zzd, false);
        SafeParcelWriter.writeByteArray(parcel, 5, this.zze, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.zzf);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final void zza(int i) {
        this.zza = i;
    }

    public zzb(boolean z, String str, String str2, byte[] bArr, boolean z2) {
        this.zza = 0;
        this.zzb = z;
        this.zzc = null;
        this.zzd = null;
        this.zze = null;
        this.zzf = false;
    }
}
