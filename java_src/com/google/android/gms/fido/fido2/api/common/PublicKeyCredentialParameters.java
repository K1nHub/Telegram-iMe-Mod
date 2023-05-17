package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fido.fido2.api.common.COSEAlgorithmIdentifier;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialType;
/* compiled from: com.google.android.gms:play-services-fido@@19.0.0 */
@SafeParcelable.Class(creator = "PublicKeyCredentialParametersCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class PublicKeyCredentialParameters extends AbstractSafeParcelable {
    public static final Parcelable.Creator<PublicKeyCredentialParameters> CREATOR = new zzai();
    @SafeParcelable.Field(getter = "getTypeAsString", m779id = 2, type = "java.lang.String")
    private final PublicKeyCredentialType zza;
    @SafeParcelable.Field(getter = "getAlgorithmIdAsInteger", m779id = 3, type = "java.lang.Integer")
    private final COSEAlgorithmIdentifier zzb;

    @SafeParcelable.Constructor
    public PublicKeyCredentialParameters(@SafeParcelable.Param(m778id = 2) String str, @SafeParcelable.Param(m778id = 3) int i) {
        Preconditions.checkNotNull(str);
        try {
            this.zza = PublicKeyCredentialType.fromString(str);
            Preconditions.checkNotNull(Integer.valueOf(i));
            try {
                this.zzb = COSEAlgorithmIdentifier.fromCoseValue(i);
            } catch (COSEAlgorithmIdentifier.UnsupportedAlgorithmIdentifierException e) {
                throw new IllegalArgumentException(e);
            }
        } catch (PublicKeyCredentialType.UnsupportedPublicKeyCredTypeException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public boolean equals(Object obj) {
        if (obj instanceof PublicKeyCredentialParameters) {
            PublicKeyCredentialParameters publicKeyCredentialParameters = (PublicKeyCredentialParameters) obj;
            return this.zza.equals(publicKeyCredentialParameters.zza) && this.zzb.equals(publicKeyCredentialParameters.zzb);
        }
        return false;
    }

    public COSEAlgorithmIdentifier getAlgorithm() {
        return this.zzb;
    }

    public int getAlgorithmIdAsInteger() {
        return this.zzb.toCoseValue();
    }

    public PublicKeyCredentialType getType() {
        return this.zza;
    }

    public String getTypeAsString() {
        return this.zza.toString();
    }

    public int hashCode() {
        return Objects.hashCode(this.zza, this.zzb);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, getTypeAsString(), false);
        SafeParcelWriter.writeIntegerObject(parcel, 3, Integer.valueOf(getAlgorithmIdAsInteger()), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
