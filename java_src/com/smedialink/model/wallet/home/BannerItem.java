package com.smedialink.model.wallet.home;

import com.smedialink.model.common.NoChildNode;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BannerItem.kt */
/* loaded from: classes3.dex */
public final class BannerItem extends NoChildNode {
    private final List<SlideItem> items;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ BannerItem copy$default(BannerItem bannerItem, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            list = bannerItem.items;
        }
        return bannerItem.copy(list);
    }

    public final List<SlideItem> component1() {
        return this.items;
    }

    public final BannerItem copy(List<SlideItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        return new BannerItem(items);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof BannerItem) && Intrinsics.areEqual(this.items, ((BannerItem) obj).items);
    }

    public int hashCode() {
        return this.items.hashCode();
    }

    public String toString() {
        return "BannerItem(items=" + this.items + ')';
    }

    public BannerItem(List<SlideItem> items) {
        Intrinsics.checkNotNullParameter(items, "items");
        this.items = items;
    }

    public final List<SlideItem> getItems() {
        return this.items;
    }
}
