package com.iMe.feature.socialMedias.auth;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavDirections;
import com.iMe.feature.socialMedias.SocialAuthDomain;
import java.io.Serializable;
import java.util.HashMap;
import org.telegram.messenger.C3290R;
/* loaded from: classes3.dex */
public class AuthScreenDirections {
    public static ToSocialAuth toSocialAuth(SocialAuthDomain socialAuthDomain) {
        return new ToSocialAuth(socialAuthDomain);
    }

    /* loaded from: classes3.dex */
    public static class ToSocialAuth implements NavDirections {
        private final HashMap arguments;

        private ToSocialAuth(SocialAuthDomain socialAuthDomain) {
            HashMap hashMap = new HashMap();
            this.arguments = hashMap;
            if (socialAuthDomain == null) {
                throw new IllegalArgumentException("Argument \"socialAuthDomain\" is marked as non-null but was passed a null value.");
            }
            hashMap.put("socialAuthDomain", socialAuthDomain);
        }

        @Override // androidx.navigation.NavDirections
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.arguments.containsKey("socialAuthDomain")) {
                SocialAuthDomain socialAuthDomain = (SocialAuthDomain) this.arguments.get("socialAuthDomain");
                if (Parcelable.class.isAssignableFrom(SocialAuthDomain.class) || socialAuthDomain == null) {
                    bundle.putParcelable("socialAuthDomain", (Parcelable) Parcelable.class.cast(socialAuthDomain));
                } else if (Serializable.class.isAssignableFrom(SocialAuthDomain.class)) {
                    bundle.putSerializable("socialAuthDomain", (Serializable) Serializable.class.cast(socialAuthDomain));
                } else {
                    throw new UnsupportedOperationException(SocialAuthDomain.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                }
            }
            return bundle;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C3290R.C3293id.toSocialAuth;
        }

        public SocialAuthDomain getSocialAuthDomain() {
            return (SocialAuthDomain) this.arguments.get("socialAuthDomain");
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ToSocialAuth.class != obj.getClass()) {
                return false;
            }
            ToSocialAuth toSocialAuth = (ToSocialAuth) obj;
            if (this.arguments.containsKey("socialAuthDomain") != toSocialAuth.arguments.containsKey("socialAuthDomain")) {
                return false;
            }
            if (getSocialAuthDomain() == null ? toSocialAuth.getSocialAuthDomain() == null : getSocialAuthDomain().equals(toSocialAuth.getSocialAuthDomain())) {
                return getActionId() == toSocialAuth.getActionId();
            }
            return false;
        }

        public int hashCode() {
            return (((getSocialAuthDomain() != null ? getSocialAuthDomain().hashCode() : 0) + 31) * 31) + getActionId();
        }

        public String toString() {
            return "ToSocialAuth(actionId=" + getActionId() + "){socialAuthDomain=" + getSocialAuthDomain() + "}";
        }
    }
}
