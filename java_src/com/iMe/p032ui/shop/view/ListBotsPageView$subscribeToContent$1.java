package com.iMe.p032ui.shop.view;

import com.iMe.bots.domain.model.ShopItem;
import com.iMe.p032ui.shop.NeurobotsStoreActivity;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ListBotsPageView.kt */
/* renamed from: com.iMe.ui.shop.view.ListBotsPageView$subscribeToContent$1 */
/* loaded from: classes3.dex */
public final class ListBotsPageView$subscribeToContent$1 extends Lambda implements Function1<List<? extends ShopItem>, List<? extends ShopItem>> {
    final /* synthetic */ ListBotsPageView this$0;

    /* compiled from: ListBotsPageView.kt */
    /* renamed from: com.iMe.ui.shop.view.ListBotsPageView$subscribeToContent$1$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NeurobotsStoreActivity.StoreTab.values().length];
            try {
                iArr[NeurobotsStoreActivity.StoreTab.POPULAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NeurobotsStoreActivity.StoreTab.FREE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NeurobotsStoreActivity.StoreTab.MY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListBotsPageView$subscribeToContent$1(ListBotsPageView listBotsPageView) {
        super(1);
        this.this$0 = listBotsPageView;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ List<? extends ShopItem> invoke(List<? extends ShopItem> list) {
        return invoke2((List<ShopItem>) list);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final List<ShopItem> invoke2(List<ShopItem> list) {
        NeurobotsStoreActivity.StoreTab storeTab;
        boolean isPopular;
        Intrinsics.checkNotNullParameter(list, "list");
        ListBotsPageView listBotsPageView = this.this$0;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            ShopItem shopItem = (ShopItem) obj;
            storeTab = listBotsPageView.tab;
            int i = WhenMappings.$EnumSwitchMapping$0[storeTab.ordinal()];
            if (i == 1) {
                isPopular = NeurobotsStoreActivity.Companion.isPopular(shopItem.getTags());
            } else if (i == 2) {
                isPopular = NeurobotsStoreActivity.Companion.isFree(shopItem.getSku());
            } else {
                isPopular = i != 3 ? false : NeurobotsStoreActivity.Companion.isMy(shopItem.getStatus());
            }
            if (isPopular) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
