package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* compiled from: com.google.android.gms:play-services-auth@@20.4.0 */
@SafeParcelable.Class(creator = "CredentialRequestCreator")
@Deprecated
/* loaded from: classes.dex */
public final class CredentialRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CredentialRequest> CREATOR = new zbc();
    @SafeParcelable.Field(m797id = 1000)
    final int zba;
    @SafeParcelable.Field(getter = "isPasswordLoginSupported", m797id = 1)
    private final boolean zbb;
    @SafeParcelable.Field(getter = "getAccountTypes", m797id = 2)
    private final String[] zbc;
    @SafeParcelable.Field(getter = "getCredentialPickerConfig", m797id = 3)
    private final CredentialPickerConfig zbd;
    @SafeParcelable.Field(getter = "getCredentialHintPickerConfig", m797id = 4)
    private final CredentialPickerConfig zbe;
    @SafeParcelable.Field(getter = "isIdTokenRequested", m797id = 5)
    private final boolean zbf;
    @SafeParcelable.Field(getter = "getServerClientId", m797id = 6)
    private final String zbg;
    @SafeParcelable.Field(getter = "getIdTokenNonce", m797id = 7)
    private final String zbh;
    @SafeParcelable.Field(getter = "getRequireUserMediation", m797id = 8)
    private final boolean zbi;

    /* compiled from: com.google.android.gms:play-services-auth@@20.4.0 */
    /* loaded from: classes.dex */
    public static final class Builder {
        private boolean zba;
        private String[] zbb;
        private CredentialPickerConfig zbc;
        private CredentialPickerConfig zbd;
        private boolean zbe = false;
        private String zbf = null;
        private String zbg;

        public CredentialRequest build() {
            if (this.zbb == null) {
                this.zbb = new String[0];
            }
            if (this.zba || this.zbb.length != 0) {
                return new CredentialRequest(4, this.zba, this.zbb, this.zbc, this.zbd, this.zbe, this.zbf, this.zbg, false);
            }
            throw new IllegalStateException("At least one authentication method must be specified");
        }

        public Builder setAccountTypes(String... strArr) {
            if (strArr == null) {
                strArr = new String[0];
            }
            this.zbb = strArr;
            return this;
        }

        public Builder setCredentialHintPickerConfig(CredentialPickerConfig credentialPickerConfig) {
            this.zbd = credentialPickerConfig;
            return this;
        }

        public Builder setCredentialPickerConfig(CredentialPickerConfig credentialPickerConfig) {
            this.zbc = credentialPickerConfig;
            return this;
        }

        public Builder setIdTokenNonce(String str) {
            this.zbg = str;
            return this;
        }

        public Builder setIdTokenRequested(boolean z) {
            this.zbe = z;
            return this;
        }

        public Builder setPasswordLoginSupported(boolean z) {
            this.zba = z;
            return this;
        }

        public Builder setServerClientId(String str) {
            this.zbf = str;
            return this;
        }

        @Deprecated
        public Builder setSupportsPasswordLogin(boolean z) {
            setPasswordLoginSupported(z);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public CredentialRequest(@SafeParcelable.Param(m796id = 1000) int i, @SafeParcelable.Param(m796id = 1) boolean z, @SafeParcelable.Param(m796id = 2) String[] strArr, @SafeParcelable.Param(m796id = 3) CredentialPickerConfig credentialPickerConfig, @SafeParcelable.Param(m796id = 4) CredentialPickerConfig credentialPickerConfig2, @SafeParcelable.Param(m796id = 5) boolean z2, @SafeParcelable.Param(m796id = 6) String str, @SafeParcelable.Param(m796id = 7) String str2, @SafeParcelable.Param(m796id = 8) boolean z3) {
        this.zba = i;
        this.zbb = z;
        this.zbc = (String[]) Preconditions.checkNotNull(strArr);
        this.zbd = credentialPickerConfig == null ? new CredentialPickerConfig.Builder().build() : credentialPickerConfig;
        this.zbe = credentialPickerConfig2 == null ? new CredentialPickerConfig.Builder().build() : credentialPickerConfig2;
        if (i < 3) {
            this.zbf = true;
            this.zbg = null;
            this.zbh = null;
        } else {
            this.zbf = z2;
            this.zbg = str;
            this.zbh = str2;
        }
        this.zbi = z3;
    }

    public String[] getAccountTypes() {
        return this.zbc;
    }

    public Set<String> getAccountTypesSet() {
        return new HashSet(Arrays.asList(this.zbc));
    }

    public CredentialPickerConfig getCredentialHintPickerConfig() {
        return this.zbe;
    }

    public CredentialPickerConfig getCredentialPickerConfig() {
        return this.zbd;
    }

    public String getIdTokenNonce() {
        return this.zbh;
    }

    public String getServerClientId() {
        return this.zbg;
    }

    @Deprecated
    public boolean getSupportsPasswordLogin() {
        return isPasswordLoginSupported();
    }

    public boolean isIdTokenRequested() {
        return this.zbf;
    }

    public boolean isPasswordLoginSupported() {
        return this.zbb;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, isPasswordLoginSupported());
        SafeParcelWriter.writeStringArray(parcel, 2, getAccountTypes(), false);
        SafeParcelWriter.writeParcelable(parcel, 3, getCredentialPickerConfig(), i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, getCredentialHintPickerConfig(), i, false);
        SafeParcelWriter.writeBoolean(parcel, 5, isIdTokenRequested());
        SafeParcelWriter.writeString(parcel, 6, getServerClientId(), false);
        SafeParcelWriter.writeString(parcel, 7, getIdTokenNonce(), false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.zbi);
        SafeParcelWriter.writeInt(parcel, 1000, this.zba);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
