package com.iMe.storage.data.network.model.response.social;

import com.google.gson.annotations.SerializedName;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SocialNetworksRaw.kt */
/* loaded from: classes3.dex */
public final class SocialNetworksRaw {
    @SerializedName("networks")
    private final List<Network> networks;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SocialNetworksRaw copy$default(SocialNetworksRaw socialNetworksRaw, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = socialNetworksRaw.networks;
        }
        return socialNetworksRaw.copy(list);
    }

    public final List<Network> component1() {
        return this.networks;
    }

    public final SocialNetworksRaw copy(List<Network> list) {
        return new SocialNetworksRaw(list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof SocialNetworksRaw) && Intrinsics.areEqual(this.networks, ((SocialNetworksRaw) obj).networks);
    }

    public int hashCode() {
        List<Network> list = this.networks;
        if (list == null) {
            return 0;
        }
        return list.hashCode();
    }

    public String toString() {
        return "SocialNetworksRaw(networks=" + this.networks + ')';
    }

    public SocialNetworksRaw(List<Network> list) {
        this.networks = list;
    }

    public final List<Network> getNetworks() {
        return this.networks;
    }
}
