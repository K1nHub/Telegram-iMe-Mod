package com.smedialink.model.wallet.home;

import com.smedialink.model.common.NoChildNode;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HeaderItemWithNetworkSwitcher.kt */
/* loaded from: classes3.dex */
public final class HeaderItemWithNetworkSwitcher extends NoChildNode {
    private boolean isNetworkSwitcherVisible;
    private NetworkType networkType;
    private String title;

    public static /* synthetic */ HeaderItemWithNetworkSwitcher copy$default(HeaderItemWithNetworkSwitcher headerItemWithNetworkSwitcher, String str, NetworkType networkType, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = headerItemWithNetworkSwitcher.title;
        }
        if ((i & 2) != 0) {
            networkType = headerItemWithNetworkSwitcher.networkType;
        }
        if ((i & 4) != 0) {
            z = headerItemWithNetworkSwitcher.isNetworkSwitcherVisible;
        }
        return headerItemWithNetworkSwitcher.copy(str, networkType, z);
    }

    public final String component1() {
        return this.title;
    }

    public final NetworkType component2() {
        return this.networkType;
    }

    public final boolean component3() {
        return this.isNetworkSwitcherVisible;
    }

    public final HeaderItemWithNetworkSwitcher copy(String title, NetworkType networkType, boolean z) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        return new HeaderItemWithNetworkSwitcher(title, networkType, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HeaderItemWithNetworkSwitcher) {
            HeaderItemWithNetworkSwitcher headerItemWithNetworkSwitcher = (HeaderItemWithNetworkSwitcher) obj;
            return Intrinsics.areEqual(this.title, headerItemWithNetworkSwitcher.title) && this.networkType == headerItemWithNetworkSwitcher.networkType && this.isNetworkSwitcherVisible == headerItemWithNetworkSwitcher.isNetworkSwitcherVisible;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.title.hashCode() * 31) + this.networkType.hashCode()) * 31;
        boolean z = this.isNetworkSwitcherVisible;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "HeaderItemWithNetworkSwitcher(title=" + this.title + ", networkType=" + this.networkType + ", isNetworkSwitcherVisible=" + this.isNetworkSwitcherVisible + ')';
    }

    public /* synthetic */ HeaderItemWithNetworkSwitcher(String str, NetworkType networkType, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, networkType, (i & 4) != 0 ? true : z);
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setTitle(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final NetworkType getNetworkType() {
        return this.networkType;
    }

    public final void setNetworkType(NetworkType networkType) {
        Intrinsics.checkNotNullParameter(networkType, "<set-?>");
        this.networkType = networkType;
    }

    public final boolean isNetworkSwitcherVisible() {
        return this.isNetworkSwitcherVisible;
    }

    public final void setNetworkSwitcherVisible(boolean z) {
        this.isNetworkSwitcherVisible = z;
    }

    public HeaderItemWithNetworkSwitcher(String title, NetworkType networkType, boolean z) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(networkType, "networkType");
        this.title = title;
        this.networkType = networkType;
        this.isNetworkSwitcherVisible = z;
    }
}
