package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
/* compiled from: com.google.android.gms:play-services-auth@@20.4.0 */
@SafeParcelable.Class(creator = "SignInConfigurationCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class SignInConfiguration extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new zbu();
    @SafeParcelable.Field(getter = "getConsumerPkgName", m1090id = 2)
    private final String zba;
    @SafeParcelable.Field(getter = "getGoogleConfig", m1090id = 5)
    private GoogleSignInOptions zbb;

    @SafeParcelable.Constructor
    public SignInConfiguration(@SafeParcelable.Param(m1089id = 2) String str, @SafeParcelable.Param(m1089id = 5) GoogleSignInOptions googleSignInOptions) {
        this.zba = Preconditions.checkNotEmpty(str);
        this.zbb = googleSignInOptions;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SignInConfiguration) {
            SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
            if (this.zba.equals(signInConfiguration.zba)) {
                GoogleSignInOptions googleSignInOptions = this.zbb;
                GoogleSignInOptions googleSignInOptions2 = signInConfiguration.zbb;
                if (googleSignInOptions == null) {
                    if (googleSignInOptions2 == null) {
                        return true;
                    }
                } else if (googleSignInOptions.equals(googleSignInOptions2)) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return new HashAccumulator().addObject(this.zba).addObject(this.zbb).hash();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.zba, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.zbb, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final GoogleSignInOptions zba() {
        return this.zbb;
    }
}
