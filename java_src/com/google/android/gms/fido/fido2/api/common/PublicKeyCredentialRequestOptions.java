package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
@SafeParcelable.Class(creator = "PublicKeyCredentialRequestOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class PublicKeyCredentialRequestOptions extends RequestOptions {
    public static final Parcelable.Creator<PublicKeyCredentialRequestOptions> CREATOR = new zzaj();
    @SafeParcelable.Field(getter = "getChallenge", m797id = 2)
    private final byte[] zza;
    @SafeParcelable.Field(getter = "getTimeoutSeconds", m797id = 3)
    private final Double zzb;
    @SafeParcelable.Field(getter = "getRpId", m797id = 4)
    private final String zzc;
    @SafeParcelable.Field(getter = "getAllowList", m797id = 5)
    private final List zzd;
    @SafeParcelable.Field(getter = "getRequestId", m797id = 6)
    private final Integer zze;
    @SafeParcelable.Field(getter = "getTokenBinding", m797id = 7)
    private final TokenBinding zzf;
    @SafeParcelable.Field(getter = "getUserVerificationAsString", m797id = 8, type = "java.lang.String")
    private final zzat zzg;
    @SafeParcelable.Field(getter = "getAuthenticationExtensions", m797id = 9)
    private final AuthenticationExtensions zzh;
    @SafeParcelable.Field(getter = "getLongRequestId", m797id = 10)
    private final Long zzi;

    /* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class Builder {
        private byte[] zza;
        private Double zzb;
        private String zzc;
        private List zzd;
        private Integer zze;
        private TokenBinding zzf;
        private zzat zzg;
        private AuthenticationExtensions zzh;

        public Builder() {
        }

        public Builder(PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions) {
            if (publicKeyCredentialRequestOptions != null) {
                this.zza = publicKeyCredentialRequestOptions.getChallenge();
                this.zzb = publicKeyCredentialRequestOptions.getTimeoutSeconds();
                this.zzc = publicKeyCredentialRequestOptions.getRpId();
                this.zzd = publicKeyCredentialRequestOptions.getAllowList();
                this.zze = publicKeyCredentialRequestOptions.getRequestId();
                this.zzf = publicKeyCredentialRequestOptions.getTokenBinding();
                this.zzg = publicKeyCredentialRequestOptions.zza();
                this.zzh = publicKeyCredentialRequestOptions.getAuthenticationExtensions();
            }
        }

        public PublicKeyCredentialRequestOptions build() {
            byte[] bArr = this.zza;
            Double d = this.zzb;
            String str = this.zzc;
            List list = this.zzd;
            Integer num = this.zze;
            TokenBinding tokenBinding = this.zzf;
            zzat zzatVar = this.zzg;
            return new PublicKeyCredentialRequestOptions(bArr, d, str, list, num, tokenBinding, zzatVar == null ? null : zzatVar.toString(), this.zzh, null);
        }

        public Builder setAllowList(List<PublicKeyCredentialDescriptor> list) {
            this.zzd = list;
            return this;
        }

        public Builder setAuthenticationExtensions(AuthenticationExtensions authenticationExtensions) {
            this.zzh = authenticationExtensions;
            return this;
        }

        public Builder setChallenge(byte[] bArr) {
            this.zza = (byte[]) Preconditions.checkNotNull(bArr);
            return this;
        }

        public Builder setRequestId(Integer num) {
            this.zze = num;
            return this;
        }

        public Builder setRpId(String str) {
            this.zzc = (String) Preconditions.checkNotNull(str);
            return this;
        }

        public Builder setTimeoutSeconds(Double d) {
            this.zzb = d;
            return this;
        }

        public Builder setTokenBinding(TokenBinding tokenBinding) {
            this.zzf = tokenBinding;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public PublicKeyCredentialRequestOptions(@SafeParcelable.Param(m796id = 2) byte[] bArr, @SafeParcelable.Param(m796id = 3) Double d, @SafeParcelable.Param(m796id = 4) String str, @SafeParcelable.Param(m796id = 5) List list, @SafeParcelable.Param(m796id = 6) Integer num, @SafeParcelable.Param(m796id = 7) TokenBinding tokenBinding, @SafeParcelable.Param(m796id = 8) String str2, @SafeParcelable.Param(m796id = 9) AuthenticationExtensions authenticationExtensions, @SafeParcelable.Param(m796id = 10) Long l) {
        this.zza = (byte[]) Preconditions.checkNotNull(bArr);
        this.zzb = d;
        this.zzc = (String) Preconditions.checkNotNull(str);
        this.zzd = list;
        this.zze = num;
        this.zzf = tokenBinding;
        this.zzi = l;
        if (str2 != null) {
            try {
                this.zzg = zzat.zza(str2);
            } catch (zzas e) {
                throw new IllegalArgumentException(e);
            }
        } else {
            this.zzg = null;
        }
        this.zzh = authenticationExtensions;
    }

    public static PublicKeyCredentialRequestOptions deserializeFromBytes(byte[] bArr) {
        return (PublicKeyCredentialRequestOptions) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(Object obj) {
        List list;
        List list2;
        if (obj instanceof PublicKeyCredentialRequestOptions) {
            PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions = (PublicKeyCredentialRequestOptions) obj;
            return Arrays.equals(this.zza, publicKeyCredentialRequestOptions.zza) && Objects.equal(this.zzb, publicKeyCredentialRequestOptions.zzb) && Objects.equal(this.zzc, publicKeyCredentialRequestOptions.zzc) && (((list = this.zzd) == null && publicKeyCredentialRequestOptions.zzd == null) || (list != null && (list2 = publicKeyCredentialRequestOptions.zzd) != null && list.containsAll(list2) && publicKeyCredentialRequestOptions.zzd.containsAll(this.zzd))) && Objects.equal(this.zze, publicKeyCredentialRequestOptions.zze) && Objects.equal(this.zzf, publicKeyCredentialRequestOptions.zzf) && Objects.equal(this.zzg, publicKeyCredentialRequestOptions.zzg) && Objects.equal(this.zzh, publicKeyCredentialRequestOptions.zzh) && Objects.equal(this.zzi, publicKeyCredentialRequestOptions.zzi);
        }
        return false;
    }

    public List<PublicKeyCredentialDescriptor> getAllowList() {
        return this.zzd;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public AuthenticationExtensions getAuthenticationExtensions() {
        return this.zzh;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public byte[] getChallenge() {
        return this.zza;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public Integer getRequestId() {
        return this.zze;
    }

    public String getRpId() {
        return this.zzc;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public Double getTimeoutSeconds() {
        return this.zzb;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public TokenBinding getTokenBinding() {
        return this.zzf;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(Arrays.hashCode(this.zza)), this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, getChallenge(), false);
        SafeParcelWriter.writeDoubleObject(parcel, 3, getTimeoutSeconds(), false);
        SafeParcelWriter.writeString(parcel, 4, getRpId(), false);
        SafeParcelWriter.writeTypedList(parcel, 5, getAllowList(), false);
        SafeParcelWriter.writeIntegerObject(parcel, 6, getRequestId(), false);
        SafeParcelWriter.writeParcelable(parcel, 7, getTokenBinding(), i, false);
        zzat zzatVar = this.zzg;
        SafeParcelWriter.writeString(parcel, 8, zzatVar == null ? null : zzatVar.toString(), false);
        SafeParcelWriter.writeParcelable(parcel, 9, getAuthenticationExtensions(), i, false);
        SafeParcelWriter.writeLongObject(parcel, 10, this.zzi, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzat zza() {
        return this.zzg;
    }
}
