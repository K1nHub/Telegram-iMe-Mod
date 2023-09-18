package com.iMe.feature.socialMedias.auth;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import com.iMe.feature.socialMedias.SocialAuthDomain;
import java.io.Serializable;
import java.util.HashMap;
/* loaded from: classes4.dex */
public class AuthScreenArgs implements NavArgs {
    private final HashMap arguments = new HashMap();

    private AuthScreenArgs() {
    }

    public static AuthScreenArgs fromBundle(Bundle bundle) {
        AuthScreenArgs authScreenArgs = new AuthScreenArgs();
        bundle.setClassLoader(AuthScreenArgs.class.getClassLoader());
        if (bundle.containsKey("socialAuthDomain")) {
            if (Parcelable.class.isAssignableFrom(SocialAuthDomain.class) || Serializable.class.isAssignableFrom(SocialAuthDomain.class)) {
                SocialAuthDomain socialAuthDomain = (SocialAuthDomain) bundle.get("socialAuthDomain");
                if (socialAuthDomain == null) {
                    throw new IllegalArgumentException("Argument \"socialAuthDomain\" is marked as non-null but was passed a null value.");
                }
                authScreenArgs.arguments.put("socialAuthDomain", socialAuthDomain);
                return authScreenArgs;
            }
            throw new UnsupportedOperationException(SocialAuthDomain.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
        }
        throw new IllegalArgumentException("Required argument \"socialAuthDomain\" is missing and does not have an android:defaultValue");
    }

    public SocialAuthDomain getSocialAuthDomain() {
        return (SocialAuthDomain) this.arguments.get("socialAuthDomain");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AuthScreenArgs.class != obj.getClass()) {
            return false;
        }
        AuthScreenArgs authScreenArgs = (AuthScreenArgs) obj;
        if (this.arguments.containsKey("socialAuthDomain") != authScreenArgs.arguments.containsKey("socialAuthDomain")) {
            return false;
        }
        return getSocialAuthDomain() == null ? authScreenArgs.getSocialAuthDomain() == null : getSocialAuthDomain().equals(authScreenArgs.getSocialAuthDomain());
    }

    public int hashCode() {
        return 31 + (getSocialAuthDomain() != null ? getSocialAuthDomain().hashCode() : 0);
    }

    public String toString() {
        return "AuthScreenArgs{socialAuthDomain=" + getSocialAuthDomain() + "}";
    }
}
