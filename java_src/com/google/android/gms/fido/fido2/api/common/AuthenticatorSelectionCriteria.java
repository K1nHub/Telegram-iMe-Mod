package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fido.fido2.api.common.Attachment;
import com.google.android.gms.fido.fido2.api.common.ResidentKeyRequirement;
/* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
@SafeParcelable.Class(creator = "AuthenticatorSelectionCriteriaCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class AuthenticatorSelectionCriteria extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthenticatorSelectionCriteria> CREATOR = new zzj();
    @SafeParcelable.Field(getter = "getAttachmentAsString", m797id = 2, type = "java.lang.String")
    private final Attachment zza;
    @SafeParcelable.Field(getter = "getRequireResidentKey", m797id = 3)
    private final Boolean zzb;
    @SafeParcelable.Field(getter = "getRequireUserVerificationAsString", m797id = 4, type = "java.lang.String")
    private final zzat zzc;
    @SafeParcelable.Field(getter = "getResidentKeyRequirementAsString", m797id = 5, type = "java.lang.String")
    private final ResidentKeyRequirement zzd;

    /* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
    /* loaded from: classes.dex */
    public static class Builder {
        private Attachment zza;
        private Boolean zzb;
        private ResidentKeyRequirement zzc;

        public AuthenticatorSelectionCriteria build() {
            Attachment attachment = this.zza;
            String attachment2 = attachment == null ? null : attachment.toString();
            Boolean bool = this.zzb;
            ResidentKeyRequirement residentKeyRequirement = this.zzc;
            return new AuthenticatorSelectionCriteria(attachment2, bool, null, residentKeyRequirement == null ? null : residentKeyRequirement.toString());
        }

        public Builder setAttachment(Attachment attachment) {
            this.zza = attachment;
            return this;
        }

        public Builder setRequireResidentKey(Boolean bool) {
            this.zzb = bool;
            return this;
        }

        public Builder setResidentKeyRequirement(ResidentKeyRequirement residentKeyRequirement) {
            this.zzc = residentKeyRequirement;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public AuthenticatorSelectionCriteria(@SafeParcelable.Param(m796id = 2) String str, @SafeParcelable.Param(m796id = 3) Boolean bool, @SafeParcelable.Param(m796id = 4) String str2, @SafeParcelable.Param(m796id = 5) String str3) {
        Attachment fromString;
        ResidentKeyRequirement residentKeyRequirement = null;
        if (str == null) {
            fromString = null;
        } else {
            try {
                fromString = Attachment.fromString(str);
            } catch (Attachment.UnsupportedAttachmentException | ResidentKeyRequirement.UnsupportedResidentKeyRequirementException | zzas e) {
                throw new IllegalArgumentException(e);
            }
        }
        this.zza = fromString;
        this.zzb = bool;
        this.zzc = str2 == null ? null : zzat.zza(str2);
        if (str3 != null) {
            residentKeyRequirement = ResidentKeyRequirement.fromString(str3);
        }
        this.zzd = residentKeyRequirement;
    }

    public boolean equals(Object obj) {
        if (obj instanceof AuthenticatorSelectionCriteria) {
            AuthenticatorSelectionCriteria authenticatorSelectionCriteria = (AuthenticatorSelectionCriteria) obj;
            return Objects.equal(this.zza, authenticatorSelectionCriteria.zza) && Objects.equal(this.zzb, authenticatorSelectionCriteria.zzb) && Objects.equal(this.zzc, authenticatorSelectionCriteria.zzc) && Objects.equal(this.zzd, authenticatorSelectionCriteria.zzd);
        }
        return false;
    }

    public Attachment getAttachment() {
        return this.zza;
    }

    public String getAttachmentAsString() {
        Attachment attachment = this.zza;
        if (attachment == null) {
            return null;
        }
        return attachment.toString();
    }

    public Boolean getRequireResidentKey() {
        return this.zzb;
    }

    public ResidentKeyRequirement getResidentKeyRequirement() {
        return this.zzd;
    }

    public String getResidentKeyRequirementAsString() {
        ResidentKeyRequirement residentKeyRequirement = this.zzd;
        if (residentKeyRequirement == null) {
            return null;
        }
        return residentKeyRequirement.toString();
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, this.zzc, this.zzd);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getAttachmentAsString(), false);
        SafeParcelWriter.writeBooleanObject(parcel, 3, getRequireResidentKey(), false);
        zzat zzatVar = this.zzc;
        SafeParcelWriter.writeString(parcel, 4, zzatVar == null ? null : zzatVar.toString(), false);
        SafeParcelWriter.writeString(parcel, 5, getResidentKeyRequirementAsString(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
