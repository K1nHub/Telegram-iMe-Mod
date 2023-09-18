package com.trustwallet.walletconnect.models;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: WCPeerMeta.kt */
/* loaded from: classes6.dex */
public final class WCPeerMeta {
    private final String description;
    private final List<String> icons;
    private final String name;
    private final String url;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof WCPeerMeta) {
            WCPeerMeta wCPeerMeta = (WCPeerMeta) obj;
            return Intrinsics.areEqual(this.name, wCPeerMeta.name) && Intrinsics.areEqual(this.url, wCPeerMeta.url) && Intrinsics.areEqual(this.description, wCPeerMeta.description) && Intrinsics.areEqual(this.icons, wCPeerMeta.icons);
        }
        return false;
    }

    public int hashCode() {
        int hashCode = ((this.name.hashCode() * 31) + this.url.hashCode()) * 31;
        String str = this.description;
        return ((hashCode + (str == null ? 0 : str.hashCode())) * 31) + this.icons.hashCode();
    }

    public String toString() {
        return "WCPeerMeta(name=" + this.name + ", url=" + this.url + ", description=" + this.description + ", icons=" + this.icons + ')';
    }

    public WCPeerMeta(String name, String url, String str, List<String> icons) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(icons, "icons");
        this.name = name;
        this.url = url;
        this.description = str;
        this.icons = icons;
    }

    public final String getName() {
        return this.name;
    }

    public final String getUrl() {
        return this.url;
    }

    public final String getDescription() {
        return this.description;
    }

    public /* synthetic */ WCPeerMeta(String str, String str2, String str3, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i & 4) != 0 ? null : str3, (i & 8) != 0 ? CollectionsKt__CollectionsJVMKt.listOf("") : list);
    }

    public final List<String> getIcons() {
        return this.icons;
    }
}
