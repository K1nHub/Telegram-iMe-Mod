package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
@SafeParcelable.Class(creator = "AuthenticationExtensionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class AuthenticationExtensions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthenticationExtensions> CREATOR = new zzd();
    @SafeParcelable.Field(getter = "getFidoAppIdExtension", m1090id = 2)
    private final FidoAppIdExtension zza;
    @SafeParcelable.Field(getter = "getCableAuthenticationExtension", m1090id = 3)
    private final zzp zzb;
    @SafeParcelable.Field(getter = "getUserVerificationMethodExtension", m1090id = 4)
    private final UserVerificationMethodExtension zzc;
    @SafeParcelable.Field(getter = "getGoogleMultiAssertionExtension", m1090id = 5)
    private final zzw zzd;
    @SafeParcelable.Field(getter = "getGoogleSessionIdExtension", m1090id = 6)
    private final zzy zze;
    @SafeParcelable.Field(getter = "getGoogleSilentVerificationExtension", m1090id = 7)
    private final zzaa zzf;
    @SafeParcelable.Field(getter = "getDevicePublicKeyExtension", m1090id = 8)
    private final zzr zzg;
    @SafeParcelable.Field(getter = "getGoogleTunnelServerIdExtension", m1090id = 9)
    private final zzad zzh;
    @SafeParcelable.Field(getter = "getGoogleThirdPartyPaymentExtension", m1090id = 10)
    private final GoogleThirdPartyPaymentExtension zzi;

    /* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
    /* loaded from: classes.dex */
    public static final class Builder {
        private FidoAppIdExtension zza;
        private UserVerificationMethodExtension zzb;
        private zzp zzc;
        private zzw zzd;
        private zzy zze;
        private zzaa zzf;
        private zzr zzg;
        private zzad zzh;
        private GoogleThirdPartyPaymentExtension zzi;

        public Builder() {
        }

        public Builder(AuthenticationExtensions authenticationExtensions) {
            if (authenticationExtensions != null) {
                this.zza = authenticationExtensions.getFidoAppIdExtension();
                this.zzb = authenticationExtensions.getUserVerificationMethodExtension();
                this.zzc = authenticationExtensions.zza();
                this.zzd = authenticationExtensions.zzc();
                this.zze = authenticationExtensions.zzd();
                this.zzf = authenticationExtensions.zze();
                this.zzg = authenticationExtensions.zzb();
                this.zzh = authenticationExtensions.zzg();
                this.zzi = authenticationExtensions.zzf();
            }
        }

        public AuthenticationExtensions build() {
            return new AuthenticationExtensions(this.zza, this.zzc, this.zzb, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
        }

        public Builder setFido2Extension(FidoAppIdExtension fidoAppIdExtension) {
            this.zza = fidoAppIdExtension;
            return this;
        }

        public Builder setGoogleThirdPartyPaymentExtension(GoogleThirdPartyPaymentExtension googleThirdPartyPaymentExtension) {
            this.zzi = googleThirdPartyPaymentExtension;
            return this;
        }

        public Builder setUserVerificationMethodExtension(UserVerificationMethodExtension userVerificationMethodExtension) {
            this.zzb = userVerificationMethodExtension;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public AuthenticationExtensions(@SafeParcelable.Param(m1089id = 2) FidoAppIdExtension fidoAppIdExtension, @SafeParcelable.Param(m1089id = 3) zzp zzpVar, @SafeParcelable.Param(m1089id = 4) UserVerificationMethodExtension userVerificationMethodExtension, @SafeParcelable.Param(m1089id = 5) zzw zzwVar, @SafeParcelable.Param(m1089id = 6) zzy zzyVar, @SafeParcelable.Param(m1089id = 7) zzaa zzaaVar, @SafeParcelable.Param(m1089id = 8) zzr zzrVar, @SafeParcelable.Param(m1089id = 9) zzad zzadVar, @SafeParcelable.Param(m1089id = 10) GoogleThirdPartyPaymentExtension googleThirdPartyPaymentExtension) {
        this.zza = fidoAppIdExtension;
        this.zzc = userVerificationMethodExtension;
        this.zzb = zzpVar;
        this.zzd = zzwVar;
        this.zze = zzyVar;
        this.zzf = zzaaVar;
        this.zzg = zzrVar;
        this.zzh = zzadVar;
        this.zzi = googleThirdPartyPaymentExtension;
    }

    public boolean equals(Object obj) {
        if (obj instanceof AuthenticationExtensions) {
            AuthenticationExtensions authenticationExtensions = (AuthenticationExtensions) obj;
            return Objects.equal(this.zza, authenticationExtensions.zza) && Objects.equal(this.zzb, authenticationExtensions.zzb) && Objects.equal(this.zzc, authenticationExtensions.zzc) && Objects.equal(this.zzd, authenticationExtensions.zzd) && Objects.equal(this.zze, authenticationExtensions.zze) && Objects.equal(this.zzf, authenticationExtensions.zzf) && Objects.equal(this.zzg, authenticationExtensions.zzg) && Objects.equal(this.zzh, authenticationExtensions.zzh) && Objects.equal(this.zzi, authenticationExtensions.zzi);
        }
        return false;
    }

    public FidoAppIdExtension getFidoAppIdExtension() {
        return this.zza;
    }

    public UserVerificationMethodExtension getUserVerificationMethodExtension() {
        return this.zzc;
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh, this.zzi);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, getFidoAppIdExtension(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.zzb, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, getUserVerificationMethodExtension(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zzd, i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.zze, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.zzf, i, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.zzg, i, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.zzh, i, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.zzi, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final zzp zza() {
        return this.zzb;
    }

    public final zzr zzb() {
        return this.zzg;
    }

    public final zzw zzc() {
        return this.zzd;
    }

    public final zzy zzd() {
        return this.zze;
    }

    public final zzaa zze() {
        return this.zzf;
    }

    public final GoogleThirdPartyPaymentExtension zzf() {
        return this.zzi;
    }

    public final zzad zzg() {
        return this.zzh;
    }
}
