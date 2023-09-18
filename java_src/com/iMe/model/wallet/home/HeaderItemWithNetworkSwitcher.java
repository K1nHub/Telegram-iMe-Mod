package com.iMe.model.wallet.home;

import com.iMe.model.common.NoChildNode;
import com.iMe.model.wallet.crypto.NetworkItem;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: HeaderItemWithNetworkSwitcher.kt */
/* loaded from: classes4.dex */
public final class HeaderItemWithNetworkSwitcher extends NoChildNode {
    private boolean isNetworkSwitcherVisible;
    private NetworkItem networkItem;
    private String title;

    public static /* synthetic */ HeaderItemWithNetworkSwitcher copy$default(HeaderItemWithNetworkSwitcher headerItemWithNetworkSwitcher, String str, NetworkItem networkItem, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            str = headerItemWithNetworkSwitcher.title;
        }
        if ((i & 2) != 0) {
            networkItem = headerItemWithNetworkSwitcher.networkItem;
        }
        if ((i & 4) != 0) {
            z = headerItemWithNetworkSwitcher.isNetworkSwitcherVisible;
        }
        return headerItemWithNetworkSwitcher.copy(str, networkItem, z);
    }

    public final String component1() {
        return this.title;
    }

    public final NetworkItem component2() {
        return this.networkItem;
    }

    public final boolean component3() {
        return this.isNetworkSwitcherVisible;
    }

    public final HeaderItemWithNetworkSwitcher copy(String title, NetworkItem networkItem, boolean z) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(networkItem, "networkItem");
        return new HeaderItemWithNetworkSwitcher(title, networkItem, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof HeaderItemWithNetworkSwitcher) {
            HeaderItemWithNetworkSwitcher headerItemWithNetworkSwitcher = (HeaderItemWithNetworkSwitcher) obj;
            return Intrinsics.areEqual(this.title, headerItemWithNetworkSwitcher.title) && Intrinsics.areEqual(this.networkItem, headerItemWithNetworkSwitcher.networkItem) && this.isNetworkSwitcherVisible == headerItemWithNetworkSwitcher.isNetworkSwitcherVisible;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int hashCode = ((this.title.hashCode() * 31) + this.networkItem.hashCode()) * 31;
        boolean z = this.isNetworkSwitcherVisible;
        int i = z;
        if (z != 0) {
            i = 1;
        }
        return hashCode + i;
    }

    public String toString() {
        return "HeaderItemWithNetworkSwitcher(title=" + this.title + ", networkItem=" + this.networkItem + ", isNetworkSwitcherVisible=" + this.isNetworkSwitcherVisible + ')';
    }

    public /* synthetic */ HeaderItemWithNetworkSwitcher(String str, NetworkItem networkItem, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, networkItem, (i & 4) != 0 ? true : z);
    }

    public final String getTitle() {
        return this.title;
    }

    public final void setTitle(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.title = str;
    }

    public final NetworkItem getNetworkItem() {
        return this.networkItem;
    }

    public final void setNetworkItem(NetworkItem networkItem) {
        Intrinsics.checkNotNullParameter(networkItem, "<set-?>");
        this.networkItem = networkItem;
    }

    public final boolean isNetworkSwitcherVisible() {
        return this.isNetworkSwitcherVisible;
    }

    public final void setNetworkSwitcherVisible(boolean z) {
        this.isNetworkSwitcherVisible = z;
    }

    public HeaderItemWithNetworkSwitcher(String title, NetworkItem networkItem, boolean z) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(networkItem, "networkItem");
        this.title = title;
        this.networkItem = networkItem;
        this.isNetworkSwitcherVisible = z;
    }
}
