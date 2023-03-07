package com.smedialink.storage.domain.model.catalog;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: CampaignsCursored.kt */
/* loaded from: classes3.dex */
public final class CampaignsCursored {
    private final List<Campaign> items;
    private final CursorMeta meta;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CampaignsCursored copy$default(CampaignsCursored campaignsCursored, List list, CursorMeta cursorMeta, int i, Object obj) {
        if ((i & 1) != 0) {
            list = campaignsCursored.items;
        }
        if ((i & 2) != 0) {
            cursorMeta = campaignsCursored.meta;
        }
        return campaignsCursored.copy(list, cursorMeta);
    }

    public final List<Campaign> component1() {
        return this.items;
    }

    public final CursorMeta component2() {
        return this.meta;
    }

    public final CampaignsCursored copy(List<Campaign> items, CursorMeta meta) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(meta, "meta");
        return new CampaignsCursored(items, meta);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CampaignsCursored) {
            CampaignsCursored campaignsCursored = (CampaignsCursored) obj;
            return Intrinsics.areEqual(this.items, campaignsCursored.items) && Intrinsics.areEqual(this.meta, campaignsCursored.meta);
        }
        return false;
    }

    public int hashCode() {
        return (this.items.hashCode() * 31) + this.meta.hashCode();
    }

    public String toString() {
        return "CampaignsCursored(items=" + this.items + ", meta=" + this.meta + ')';
    }

    public CampaignsCursored(List<Campaign> items, CursorMeta meta) {
        Intrinsics.checkNotNullParameter(items, "items");
        Intrinsics.checkNotNullParameter(meta, "meta");
        this.items = items;
        this.meta = meta;
    }

    public final List<Campaign> getItems() {
        return this.items;
    }

    public final CursorMeta getMeta() {
        return this.meta;
    }
}
