package com.iMe.feature.socialMedias.webScreen;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.navigation.NavArgs;
import com.iMe.feature.socialMedias.SocialNetwork;
import java.io.Serializable;
import java.util.HashMap;
/* loaded from: classes3.dex */
public class SocialWebScreenArgs implements NavArgs {
    private final HashMap arguments = new HashMap();

    private SocialWebScreenArgs() {
    }

    public static SocialWebScreenArgs fromBundle(Bundle bundle) {
        SocialWebScreenArgs socialWebScreenArgs = new SocialWebScreenArgs();
        bundle.setClassLoader(SocialWebScreenArgs.class.getClassLoader());
        if (bundle.containsKey("socialNetwork")) {
            if (Parcelable.class.isAssignableFrom(SocialNetwork.class) || Serializable.class.isAssignableFrom(SocialNetwork.class)) {
                SocialNetwork socialNetwork = (SocialNetwork) bundle.get("socialNetwork");
                if (socialNetwork == null) {
                    throw new IllegalArgumentException("Argument \"socialNetwork\" is marked as non-null but was passed a null value.");
                }
                socialWebScreenArgs.arguments.put("socialNetwork", socialNetwork);
                return socialWebScreenArgs;
            }
            throw new UnsupportedOperationException(SocialNetwork.class.getName() + " must implement Parcelable or Serializable or must be an Enum.");
        }
        throw new IllegalArgumentException("Required argument \"socialNetwork\" is missing and does not have an android:defaultValue");
    }

    public SocialNetwork getSocialNetwork() {
        return (SocialNetwork) this.arguments.get("socialNetwork");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || SocialWebScreenArgs.class != obj.getClass()) {
            return false;
        }
        SocialWebScreenArgs socialWebScreenArgs = (SocialWebScreenArgs) obj;
        if (this.arguments.containsKey("socialNetwork") != socialWebScreenArgs.arguments.containsKey("socialNetwork")) {
            return false;
        }
        return getSocialNetwork() == null ? socialWebScreenArgs.getSocialNetwork() == null : getSocialNetwork().equals(socialWebScreenArgs.getSocialNetwork());
    }

    public int hashCode() {
        return 31 + (getSocialNetwork() != null ? getSocialNetwork().hashCode() : 0);
    }

    public String toString() {
        return "SocialWebScreenArgs{socialNetwork=" + getSocialNetwork() + "}";
    }
}
