package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-auth@@20.4.0 */
@SafeParcelable.Class(creator = "CredentialCreator")
@SafeParcelable.Reserved({1000})
@Deprecated
/* loaded from: classes.dex */
public class Credential extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Credential> CREATOR = new zba();
    public static final String EXTRA_KEY = "com.google.android.gms.credentials.Credential";
    @SafeParcelable.Field(getter = "getId", m1090id = 1)
    private final String zba;
    @SafeParcelable.Field(getter = "getName", m1090id = 2)
    private final String zbb;
    @SafeParcelable.Field(getter = "getProfilePictureUri", m1090id = 3)
    private final Uri zbc;
    @SafeParcelable.Field(getter = "getIdTokens", m1090id = 4)
    private final List zbd;
    @SafeParcelable.Field(getter = "getPassword", m1090id = 5)
    private final String zbe;
    @SafeParcelable.Field(getter = "getAccountType", m1090id = 6)
    private final String zbf;
    @SafeParcelable.Field(getter = "getGivenName", m1090id = 9)
    private final String zbg;
    @SafeParcelable.Field(getter = "getFamilyName", m1090id = 10)
    private final String zbh;

    /* compiled from: com.google.android.gms:play-services-auth@@20.4.0 */
    @Deprecated
    /* loaded from: classes.dex */
    public static class Builder {
        private final String zba;
        private String zbb;
        private Uri zbc;
        private List zbd;
        private String zbe;
        private String zbf;
        private String zbg;
        private String zbh;

        public Builder(Credential credential) {
            this.zba = credential.zba;
            this.zbb = credential.zbb;
            this.zbc = credential.zbc;
            this.zbd = credential.zbd;
            this.zbe = credential.zbe;
            this.zbf = credential.zbf;
            this.zbg = credential.zbg;
            this.zbh = credential.zbh;
        }

        public Builder(String str) {
            this.zba = str;
        }

        public Credential build() {
            return new Credential(this.zba, this.zbb, this.zbc, this.zbd, this.zbe, this.zbf, this.zbg, this.zbh);
        }

        public Builder setAccountType(String str) {
            this.zbf = str;
            return this;
        }

        public Builder setName(String str) {
            this.zbb = str;
            return this;
        }

        public Builder setPassword(String str) {
            this.zbe = str;
            return this;
        }

        public Builder setProfilePictureUri(Uri uri) {
            this.zbc = uri;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public Credential(@SafeParcelable.Param(m1089id = 1) String str, @SafeParcelable.Param(m1089id = 2) String str2, @SafeParcelable.Param(m1089id = 3) Uri uri, @SafeParcelable.Param(m1089id = 4) List list, @SafeParcelable.Param(m1089id = 5) String str3, @SafeParcelable.Param(m1089id = 6) String str4, @SafeParcelable.Param(m1089id = 9) String str5, @SafeParcelable.Param(m1089id = 10) String str6) {
        List unmodifiableList;
        Boolean bool;
        String trim = ((String) Preconditions.checkNotNull(str, "credential identifier cannot be null")).trim();
        Preconditions.checkNotEmpty(trim, "credential identifier cannot be empty");
        if (str3 == null || !TextUtils.isEmpty(str3)) {
            if (str4 != null) {
                if (TextUtils.isEmpty(str4)) {
                    bool = Boolean.FALSE;
                } else {
                    Uri parse = Uri.parse(str4);
                    if (!parse.isAbsolute() || !parse.isHierarchical() || TextUtils.isEmpty(parse.getScheme()) || TextUtils.isEmpty(parse.getAuthority())) {
                        bool = Boolean.FALSE;
                    } else {
                        boolean z = true;
                        if (!"http".equalsIgnoreCase(parse.getScheme()) && !"https".equalsIgnoreCase(parse.getScheme())) {
                            z = false;
                        }
                        bool = Boolean.valueOf(z);
                    }
                }
                if (!bool.booleanValue()) {
                    throw new IllegalArgumentException("Account type must be a valid Http/Https URI");
                }
            }
            if (TextUtils.isEmpty(str4) || TextUtils.isEmpty(str3)) {
                if (str2 != null && TextUtils.isEmpty(str2.trim())) {
                    str2 = null;
                }
                this.zbb = str2;
                this.zbc = uri;
                if (list == null) {
                    unmodifiableList = Collections.emptyList();
                } else {
                    unmodifiableList = Collections.unmodifiableList(list);
                }
                this.zbd = unmodifiableList;
                this.zba = trim;
                this.zbe = str3;
                this.zbf = str4;
                this.zbg = str5;
                this.zbh = str6;
                return;
            }
            throw new IllegalArgumentException("Password and AccountType are mutually exclusive");
        }
        throw new IllegalArgumentException("Password must not be empty if set");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Credential) {
            Credential credential = (Credential) obj;
            return TextUtils.equals(this.zba, credential.zba) && TextUtils.equals(this.zbb, credential.zbb) && Objects.equal(this.zbc, credential.zbc) && TextUtils.equals(this.zbe, credential.zbe) && TextUtils.equals(this.zbf, credential.zbf);
        }
        return false;
    }

    public String getAccountType() {
        return this.zbf;
    }

    public String getFamilyName() {
        return this.zbh;
    }

    public String getGivenName() {
        return this.zbg;
    }

    public String getId() {
        return this.zba;
    }

    public List<IdToken> getIdTokens() {
        return this.zbd;
    }

    public String getName() {
        return this.zbb;
    }

    public String getPassword() {
        return this.zbe;
    }

    public Uri getProfilePictureUri() {
        return this.zbc;
    }

    public int hashCode() {
        return Objects.hashCode(this.zba, this.zbb, this.zbc, this.zbe, this.zbf);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, getId(), false);
        SafeParcelWriter.writeString(parcel, 2, getName(), false);
        SafeParcelWriter.writeParcelable(parcel, 3, getProfilePictureUri(), i, false);
        SafeParcelWriter.writeTypedList(parcel, 4, getIdTokens(), false);
        SafeParcelWriter.writeString(parcel, 5, getPassword(), false);
        SafeParcelWriter.writeString(parcel, 6, getAccountType(), false);
        SafeParcelWriter.writeString(parcel, 9, getGivenName(), false);
        SafeParcelWriter.writeString(parcel, 10, getFamilyName(), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
