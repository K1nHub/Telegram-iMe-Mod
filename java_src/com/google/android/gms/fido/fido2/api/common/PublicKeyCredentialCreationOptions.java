package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelableSerializer;
import com.google.android.gms.fido.fido2.api.common.AttestationConveyancePreference;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
@SafeParcelable.Class(creator = "PublicKeyCredentialCreationOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class PublicKeyCredentialCreationOptions extends RequestOptions {
    public static final Parcelable.Creator<PublicKeyCredentialCreationOptions> CREATOR = new zzaf();
    @SafeParcelable.Field(getter = "getRp", m1090id = 2)
    private final PublicKeyCredentialRpEntity zza;
    @SafeParcelable.Field(getter = "getUser", m1090id = 3)
    private final PublicKeyCredentialUserEntity zzb;
    @SafeParcelable.Field(getter = "getChallenge", m1090id = 4)
    private final byte[] zzc;
    @SafeParcelable.Field(getter = "getParameters", m1090id = 5)
    private final List zzd;
    @SafeParcelable.Field(getter = "getTimeoutSeconds", m1090id = 6)
    private final Double zze;
    @SafeParcelable.Field(getter = "getExcludeList", m1090id = 7)
    private final List zzf;
    @SafeParcelable.Field(getter = "getAuthenticatorSelection", m1090id = 8)
    private final AuthenticatorSelectionCriteria zzg;
    @SafeParcelable.Field(getter = "getRequestId", m1090id = 9)
    private final Integer zzh;
    @SafeParcelable.Field(getter = "getTokenBinding", m1090id = 10)
    private final TokenBinding zzi;
    @SafeParcelable.Field(getter = "getAttestationConveyancePreferenceAsString", m1090id = 11, type = "java.lang.String")
    private final AttestationConveyancePreference zzj;
    @SafeParcelable.Field(getter = "getAuthenticationExtensions", m1090id = 12)
    private final AuthenticationExtensions zzk;

    /* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class Builder {
        private PublicKeyCredentialRpEntity zza;
        private PublicKeyCredentialUserEntity zzb;
        private byte[] zzc;
        private List zzd;
        private Double zze;
        private List zzf;
        private AuthenticatorSelectionCriteria zzg;
        private Integer zzh;
        private TokenBinding zzi;
        private AttestationConveyancePreference zzj;
        private AuthenticationExtensions zzk;

        public PublicKeyCredentialCreationOptions build() {
            PublicKeyCredentialRpEntity publicKeyCredentialRpEntity = this.zza;
            PublicKeyCredentialUserEntity publicKeyCredentialUserEntity = this.zzb;
            byte[] bArr = this.zzc;
            List list = this.zzd;
            Double d = this.zze;
            List list2 = this.zzf;
            AuthenticatorSelectionCriteria authenticatorSelectionCriteria = this.zzg;
            Integer num = this.zzh;
            TokenBinding tokenBinding = this.zzi;
            AttestationConveyancePreference attestationConveyancePreference = this.zzj;
            return new PublicKeyCredentialCreationOptions(publicKeyCredentialRpEntity, publicKeyCredentialUserEntity, bArr, list, d, list2, authenticatorSelectionCriteria, num, tokenBinding, attestationConveyancePreference == null ? null : attestationConveyancePreference.toString(), this.zzk);
        }

        public Builder setAttestationConveyancePreference(AttestationConveyancePreference attestationConveyancePreference) {
            this.zzj = attestationConveyancePreference;
            return this;
        }

        public Builder setAuthenticationExtensions(AuthenticationExtensions authenticationExtensions) {
            this.zzk = authenticationExtensions;
            return this;
        }

        public Builder setAuthenticatorSelection(AuthenticatorSelectionCriteria authenticatorSelectionCriteria) {
            this.zzg = authenticatorSelectionCriteria;
            return this;
        }

        public Builder setChallenge(byte[] bArr) {
            this.zzc = (byte[]) Preconditions.checkNotNull(bArr);
            return this;
        }

        public Builder setExcludeList(List<PublicKeyCredentialDescriptor> list) {
            this.zzf = list;
            return this;
        }

        public Builder setParameters(List<PublicKeyCredentialParameters> list) {
            this.zzd = (List) Preconditions.checkNotNull(list);
            return this;
        }

        public Builder setRequestId(Integer num) {
            this.zzh = num;
            return this;
        }

        public Builder setRp(PublicKeyCredentialRpEntity publicKeyCredentialRpEntity) {
            this.zza = (PublicKeyCredentialRpEntity) Preconditions.checkNotNull(publicKeyCredentialRpEntity);
            return this;
        }

        public Builder setTimeoutSeconds(Double d) {
            this.zze = d;
            return this;
        }

        public Builder setTokenBinding(TokenBinding tokenBinding) {
            this.zzi = tokenBinding;
            return this;
        }

        public Builder setUser(PublicKeyCredentialUserEntity publicKeyCredentialUserEntity) {
            this.zzb = (PublicKeyCredentialUserEntity) Preconditions.checkNotNull(publicKeyCredentialUserEntity);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public PublicKeyCredentialCreationOptions(@SafeParcelable.Param(m1089id = 2) PublicKeyCredentialRpEntity publicKeyCredentialRpEntity, @SafeParcelable.Param(m1089id = 3) PublicKeyCredentialUserEntity publicKeyCredentialUserEntity, @SafeParcelable.Param(m1089id = 4) byte[] bArr, @SafeParcelable.Param(m1089id = 5) List list, @SafeParcelable.Param(m1089id = 6) Double d, @SafeParcelable.Param(m1089id = 7) List list2, @SafeParcelable.Param(m1089id = 8) AuthenticatorSelectionCriteria authenticatorSelectionCriteria, @SafeParcelable.Param(m1089id = 9) Integer num, @SafeParcelable.Param(m1089id = 10) TokenBinding tokenBinding, @SafeParcelable.Param(m1089id = 11) String str, @SafeParcelable.Param(m1089id = 12) AuthenticationExtensions authenticationExtensions) {
        this.zza = (PublicKeyCredentialRpEntity) Preconditions.checkNotNull(publicKeyCredentialRpEntity);
        this.zzb = (PublicKeyCredentialUserEntity) Preconditions.checkNotNull(publicKeyCredentialUserEntity);
        this.zzc = (byte[]) Preconditions.checkNotNull(bArr);
        this.zzd = (List) Preconditions.checkNotNull(list);
        this.zze = d;
        this.zzf = list2;
        this.zzg = authenticatorSelectionCriteria;
        this.zzh = num;
        this.zzi = tokenBinding;
        if (str != null) {
            try {
                this.zzj = AttestationConveyancePreference.fromString(str);
            } catch (AttestationConveyancePreference.UnsupportedAttestationConveyancePreferenceException e) {
                throw new IllegalArgumentException(e);
            }
        } else {
            this.zzj = null;
        }
        this.zzk = authenticationExtensions;
    }

    public static PublicKeyCredentialCreationOptions deserializeFromBytes(byte[] bArr) {
        return (PublicKeyCredentialCreationOptions) SafeParcelableSerializer.deserializeFromBytes(bArr, CREATOR);
    }

    public boolean equals(Object obj) {
        List list;
        List list2;
        if (obj instanceof PublicKeyCredentialCreationOptions) {
            PublicKeyCredentialCreationOptions publicKeyCredentialCreationOptions = (PublicKeyCredentialCreationOptions) obj;
            return Objects.equal(this.zza, publicKeyCredentialCreationOptions.zza) && Objects.equal(this.zzb, publicKeyCredentialCreationOptions.zzb) && Arrays.equals(this.zzc, publicKeyCredentialCreationOptions.zzc) && Objects.equal(this.zze, publicKeyCredentialCreationOptions.zze) && this.zzd.containsAll(publicKeyCredentialCreationOptions.zzd) && publicKeyCredentialCreationOptions.zzd.containsAll(this.zzd) && (((list = this.zzf) == null && publicKeyCredentialCreationOptions.zzf == null) || (list != null && (list2 = publicKeyCredentialCreationOptions.zzf) != null && list.containsAll(list2) && publicKeyCredentialCreationOptions.zzf.containsAll(this.zzf))) && Objects.equal(this.zzg, publicKeyCredentialCreationOptions.zzg) && Objects.equal(this.zzh, publicKeyCredentialCreationOptions.zzh) && Objects.equal(this.zzi, publicKeyCredentialCreationOptions.zzi) && Objects.equal(this.zzj, publicKeyCredentialCreationOptions.zzj) && Objects.equal(this.zzk, publicKeyCredentialCreationOptions.zzk);
        }
        return false;
    }

    public AttestationConveyancePreference getAttestationConveyancePreference() {
        return this.zzj;
    }

    public String getAttestationConveyancePreferenceAsString() {
        AttestationConveyancePreference attestationConveyancePreference = this.zzj;
        if (attestationConveyancePreference == null) {
            return null;
        }
        return attestationConveyancePreference.toString();
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public AuthenticationExtensions getAuthenticationExtensions() {
        return this.zzk;
    }

    public AuthenticatorSelectionCriteria getAuthenticatorSelection() {
        return this.zzg;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public byte[] getChallenge() {
        return this.zzc;
    }

    public List<PublicKeyCredentialDescriptor> getExcludeList() {
        return this.zzf;
    }

    public List<PublicKeyCredentialParameters> getParameters() {
        return this.zzd;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public Integer getRequestId() {
        return this.zzh;
    }

    public PublicKeyCredentialRpEntity getRp() {
        return this.zza;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public Double getTimeoutSeconds() {
        return this.zze;
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public TokenBinding getTokenBinding() {
        return this.zzi;
    }

    public PublicKeyCredentialUserEntity getUser() {
        return this.zzb;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, Integer.valueOf(Arrays.hashCode(this.zzc)), this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi, this.zzj, this.zzk);
    }

    @Override // com.google.android.gms.fido.fido2.api.common.RequestOptions
    public byte[] serializeToBytes() {
        return SafeParcelableSerializer.serializeToBytes(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getRp(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, getUser(), i, false);
        SafeParcelWriter.writeByteArray(parcel, 4, getChallenge(), false);
        SafeParcelWriter.writeTypedList(parcel, 5, getParameters(), false);
        SafeParcelWriter.writeDoubleObject(parcel, 6, getTimeoutSeconds(), false);
        SafeParcelWriter.writeTypedList(parcel, 7, getExcludeList(), false);
        SafeParcelWriter.writeParcelable(parcel, 8, getAuthenticatorSelection(), i, false);
        SafeParcelWriter.writeIntegerObject(parcel, 9, getRequestId(), false);
        SafeParcelWriter.writeParcelable(parcel, 10, getTokenBinding(), i, false);
        SafeParcelWriter.writeString(parcel, 11, getAttestationConveyancePreferenceAsString(), false);
        SafeParcelWriter.writeParcelable(parcel, 12, getAuthenticationExtensions(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
