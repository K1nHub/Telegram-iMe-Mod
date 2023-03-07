package com.smedialink.p031ui.shop.view.model;

import com.smedialink.bots.domain.model.ShopItem;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DisplayingBots.kt */
/* renamed from: com.smedialink.ui.shop.view.model.DisplayingBots */
/* loaded from: classes3.dex */
public final class DisplayingBots {
    private final List<ShopItem> items;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DisplayingBots) && Intrinsics.areEqual(this.items, ((DisplayingBots) obj).items);
    }

    public int hashCode() {
        return this.items.hashCode();
    }

    public String toString() {
        return "DisplayingBots(items=" + this.items + ')';
    }

    public DisplayingBots(List<ShopItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
    }

    public final List<ShopItem> getItems() {
        return this.items;
    }
}
