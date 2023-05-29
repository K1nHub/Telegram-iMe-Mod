package com.iMe.p031ui.shop.view;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScrollerCustom;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.bots.domain.model.BotLanguage;
import com.iMe.bots.domain.model.ShopItem;
import com.iMe.bots.domain.model.SmartBotCategory;
import com.iMe.bots.domain.model.SmartTag;
import com.iMe.bots.usecase.AiBotsManager;
import com.iMe.p031ui.shop.view.adapter.BotsCategoriesAdapter;
import com.iMe.p031ui.shop.view.model.DisplayingBots;
import com.iMe.p031ui.shop.view.model.DisplayingBotsCategory;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.RecyclerListView;
/* compiled from: GridBotsPageView.kt */
/* renamed from: com.iMe.ui.shop.view.GridBotsPageView */
/* loaded from: classes3.dex */
public final class GridBotsPageView extends FrameLayout {
    private BotLanguage botLanguage;
    private final CompositeDisposable disposable;
    private ProgressBar progress;
    private RecyclerListView recycler;
    private BotsCategoriesAdapter recyclerAdapter;
    private LinearLayoutManager recyclerLayoutManager;
    private Disposable subscribeDisposable;

    public final BotLanguage getBotLanguage() {
        return this.botLanguage;
    }

    public final void setBotLanguage(BotLanguage botLanguage) {
        Intrinsics.checkNotNullParameter(botLanguage, "<set-?>");
        this.botLanguage = botLanguage;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GridBotsPageView(CompositeDisposable disposable, Context context, BotLanguage botLanguage, int i) {
        super(context);
        Intrinsics.checkNotNullParameter(disposable, "disposable");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(botLanguage, "botLanguage");
        this.disposable = disposable;
        this.botLanguage = botLanguage;
        this.recycler = new RecyclerListView(context);
        BotsCategoriesAdapter botsCategoriesAdapter = new BotsCategoriesAdapter(i);
        botsCategoriesAdapter.setHasStableIds(true);
        this.recyclerAdapter = botsCategoriesAdapter;
        this.recycler.setClipToPadding(false);
        this.recycler.setPadding(0, AndroidUtilities.m55dp(14.0f), 0, 0);
        this.recycler.setVerticalScrollBarEnabled(true);
        this.recycler.setItemAnimator(null);
        this.recycler.setInstantClick(true);
        this.recycler.setLayoutAnimation(null);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context) { // from class: com.iMe.ui.shop.view.GridBotsPageView.1
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
        addView(this.recycler, LayoutHelper.createFrame(-1, -1.0f, 17, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED));
        ProgressBar progressBar = new ProgressBar(context);
        this.progress = progressBar;
        progressBar.setIndeterminate(true);
        this.progress.setVisibility(8);
        addView(this.progress, LayoutHelper.createFrame(-2, -2, 17));
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
        Observable<List<ShopItem>> distinctUntilChanged = aiBotsManager.getAllBotsObservable(botLanguage, langCode).distinctUntilChanged();
        AiBotsManager aiBotsManager2 = ApplicationLoader.smartBotsManager;
        String langCode2 = LocaleController.getInstance().getCurrentLocaleInfo().getLangCode();
        Intrinsics.checkNotNullExpressionValue(langCode2, "getInstance().currentLocaleInfo.langCode");
        Observable observeOn = Observable.zip(distinctUntilChanged, aiBotsManager2.getCategories(langCode2), new BiFunction() { // from class: com.iMe.ui.shop.view.GridBotsPageView$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                List subscribeToContent$lambda$1;
                subscribeToContent$lambda$1 = GridBotsPageView.subscribeToContent$lambda$1(GridBotsPageView.this, (List) obj, (List) obj2);
                return subscribeToContent$lambda$1;
            }
        }).subscribeOn(Schedulers.m679io()).observeOn(AndroidSchedulers.mainThread());
        final GridBotsPageView$subscribeToContent$2 gridBotsPageView$subscribeToContent$2 = new GridBotsPageView$subscribeToContent$2(this);
        Observable doOnSubscribe = observeOn.doOnSubscribe(new Consumer() { // from class: com.iMe.ui.shop.view.GridBotsPageView$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GridBotsPageView.subscribeToContent$lambda$2(Function1.this, obj);
            }
        });
        final GridBotsPageView$subscribeToContent$3 gridBotsPageView$subscribeToContent$3 = new GridBotsPageView$subscribeToContent$3(this);
        Consumer consumer = new Consumer() { // from class: com.iMe.ui.shop.view.GridBotsPageView$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GridBotsPageView.subscribeToContent$lambda$3(Function1.this, obj);
            }
        };
        final GridBotsPageView$subscribeToContent$4 gridBotsPageView$subscribeToContent$4 = GridBotsPageView$subscribeToContent$4.INSTANCE;
        Disposable subscribe = doOnSubscribe.subscribe(consumer, new Consumer() { // from class: com.iMe.ui.shop.view.GridBotsPageView$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GridBotsPageView.subscribeToContent$lambda$4(Function1.this, obj);
            }
        });
        this.disposable.add(subscribe);
        this.subscribeDisposable = subscribe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List subscribeToContent$lambda$1(GridBotsPageView this$0, List bots, List categories) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(bots, "bots");
        Intrinsics.checkNotNullParameter(categories, "categories");
        return this$0.buildShopContent(bots, categories);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToContent$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToContent$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void subscribeToContent$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    private final List<Object> buildShopContent(List<ShopItem> list, List<SmartBotCategory> list2) {
        List sortedWith;
        ArrayList arrayList = new ArrayList();
        for (SmartBotCategory smartBotCategory : list2) {
            if (!smartBotCategory.getTags().isEmpty()) {
                sortedWith = CollectionsKt___CollectionsKt.sortedWith(findItemsByTags(smartBotCategory.getTags(), list), new Comparator() { // from class: com.iMe.ui.shop.view.GridBotsPageView$buildShopContent$lambda$7$$inlined$sortedByDescending$1
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        int compareValues;
                        compareValues = ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(((ShopItem) t2).getInstalls()), Long.valueOf(((ShopItem) t).getInstalls()));
                        return compareValues;
                    }
                });
                if (!sortedWith.isEmpty()) {
                    arrayList.add(new DisplayingBotsCategory(smartBotCategory.getTitle()));
                    arrayList.add(new DisplayingBots(sortedWith));
                }
            }
        }
        return arrayList;
    }

    private final List<ShopItem> findItemsByTags(List<String> list, List<ShopItem> list2) {
        int collectionSizeOrDefault;
        ArrayList arrayList = new ArrayList();
        for (ShopItem shopItem : list2) {
            List<SmartTag> tags = shopItem.getTags();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(tags, 10);
            ArrayList<String> arrayList2 = new ArrayList(collectionSizeOrDefault);
            for (SmartTag smartTag : tags) {
                arrayList2.add(smartTag.getId());
            }
            for (String str : arrayList2) {
                if (list.contains(str)) {
                    arrayList.add(shopItem);
                }
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Disposable disposable = this.subscribeDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
    }
}
