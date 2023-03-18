package com.smedialink.p031ui.shop;

import com.smedialink.bots.domain.model.ShopItem;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: NeurobotsStoreActivity.kt */
/* renamed from: com.smedialink.ui.shop.NeurobotsStoreActivity$listenForSearchResults$2 */
/* loaded from: classes3.dex */
final class NeurobotsStoreActivity$listenForSearchResults$2 extends Lambda implements Function1<List<? extends ShopItem>, List<? extends ShopItem>> {
    public static final NeurobotsStoreActivity$listenForSearchResults$2 INSTANCE = new NeurobotsStoreActivity$listenForSearchResults$2();

    NeurobotsStoreActivity$listenForSearchResults$2() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ List<? extends ShopItem> invoke(List<? extends ShopItem> list) {
        return invoke2((List<ShopItem>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final List<ShopItem> invoke2(List<ShopItem> it) {
        List<ShopItem> sortedWith;
        Intrinsics.checkNotNullParameter(it, "it");
        sortedWith = CollectionsKt___CollectionsKt.sortedWith(it, new Comparator() { // from class: com.smedialink.ui.shop.NeurobotsStoreActivity$listenForSearchResults$2$invoke$$inlined$sortedByDescending$1
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                int compareValues;
                compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((ShopItem) t2).getInstalls()), Long.valueOf(((ShopItem) t).getInstalls()));
                return compareValues;
            }
        });
        return sortedWith;
    }
}
