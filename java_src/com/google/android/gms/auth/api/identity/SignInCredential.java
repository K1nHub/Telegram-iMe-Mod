package com.google.android.gms.auth.api.identity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredential;
/* compiled from: com.google.android.gms:play-services-auth@@20.4.0 */
@SafeParcelable.Class(creator = "SignInCredentialCreator")
/* loaded from: classes.dex */
public final class SignInCredential extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SignInCredential> CREATOR = new zbn();
    @SafeParcelable.Field(getter = "getId", m779id = 1)
    private final String zba;
    @SafeParcelable.Field(getter = "getDisplayName", m779id = 2)
    private final String zbb;
    @SafeParcelable.Field(getter = "getGivenName", m779id = 3)
    private final String zbc;
    @SafeParcelable.Field(getter = "getFamilyName", m779id = 4)
    private final String zbd;
    @SafeParcelable.Field(getter = "getProfilePictureUri", m779id = 5)
    private final Uri zbe;
    @SafeParcelable.Field(getter = "getPassword", m779id = 6)
    private final String zbf;
    @SafeParcelable.Field(getter = "getGoogleIdToken", m779id = 7)
    private final String zbg;
    @SafeParcelable.Field(getter = "getPhoneNumber", m779id = 8)
    private final String zbh;
    @SafeParcelable.Field(getter = "getPublicKeyCredential", m779id = 9)
    private final PublicKeyCredential zbi;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public SignInCredential(@SafeParcelable.Param(m778id = 1) String str, @SafeParcelable.Param(m778id = 2) String str2, @SafeParcelable.Param(m778id = 3) String str3, @SafeParcelable.Param(m778id = 4) String str4, @SafeParcelable.Param(m778id = 5) Uri uri, @SafeParcelable.Param(m778id = 6) String str5, @SafeParcelable.Param(m778id = 7) String str6, @SafeParcelable.Param(m778id = 8) String str7, @SafeParcelable.Param(m778id = 9) PublicKeyCredential publicKeyCredential) {
        this.zba = Preconditions.checkNotEmpty(str);
        this.zbb = str2;
        this.zbc = str3;
        this.zbd = str4;
        this.zbe = uri;
        this.zbf = str5;
        this.zbg = str6;
        this.zbh = str7;
        this.zbi = publicKeyCredential;
    }

    public boolean equals(Object obj) {
        if (obj instanceof SignInCredential) {
            SignInCredential signInCredential = (SignInCredential) obj;
            return Objects.equal(this.zba, signInCredential.zba) && Objects.equal(this.zbb, signInCredential.zbb) && Objects.equal(this.zbc, signInCredential.zbc) && Objects.equal(this.zbd, signInCredential.zbd) && Objects.equal(this.zbe, signInCredential.zbe) && Objects.equal(this.zbf, signInCredential.zbf) && Objects.equal(this.zbg, signInCredential.zbg) && Objects.equal(this.zbh, signInCredential.zbh) && Objects.equal(this.zbi, signInCredential.zbi);
        }
        return false;
    }

    public String getDisplayName() {
        return this.zbb;
    }

    public String getFamilyName() {
        return this.zbd;
    }

    public String getGivenName() {
        return this.zbc;
    }

    public String getGoogleIdToken() {
        return this.zbg;
    }

    public String getId() {
        return this.zba;
    }

    public String getPassword() {
        return this.zbf;
    }

    public String getPhoneNumber() {
        return this.zbh;
    }

    public Uri getProfilePictureUri() {
        return this.zbe;
    }

    public PublicKeyCredential getPublicKeyCredential() {
        return this.zbi;
    }

    public int hashCode() {
        return Objects.hashCode(this.zba, this.zbb, this.zbc, this.zbd, this.zbe, this.zbf, this.zbg, this.zbh, this.zbi);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getId(), false);
        SafeParcelWriter.writeString(parcel, 2, getDisplayName(), false);
        SafeParcelWriter.writeString(parcel, 3, getGivenName(), false);
        SafeParcelWriter.writeString(parcel, 4, getFamilyName(), false);
        SafeParcelWriter.writeParcelable(parcel, 5, getProfilePictureUri(), i, false);
        SafeParcelWriter.writeString(parcel, 6, getPassword(), false);
        SafeParcelWriter.writeString(parcel, 7, getGoogleIdToken(), false);
        SafeParcelWriter.writeString(parcel, 8, getPhoneNumber(), false);
        SafeParcelWriter.writeParcelable(parcel, 9, getPublicKeyCredential(), i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
