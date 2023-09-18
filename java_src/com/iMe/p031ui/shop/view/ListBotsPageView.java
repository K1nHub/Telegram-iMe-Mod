package com.iMe.p031ui.shop.view;

import android.content.Context;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.LinearSmoothScrollerCustom;
import androidx.recyclerview.widget.RecyclerView;
import com.iMe.bots.domain.model.BotLanguage;
import com.iMe.bots.domain.model.ShopItem;
import com.iMe.bots.usecase.AiBotsManager;
import com.iMe.p031ui.shop.NeurobotsStoreActivity;
import com.iMe.p031ui.shop.view.adapter.BotsAdapter;
import io.reactivex.Observable;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.RecyclerListView;
/* compiled from: ListBotsPageView.kt */
/* renamed from: com.iMe.ui.shop.view.ListBotsPageView */
/* loaded from: classes4.dex */
public final class ListBotsPageView extends FrameLayout {
    private BotLanguage botLanguage;
    private final CompositeDisposable disposable;
    private RecyclerListView recycler;
    private BotsAdapter recyclerAdapter;
    private LinearLayoutManager recyclerLayoutManager;
    private Disposable subscribeDisposable;
    private final NeurobotsStoreActivity.StoreTab tab;

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
        this.recyclerAdapter = botsAdapter;
        this.recycler.setVerticalScrollBarEnabled(true);
        this.recycler.setItemAnimator(null);
        this.recycler.setInstantClick(true);
        this.recycler.setLayoutAnimation(null);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context) { // from class: com.iMe.ui.shop.view.ListBotsPageView.1
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
        Observable<List<ShopItem>> subscribeOn = aiBotsManager.getAllBotsObservable(botLanguage, langCode).subscribeOn(Schedulers.m697io());
        final Function1<List<? extends ShopItem>, List<? extends ShopItem>> function1 = new Function1<List<? extends ShopItem>, List<? extends ShopItem>>() { // from class: com.iMe.ui.shop.view.ListBotsPageView$subscribeToContent$1

            /* compiled from: ListBotsPageView.kt */
            /* renamed from: com.iMe.ui.shop.view.ListBotsPageView$subscribeToContent$1$WhenMappings */
            /* loaded from: classes4.dex */
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
            {
                super(1);
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
                ListBotsPageView listBotsPageView = ListBotsPageView.this;
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
        };
        Observable<R> map = subscribeOn.map(new Function() { // from class: com.iMe.ui.shop.view.ListBotsPageView$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List subscribeToContent$lambda$1;
                subscribeToContent$lambda$1 = ListBotsPageView.subscribeToContent$lambda$1(Function1.this, obj);
                return subscribeToContent$lambda$1;
            }
        });
        final Function1<List<? extends ShopItem>, List<? extends ShopItem>> function12 = new Function1<List<? extends ShopItem>, List<? extends ShopItem>>() { // from class: com.iMe.ui.shop.view.ListBotsPageView$subscribeToContent$2

            /* compiled from: ListBotsPageView.kt */
            /* renamed from: com.iMe.ui.shop.view.ListBotsPageView$subscribeToContent$2$WhenMappings */
            /* loaded from: classes4.dex */
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
            {
                super(1);
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
                storeTab = ListBotsPageView.this.tab;
                int i = WhenMappings.$EnumSwitchMapping$0[storeTab.ordinal()];
                if (i == 1) {
                    sortedWith = CollectionsKt___CollectionsKt.sortedWith(it, new Comparator() { // from class: com.iMe.ui.shop.view.ListBotsPageView$subscribeToContent$2$invoke$$inlined$sortedByDescending$1
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
                    sortedWith2 = CollectionsKt___CollectionsKt.sortedWith(it, new Comparator() { // from class: com.iMe.ui.shop.view.ListBotsPageView$subscribeToContent$2$invoke$$inlined$sortedByDescending$2
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
        };
        Observable observeOn = map.map(new Function() { // from class: com.iMe.ui.shop.view.ListBotsPageView$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List subscribeToContent$lambda$2;
                subscribeToContent$lambda$2 = ListBotsPageView.subscribeToContent$lambda$2(Function1.this, obj);
                return subscribeToContent$lambda$2;
            }
        }).observeOn(AndroidSchedulers.mainThread());
        final Function1<List<? extends ShopItem>, Unit> function13 = new Function1<List<? extends ShopItem>, Unit>() { // from class: com.iMe.ui.shop.view.ListBotsPageView$subscribeToContent$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends ShopItem> list) {
                invoke2((List<ShopItem>) list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(List<ShopItem> items) {
                BotsAdapter botsAdapter;
                Intrinsics.checkNotNullParameter(items, "items");
                botsAdapter = ListBotsPageView.this.recyclerAdapter;
                botsAdapter.setContent(items);
            }
        };
        Consumer consumer = new Consumer() { // from class: com.iMe.ui.shop.view.ListBotsPageView$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ListBotsPageView.subscribeToContent$lambda$3(Function1.this, obj);
            }
        };
        final ListBotsPageView$subscribeToContent$4 listBotsPageView$subscribeToContent$4 = new Function1<Throwable, Unit>() { // from class: com.iMe.ui.shop.view.ListBotsPageView$subscribeToContent$4
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable t) {
                Intrinsics.checkNotNullParameter(t, "t");
                t.printStackTrace();
            }
        };
        Disposable subscribe = observeOn.subscribe(consumer, new Consumer() { // from class: com.iMe.ui.shop.view.ListBotsPageView$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ListBotsPageView.subscribeToContent$lambda$4(Function1.this, obj);
            }
        });
        this.disposable.add(subscribe);
        this.subscribeDisposable = subscribe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List subscribeToContent$lambda$1(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List subscribeToContent$lambda$2(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
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
}
