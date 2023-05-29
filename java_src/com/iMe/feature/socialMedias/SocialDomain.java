package com.iMe.feature.socialMedias;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialDomain.kt */
/* loaded from: classes3.dex */
public final class SocialDomain {
    private boolean hasUpdateAccess;
    private final List<SocialNetwork> socialNetworks;

    public SocialDomain() {
        this(false, null, 3, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SocialDomain copy$default(SocialDomain socialDomain, boolean z, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            z = socialDomain.hasUpdateAccess;
        }
        if ((i & 2) != 0) {
            list = socialDomain.socialNetworks;
        }
        return socialDomain.copy(z, list);
    }

    public final SocialDomain copy(boolean z, List<SocialNetwork> socialNetworks) {
        Intrinsics.checkNotNullParameter(socialNetworks, "socialNetworks");
        return new SocialDomain(z, socialNetworks);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SocialDomain) {
            SocialDomain socialDomain = (SocialDomain) obj;
            return this.hasUpdateAccess == socialDomain.hasUpdateAccess && Intrinsics.areEqual(this.socialNetworks, socialDomain.socialNetworks);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    public int hashCode() {
        boolean z = this.hasUpdateAccess;
        ?? r0 = z;
        if (z) {
            r0 = 1;
        }
        return (r0 * 31) + this.socialNetworks.hashCode();
    }

    public String toString() {
        return "SocialDomain(hasUpdateAccess=" + this.hasUpdateAccess + ", socialNetworks=" + this.socialNetworks + ')';
    }

    public SocialDomain(boolean z, List<SocialNetwork> socialNetworks) {
        Intrinsics.checkNotNullParameter(socialNetworks, "socialNetworks");
        this.hasUpdateAccess = z;
        this.socialNetworks = socialNetworks;
    }

    public final boolean getHasUpdateAccess() {
        return this.hasUpdateAccess;
    }

    public /* synthetic */ SocialDomain(boolean z, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? new ArrayList() : list);
    }

    public final List<SocialNetwork> getSocialNetworks() {
        return this.socialNetworks;
    }
}
