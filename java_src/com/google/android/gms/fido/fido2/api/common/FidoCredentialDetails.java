package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
@SafeParcelable.Class(creator = "FidoCredentialDetailsCreator")
/* loaded from: classes.dex */
public class FidoCredentialDetails extends AbstractSafeParcelable {
    public static final Parcelable.Creator<FidoCredentialDetails> CREATOR = new zzv();
    @SafeParcelable.Field(getter = "getUserName", m797id = 1)
    private final String zza;
    @SafeParcelable.Field(getter = "getUserDisplayName", m797id = 2)
    private final String zzb;
    @SafeParcelable.Field(getter = "getUserId", m797id = 3)
    private final byte[] zzc;
    @SafeParcelable.Field(getter = "getCredentialId", m797id = 4)
    private final byte[] zzd;
    @SafeParcelable.Field(getter = "getIsDiscoverable", m797id = 5)
    private final boolean zze;
    @SafeParcelable.Field(getter = "getIsPaymentCredential", m797id = 6)
    private final boolean zzf;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public FidoCredentialDetails(@SafeParcelable.Param(m796id = 1) String str, @SafeParcelable.Param(m796id = 2) String str2, @SafeParcelable.Param(m796id = 3) byte[] bArr, @SafeParcelable.Param(m796id = 4) byte[] bArr2, @SafeParcelable.Param(m796id = 5) boolean z, @SafeParcelable.Param(m796id = 6) boolean z2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = bArr;
        this.zzd = bArr2;
        this.zze = z;
        this.zzf = z2;
    }

    public static FidoCredentialDetails deserializeFromBytes(byte[] bArr) {
        return (FidoCredentialDetails) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(Object obj) {
        if (obj instanceof FidoCredentialDetails) {
            FidoCredentialDetails fidoCredentialDetails = (FidoCredentialDetails) obj;
            return Objects.equal(this.zza, fidoCredentialDetails.zza) && Objects.equal(this.zzb, fidoCredentialDetails.zzb) && Arrays.equals(this.zzc, fidoCredentialDetails.zzc) && Arrays.equals(this.zzd, fidoCredentialDetails.zzd) && this.zze == fidoCredentialDetails.zze && this.zzf == fidoCredentialDetails.zzf;
        }
        return false;
    }

    public byte[] getCredentialId() {
        return this.zzd;
    }

    public boolean getIsDiscoverable() {
        return this.zze;
    }

    public boolean getIsPaymentCredential() {
        return this.zzf;
    }

    public String getUserDisplayName() {
        return this.zzb;
    }

    public byte[] getUserId() {
        return this.zzc;
    }

    public String getUserName() {
        return this.zza;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, this.zzc, this.zzd, Boolean.valueOf(this.zze), Boolean.valueOf(this.zzf));
    }

    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getUserName(), false);
        SafeParcelWriter.writeString(parcel, 2, getUserDisplayName(), false);
        SafeParcelWriter.writeByteArray(parcel, 3, getUserId(), false);
        SafeParcelWriter.writeByteArray(parcel, 4, getCredentialId(), false);
        SafeParcelWriter.writeBoolean(parcel, 5, getIsDiscoverable());
        SafeParcelWriter.writeBoolean(parcel, 6, getIsPaymentCredential());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
