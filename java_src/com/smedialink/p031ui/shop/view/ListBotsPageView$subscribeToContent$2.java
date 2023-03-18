package com.smedialink.p031ui.shop.view;

import com.smedialink.bots.domain.model.ShopItem;
import com.smedialink.p031ui.shop.NeurobotsStoreActivity;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ListBotsPageView.kt */
/* renamed from: com.smedialink.ui.shop.view.ListBotsPageView$subscribeToContent$2 */
/* loaded from: classes3.dex */
public final class ListBotsPageView$subscribeToContent$2 extends Lambda implements Function1<List<? extends ShopItem>, List<? extends ShopItem>> {
    final /* synthetic */ ListBotsPageView this$0;

    /* compiled from: ListBotsPageView.kt */
    /* renamed from: com.smedialink.ui.shop.view.ListBotsPageView$subscribeToContent$2$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NeurobotsStoreActivity.StoreTab.values().length];
            try {
                iArr[NeurobotsStoreActivity.StoreTab.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NeurobotsStoreActivity.StoreTab.POPULAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListBotsPageView$subscribeToContent$2(ListBotsPageView listBotsPageView) {
        super(1);
        this.this$0 = listBotsPageView;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ List<? extends ShopItem> invoke(List<? extends ShopItem> list) {
        return invoke2((List<ShopItem>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final List<ShopItem> invoke2(List<ShopItem> it) {
        NeurobotsStoreActivity.StoreTab storeTab;
        List<ShopItem> sortedWith;
        List<ShopItem> sortedWith2;
        Intrinsics.checkNotNullParameter(it, "it");
        storeTab = this.this$0.tab;
        int i = WhenMappings.$EnumSwitchMapping$0[storeTab.ordinal()];
        if (i == 1) {
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(it, new Comparator() { // from class: com.smedialink.ui.shop.view.ListBotsPageView$subscribeToContent$2$invoke$$inlined$sortedByDescending$1
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((ShopItem) t2).getInstalls()), Long.valueOf(((ShopItem) t).getInstalls()));
                    return compareValues;
                }
            });
            return sortedWith;
        } else if (i != 2) {
            return it;
        } else {
            sortedWith2 = CollectionsKt___CollectionsKt.sortedWith(it, new Comparator() { // from class: com.smedialink.ui.shop.view.ListBotsPageView$subscribeToContent$2$invoke$$inlined$sortedByDescending$2
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((ShopItem) t2).getInstalls()), Long.valueOf(((ShopItem) t).getInstalls()));
                    return compareValues;
                }
            });
            return sortedWith2;
        }
    }
}
