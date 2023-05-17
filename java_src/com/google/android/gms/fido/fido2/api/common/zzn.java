package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
@SafeParcelable.Class(creator = "CableAuthenticationDataCreator")
/* loaded from: classes.dex */
public final class zzn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new zzo();
    @SafeParcelable.Field(getter = "getVersion", m779id = 1)
    private final long zza;
    @SafeParcelable.Field(getter = "getClientEid", m779id = 2)
    private final byte[] zzb;
    @SafeParcelable.Field(getter = "getAuthenticatorEid", m779id = 3)
    private final byte[] zzc;
    @SafeParcelable.Field(getter = "getSessionPreKey", m779id = 4)
    private final byte[] zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzn(@SafeParcelable.Param(m778id = 1) long j, @SafeParcelable.Param(m778id = 2) byte[] bArr, @SafeParcelable.Param(m778id = 3) byte[] bArr2, @SafeParcelable.Param(m778id = 4) byte[] bArr3) {
        this.zza = j;
        this.zzb = (byte[]) Preconditions.checkNotNull(bArr);
        this.zzc = (byte[]) Preconditions.checkNotNull(bArr2);
        this.zzd = (byte[]) Preconditions.checkNotNull(bArr3);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzn) {
            zzn zznVar = (zzn) obj;
            return this.zza == zznVar.zza && Arrays.equals(this.zzb, zznVar.zzb) && Arrays.equals(this.zzc, zznVar.zzc) && Arrays.equals(this.zzd, zznVar.zzd);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Long.valueOf(this.zza), this.zzb, this.zzc, this.zzd);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, this.zza);
        SafeParcelWriter.writeByteArray(parcel, 2, this.zzb, false);
        SafeParcelWriter.writeByteArray(parcel, 3, this.zzc, false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.zzd, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
