package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
/* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
@SafeParcelable.Class(creator = "AuthenticationExtensionsClientOutputsCreator")
/* loaded from: classes.dex */
public class AuthenticationExtensionsClientOutputs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthenticationExtensionsClientOutputs> CREATOR = new zzc();
    @SafeParcelable.Field(getter = "getUvmEntries", m775id = 1)
    private final UvmEntries zza;
    @SafeParcelable.Field(getter = "getDevicePubKey", m775id = 2)
    private final zze zzb;

    /* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class Builder {
        private UvmEntries zza;

        public AuthenticationExtensionsClientOutputs build() {
            return new AuthenticationExtensionsClientOutputs(this.zza, null);
        }

        public Builder setUserVerificationMethodEntries(UvmEntries uvmEntries) {
            this.zza = uvmEntries;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public AuthenticationExtensionsClientOutputs(@SafeParcelable.Param(m774id = 1) UvmEntries uvmEntries, @SafeParcelable.Param(m774id = 2) zze zzeVar) {
        this.zza = uvmEntries;
        this.zzb = zzeVar;
    }

    public static AuthenticationExtensionsClientOutputs deserializeFromBytes(byte[] bArr) {
        return (AuthenticationExtensionsClientOutputs) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(Object obj) {
        if (obj instanceof AuthenticationExtensionsClientOutputs) {
            AuthenticationExtensionsClientOutputs authenticationExtensionsClientOutputs = (AuthenticationExtensionsClientOutputs) obj;
            return Objects.equal(this.zza, authenticationExtensionsClientOutputs.zza) && Objects.equal(this.zzb, authenticationExtensionsClientOutputs.zzb);
        }
        return false;
    }

    public UvmEntries getUvmEntries() {
        return this.zza;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb);
    }

    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, getUvmEntries(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zzb, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
