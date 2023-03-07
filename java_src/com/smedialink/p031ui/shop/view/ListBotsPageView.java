package com.smedialink.p031ui.shop.view;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScrollerCustom;
import androidx.recyclerview.widget.RecyclerView;
import com.smedialink.bots.domain.model.BotLanguage;
import com.smedialink.bots.domain.model.ShopItem;
import com.smedialink.bots.usecase.AiBotsManager;
import com.smedialink.p031ui.shop.NeurobotsStoreActivity;
import com.smedialink.p031ui.shop.view.adapter.BotsAdapter;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.Components.LayoutHelper;
import org.telegram.p048ui.Components.RecyclerListView;
/* compiled from: ListBotsPageView.kt */
/* renamed from: com.smedialink.ui.shop.view.ListBotsPageView */
/* loaded from: classes3.dex */
public final class ListBotsPageView extends FrameLayout {
    private BotLanguage botLanguage;
    private final CompositeDisposable disposable;
    private RecyclerListView recycler;
    private BotsAdapter recyclerAdapter;
    private LinearLayoutManager recyclerLayoutManager;
    private Disposable subscribeDisposable;
    private final NeurobotsStoreActivity.StoreTab tab;

    /* compiled from: ListBotsPageView.kt */
    /* renamed from: com.smedialink.ui.shop.view.ListBotsPageView$WhenMappings */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[NeurobotsStoreActivity.StoreTab.values().length];
            iArr[NeurobotsStoreActivity.StoreTab.POPULAR.ordinal()] = 1;
            iArr[NeurobotsStoreActivity.StoreTab.FREE.ordinal()] = 2;
            iArr[NeurobotsStoreActivity.StoreTab.MY.ordinal()] = 3;
            iArr[NeurobotsStoreActivity.StoreTab.ALL.ordinal()] = 4;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final BotLanguage getBotLanguage() {
        return this.botLanguage;
    }

    public final void setBotLanguage(BotLanguage botLanguage) {
        Intrinsics.checkNotNullParameter(botLanguage, "<set-?>");
        this.botLanguage = botLanguage;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ListBotsPageView(NeurobotsStoreActivity.StoreTab tab, CompositeDisposable disposable, BotLanguage botLanguage, Context context, int i) {
        super(context);
        Intrinsics.checkNotNullParameter(tab, "tab");
        Intrinsics.checkNotNullParameter(disposable, "disposable");
        Intrinsics.checkNotNullParameter(botLanguage, "botLanguage");
        Intrinsics.checkNotNullParameter(context, "context");
        this.tab = tab;
        this.disposable = disposable;
        this.botLanguage = botLanguage;
        this.recycler = new RecyclerListView(context);
        BotsAdapter botsAdapter = new BotsAdapter(i);
        botsAdapter.setHasStableIds(true);
        Unit unit = Unit.INSTANCE;
        this.recyclerAdapter = botsAdapter;
        this.recycler.setVerticalScrollBarEnabled(true);
        this.recycler.setItemAnimator(null);
        this.recycler.setInstantClick(true);
        this.recycler.setLayoutAnimation(null);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context) { // from class: com.smedialink.ui.shop.view.ListBotsPageView.1
            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public boolean supportsPredictiveItemAnimations() {
                return false;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int i2) {
                Intrinsics.checkNotNullParameter(recyclerView, "recyclerView");
                Intrinsics.checkNotNullParameter(state, "state");
                LinearSmoothScrollerCustom linearSmoothScrollerCustom = new LinearSmoothScrollerCustom(recyclerView.getContext(), 0);
                linearSmoothScrollerCustom.setTargetPosition(i2);
                startSmoothScroll(linearSmoothScrollerCustom);
            }
        };
        this.recyclerLayoutManager = linearLayoutManager;
        linearLayoutManager.setOrientation(1);
        this.recycler.setLayoutManager(this.recyclerLayoutManager);
        this.recycler.setAdapter(this.recyclerAdapter);
        addView(this.recycler, LayoutHelper.createFrame(-1, -1, 17));
        subscribeToContent();
    }

    public final void subscribeToContent() {
        Disposable disposable = this.subscribeDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        AiBotsManager aiBotsManager = ApplicationLoader.smartBotsManager;
        BotLanguage botLanguage = this.botLanguage;
        String langCode = LocaleController.getInstance().getCurrentLocaleInfo().getLangCode();
        Intrinsics.checkNotNullExpressionValue(langCode, "getInstance().currentLocaleInfo.langCode");
        Disposable subscribe = aiBotsManager.getAllBotsObservable(botLanguage, langCode).subscribeOn(Schedulers.m694io()).map(new Function() { // from class: com.smedialink.ui.shop.view.ListBotsPageView$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List m1515subscribeToContent$lambda2;
                m1515subscribeToContent$lambda2 = ListBotsPageView.m1515subscribeToContent$lambda2(ListBotsPageView.this, (List) obj);
                return m1515subscribeToContent$lambda2;
            }
        }).map(new Function() { // from class: com.smedialink.ui.shop.view.ListBotsPageView$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List m1516subscribeToContent$lambda5;
                m1516subscribeToContent$lambda5 = ListBotsPageView.m1516subscribeToContent$lambda5(ListBotsPageView.this, (List) obj);
                return m1516subscribeToContent$lambda5;
            }
        }).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.smedialink.ui.shop.view.ListBotsPageView$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ListBotsPageView.m1517subscribeToContent$lambda6(ListBotsPageView.this, (List) obj);
            }
        }, ListBotsPageView$$ExternalSyntheticLambda1.INSTANCE);
        this.disposable.add(subscribe);
        this.subscribeDisposable = subscribe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: subscribeToContent$lambda-5  reason: not valid java name */
    public static final List m1516subscribeToContent$lambda5(ListBotsPageView this$0, List it) {
        List sortedWith;
        List sortedWith2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(it, "it");
        int i = WhenMappings.$EnumSwitchMapping$0[this$0.tab.ordinal()];
        if (i == 1) {
            sortedWith = CollectionsKt___CollectionsKt.sortedWith(it, new Comparator() { // from class: com.smedialink.ui.shop.view.ListBotsPageView$subscribeToContent$lambda-5$$inlined$sortedByDescending$2
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int compareValues;
                    compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((ShopItem) t2).getInstalls()), Long.valueOf(((ShopItem) t).getInstalls()));
                    return compareValues;
                }
            });
            return sortedWith;
        } else if (i != 4) {
            return it;
        } else {
            sortedWith2 = CollectionsKt___CollectionsKt.sortedWith(it, new Comparator() { // from class: com.smedialink.ui.shop.view.ListBotsPageView$subscribeToContent$lambda-5$$inlined$sortedByDescending$1
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

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: subscribeToContent$lambda-6  reason: not valid java name */
    public static final void m1517subscribeToContent$lambda6(ListBotsPageView this$0, List items) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(items, "items");
        this$0.recyclerAdapter.setContent(items);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: subscribeToContent$lambda-7  reason: not valid java name */
    public static final void m1518subscribeToContent$lambda7(Throwable t) {
        Intrinsics.checkNotNullParameter(t, "t");
        t.printStackTrace();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: subscribeToContent$lambda-2  reason: not valid java name */
    public static final List m1515subscribeToContent$lambda2(ListBotsPageView this$0, List list) {
        boolean isPopular;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(list, "list");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            ShopItem shopItem = (ShopItem) obj;
            int i = WhenMappings.$EnumSwitchMapping$0[this$0.tab.ordinal()];
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
