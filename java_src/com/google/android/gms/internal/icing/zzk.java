package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.firebase:firebase-appindexing@@20.0.0 */
@ShowFirstParty
@SafeParcelable.Class(creator = "DocumentSectionCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzk extends AbstractSafeParcelable {
    private static final zzs zzf;
    @SafeParcelable.Field(m797id = 1)
    public final String zzb;
    @SafeParcelable.Field(m797id = 3)
    final zzs zzc;
    @SafeParcelable.Field(defaultValue = "-1", m797id = 4)
    public final int zzd;
    @SafeParcelable.Field(m797id = 5)
    public final byte[] zze;
    public static final int zza = Integer.parseInt("-1");
    public static final Parcelable.Creator<zzk> CREATOR = new zzl();

    static {
        zzr zzrVar = new zzr("SsbContext");
        zzrVar.zzb(true);
        zzrVar.zza("blob");
        zzf = zzrVar.zze();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzk(@SafeParcelable.Param(m796id = 1) String str, @SafeParcelable.Param(m796id = 3) zzs zzsVar, @SafeParcelable.Param(m796id = 4) int i, @SafeParcelable.Param(m796id = 5) byte[] bArr) {
        int i2 = zza;
        boolean z = true;
        if (i != i2 && zzq.zza(i) == null) {
            z = false;
        }
        StringBuilder sb = new StringBuilder(32);
        sb.append("Invalid section type ");
        sb.append(i);
        Preconditions.checkArgument(z, sb.toString());
        this.zzb = str;
        this.zzc = zzsVar;
        this.zzd = i;
        this.zze = bArr;
        String str2 = null;
        if (i != i2 && zzq.zza(i) == null) {
            StringBuilder sb2 = new StringBuilder(32);
            sb2.append("Invalid section type ");
            sb2.append(i);
            str2 = sb2.toString();
        } else if (str != null && bArr != null) {
            str2 = "Both content and blobContent set";
        }
        if (str2 != null) {
            throw new IllegalArgumentException(str2);
        }
    }

    public static zzk zza(byte[] bArr) {
        return new zzk(null, zzf, zza, bArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.zzb, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzc, i, false);
        SafeParcelWriter.writeInt(parcel, 4, this.zzd);
        SafeParcelWriter.writeByteArray(parcel, 5, this.zze, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zzk(byte[] bArr, zzs zzsVar) {
        this(null, zzsVar, zza, bArr);
    }
}
