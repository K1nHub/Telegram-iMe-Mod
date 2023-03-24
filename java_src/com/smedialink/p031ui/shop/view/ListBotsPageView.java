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
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.List;
import kotlin.jvm.functions.Function1;
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
        Observable<List<ShopItem>> subscribeOn = aiBotsManager.getAllBotsObservable(botLanguage, langCode).subscribeOn(Schedulers.m693io());
        final ListBotsPageView$subscribeToContent$1 listBotsPageView$subscribeToContent$1 = new ListBotsPageView$subscribeToContent$1(this);
        Observable<R> map = subscribeOn.map(new Function() { // from class: com.smedialink.ui.shop.view.ListBotsPageView$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List subscribeToContent$lambda$1;
                subscribeToContent$lambda$1 = ListBotsPageView.subscribeToContent$lambda$1(Function1.this, obj);
                return subscribeToContent$lambda$1;
            }
        });
        final ListBotsPageView$subscribeToContent$2 listBotsPageView$subscribeToContent$2 = new ListBotsPageView$subscribeToContent$2(this);
        Observable observeOn = map.map(new Function() { // from class: com.smedialink.ui.shop.view.ListBotsPageView$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List subscribeToContent$lambda$2;
                subscribeToContent$lambda$2 = ListBotsPageView.subscribeToContent$lambda$2(Function1.this, obj);
                return subscribeToContent$lambda$2;
            }
        }).observeOn(AndroidSchedulers.mainThread());
        final ListBotsPageView$subscribeToContent$3 listBotsPageView$subscribeToContent$3 = new ListBotsPageView$subscribeToContent$3(this);
        Consumer consumer = new Consumer() { // from class: com.smedialink.ui.shop.view.ListBotsPageView$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ListBotsPageView.subscribeToContent$lambda$3(Function1.this, obj);
            }
        };
        final ListBotsPageView$subscribeToContent$4 listBotsPageView$subscribeToContent$4 = ListBotsPageView$subscribeToContent$4.INSTANCE;
        Disposable subscribe = observeOn.subscribe(consumer, new Consumer() { // from class: com.smedialink.ui.shop.view.ListBotsPageView$$ExternalSyntheticLambda0
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
