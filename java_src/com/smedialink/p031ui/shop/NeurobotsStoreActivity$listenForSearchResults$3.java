package com.smedialink.p031ui.shop;

import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.smedialink.bots.domain.model.ShopItem;
import com.smedialink.p031ui.shop.view.adapter.BotsAdapter;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.Components.RecyclerListView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NeurobotsStoreActivity.kt */
/* renamed from: com.smedialink.ui.shop.NeurobotsStoreActivity$listenForSearchResults$3 */
/* loaded from: classes3.dex */
public final class NeurobotsStoreActivity$listenForSearchResults$3 extends Lambda implements Function1<List<? extends ShopItem>, Unit> {
    final /* synthetic */ NeurobotsStoreActivity this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NeurobotsStoreActivity$listenForSearchResults$3(NeurobotsStoreActivity neurobotsStoreActivity) {
        super(1);
        this.this$0 = neurobotsStoreActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends ShopItem> list) {
        invoke2((List<ShopItem>) list);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(List<ShopItem> items) {
        CoordinatorLayout coordinatorLayout;
        RecyclerListView recyclerListView;
        TextView textView;
        TextView textView2;
        RecyclerListView recyclerListView2;
        TextView textView3;
        RecyclerListView recyclerListView3;
        BotsAdapter botsAdapter;
        RecyclerListView recyclerListView4;
        TextView textView4;
        CoordinatorLayout coordinatorLayout2;
        Intrinsics.checkNotNullParameter(items, "items");
        coordinatorLayout = this.this$0.baseViewsContainer;
        TextView textView5 = null;
        BotsAdapter botsAdapter2 = null;
        if (coordinatorLayout == null) {
            Intrinsics.throwUninitializedPropertyAccessException("baseViewsContainer");
            coordinatorLayout = null;
        }
        if (coordinatorLayout.getVisibility() != 8) {
            coordinatorLayout2 = this.this$0.baseViewsContainer;
            if (coordinatorLayout2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("baseViewsContainer");
                coordinatorLayout2 = null;
            }
            coordinatorLayout2.setVisibility(8);
        }
        if (!items.isEmpty()) {
            textView3 = this.this$0.nothingFoundPlaceholder;
            if (textView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nothingFoundPlaceholder");
                textView3 = null;
            }
            if (textView3.getVisibility() != 8) {
                textView4 = this.this$0.nothingFoundPlaceholder;
                if (textView4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("nothingFoundPlaceholder");
                    textView4 = null;
                }
                textView4.setVisibility(8);
            }
            recyclerListView3 = this.this$0.searchResultsList;
            if (recyclerListView3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("searchResultsList");
                recyclerListView3 = null;
            }
            if (recyclerListView3.getVisibility() != 0) {
                recyclerListView4 = this.this$0.searchResultsList;
                if (recyclerListView4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("searchResultsList");
                    recyclerListView4 = null;
                }
                recyclerListView4.setVisibility(0);
            }
            botsAdapter = this.this$0.searchResultsAdapter;
            if (botsAdapter == null) {
                Intrinsics.throwUninitializedPropertyAccessException("searchResultsAdapter");
            } else {
                botsAdapter2 = botsAdapter;
            }
            botsAdapter2.setContent(items);
            return;
        }
        recyclerListView = this.this$0.searchResultsList;
        if (recyclerListView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("searchResultsList");
            recyclerListView = null;
        }
        if (recyclerListView.getVisibility() != 8) {
            recyclerListView2 = this.this$0.searchResultsList;
            if (recyclerListView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("searchResultsList");
                recyclerListView2 = null;
            }
            recyclerListView2.setVisibility(8);
        }
        textView = this.this$0.nothingFoundPlaceholder;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nothingFoundPlaceholder");
            textView = null;
        }
        if (textView.getVisibility() != 0) {
            textView2 = this.this$0.nothingFoundPlaceholder;
            if (textView2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("nothingFoundPlaceholder");
            } else {
                textView5 = textView2;
            }
            textView5.setVisibility(0);
        }
    }
}
