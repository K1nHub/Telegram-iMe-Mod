package com.iMe.feature.socialMedias.webScreen;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavDirections;
import com.iMe.feature.socialMedias.SocialNetwork;
import java.io.Serializable;
import java.util.HashMap;
import org.telegram.messenger.C3295R;
/* loaded from: classes3.dex */
public class SocialWebScreenDirections {
    public static ToSocialWeb toSocialWeb(SocialNetwork socialNetwork) {
        return new ToSocialWeb(socialNetwork);
    }

    /* loaded from: classes3.dex */
    public static class ToSocialWeb implements NavDirections {
        private final HashMap arguments;

        private ToSocialWeb(SocialNetwork socialNetwork) {
            HashMap hashMap = new HashMap();
            this.arguments = hashMap;
            if (socialNetwork == null) {
                throw new IllegalArgumentException("Argument \"socialNetwork\" is marked as non-null but was passed a null value.");
            }
            hashMap.put("socialNetwork", socialNetwork);
        }

        @Override // androidx.navigation.NavDirections
        public Bundle getArguments() {
            Bundle bundle = new Bundle();
            if (this.arguments.containsKey("socialNetwork")) {
                SocialNetwork socialNetwork = (SocialNetwork) this.arguments.get("socialNetwork");
                if (Parcelable.class.isAssignableFrom(SocialNetwork.class) || socialNetwork == null) {
                    bundle.putParcelable("socialNetwork", (Parcelable) Parcelable.class.cast(socialNetwork));
                } else if (Serializable.class.isAssignableFrom(SocialNetwork.class)) {
                    bundle.putSerializable("socialNetwork", (Serializable) Serializable.class.cast(socialNetwork));
                } else {
                    throw new UnsupportedOperationException(SocialNetwork.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
                }
            }
            return bundle;
        }

        @Override // androidx.navigation.NavDirections
        public int getActionId() {
            return C3295R.C3298id.toSocialWeb;
        }

        public SocialNetwork getSocialNetwork() {
            return (SocialNetwork) this.arguments.get("socialNetwork");
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ToSocialWeb.class != obj.getClass()) {
                return false;
            }
            ToSocialWeb toSocialWeb = (ToSocialWeb) obj;
            if (this.arguments.containsKey("socialNetwork") != toSocialWeb.arguments.containsKey("socialNetwork")) {
                return false;
            }
            if (getSocialNetwork() == null ? toSocialWeb.getSocialNetwork() == null : getSocialNetwork().equals(toSocialWeb.getSocialNetwork())) {
                return getActionId() == toSocialWeb.getActionId();
            }
            return false;
        }

        public int hashCode() {
            return (((getSocialNetwork() != null ? getSocialNetwork().hashCode() : 0) + 31) * 31) + getActionId();
        }

        public String toString() {
            return "ToSocialWeb(actionId=" + getActionId() + "){socialNetwork=" + getSocialNetwork() + "}";
        }
    }
}
