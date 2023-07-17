package com.iMe.p031ui.wallet.crypto.settings.custom_tokens;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.wallet.crypto.token.TokenManagementFragment;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.common.CursoredData;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.extentions.p032rx.SchedulersExtKt;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
/* compiled from: CustomTokensPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter */
/* loaded from: classes4.dex */
public final class CustomTokensPresenter extends BasePresenter<CustomTokensView> {
    private final String cursor;
    private final List<BaseNode> items;
    private String query;
    private final PublishSubject<String> querySubject;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final List<TokenDetailed> tokens;
    private final WalletInteractor walletInteractor;

    static {
        new Companion(null);
    }

    public CustomTokensPresenter(RxEventBus rxEventBus, SchedulersProvider schedulersProvider, WalletInteractor walletInteractor) {
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.walletInteractor = walletInteractor;
        this.items = new ArrayList();
        this.tokens = new ArrayList();
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.querySubject = create;
        this.query = "";
    }

    public final void onTokenClicked(TokenItem token) {
        Intrinsics.checkNotNullParameter(token, "token");
        ((CustomTokensView) getViewState()).openTokenManagementScreen(new TokenManagementFragment.ScreenType.View(TokenUiMappingKt.mapToDomain(token), Boolean.TRUE));
    }

    public final void onAddClicked() {
        ((CustomTokensView) getViewState()).openTokenManagementScreen(TokenManagementFragment.ScreenType.Import.INSTANCE);
    }

    public final void onQueryUpdate(String newQuery) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(newQuery, "newQuery");
        PublishSubject<String> publishSubject = this.querySubject;
        trim = StringsKt__StringsKt.trim(newQuery);
        publishSubject.onNext(trim.toString());
    }

    public final void reload() {
        this.items.clear();
        loadCustomTokens(false);
    }

    public final void loadCustomTokens(boolean z) {
        if (z) {
            String str = this.cursor;
            if (str == null || str.length() == 0) {
                ((CustomTokensView) getViewState()).onLoadMoreComplete();
                return;
            }
        }
        Observable<Result<CursoredData<TokenDetailed>>> customTokens = this.walletInteractor.getCustomTokens(this.cursor);
        final CustomTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1 customTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1 = new CustomTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1(this);
        Observable<R> flatMap = customTokens.flatMap(new Function(customTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1) { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$inlined$sam$i$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            {
                Intrinsics.checkNotNullParameter(customTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1, "function");
                this.function = customTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1;
            }

            @Override // io.reactivex.functions.Function
            public final /* synthetic */ Object apply(Object obj) {
                return this.function.invoke(obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable startWith = flatMap.startWith((Observable<R>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "walletInteractor\n       …artWith(Result.loading())");
        Disposable subscribe = SchedulersExtKt.scheduleIO(startWith, this.schedulersProvider).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2184x49749c9b(this, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2185x49749c9c(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        subscribeToEvents();
        subscribeToQueryChanges();
        loadCustomTokens(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onTokensLoadingSuccess(List<? extends BaseNode> list, boolean z) {
        if (!list.isEmpty()) {
            this.items.addAll(list);
            if (z) {
                ((CustomTokensView) getViewState()).onLoadMoreItems(this.items);
            } else {
                ((CustomTokensView) getViewState()).renderItems(this.items);
            }
        } else if (!z) {
            renderState(GlobalState.Empty.CustomTokens.INSTANCE);
        }
        if (this.cursor == null) {
            ((CustomTokensView) getViewState()).onLoadMoreComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderState(GlobalState globalState) {
        this.items.add(new GlobalStateItem(globalState));
        ((CustomTokensView) getViewState()).renderItems(this.items);
    }

    private final void subscribeToQueryChanges() {
        Observable<String> observeOn = this.querySubject.debounce(500L, TimeUnit.MILLISECONDS).distinctUntilChanged().observeOn(this.schedulersProvider.mo698ui());
        final CustomTokensPresenter$subscribeToQueryChanges$1 customTokensPresenter$subscribeToQueryChanges$1 = new CustomTokensPresenter$subscribeToQueryChanges$1(this);
        Observable<String> observeOn2 = observeOn.filter(new Predicate() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                boolean subscribeToQueryChanges$lambda$3;
                subscribeToQueryChanges$lambda$3 = CustomTokensPresenter.subscribeToQueryChanges$lambda$3(Function1.this, obj);
                return subscribeToQueryChanges$lambda$3;
            }
        }).observeOn(this.schedulersProvider.mo699io());
        final CustomTokensPresenter$subscribeToQueryChanges$2 customTokensPresenter$subscribeToQueryChanges$2 = new CustomTokensPresenter$subscribeToQueryChanges$2(this);
        Observable<R> map = observeOn2.map(new Function() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List subscribeToQueryChanges$lambda$4;
                subscribeToQueryChanges$lambda$4 = CustomTokensPresenter.subscribeToQueryChanges$lambda$4(Function1.this, obj);
                return subscribeToQueryChanges$lambda$4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "private fun subscribeToQ…     .autoDispose()\n    }");
        Disposable subscribe = SchedulersExtKt.scheduleIO(map, this.schedulersProvider).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2188x12ba1cdc(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2189x12ba1cdd(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean subscribeToQueryChanges$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List subscribeToQueryChanges$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (List) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0069 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0032 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.chad.library.adapter.base.entity.node.BaseNode> getSearchRenderItems() {
        /*
            r8 = this;
            java.util.List<com.chad.library.adapter.base.entity.node.BaseNode> r0 = r8.items
            boolean r1 = r0 instanceof java.util.Collection
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L10
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L10
        Le:
            r0 = r3
            goto L25
        L10:
            java.util.Iterator r0 = r0.iterator()
        L14:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Le
            java.lang.Object r1 = r0.next()
            com.chad.library.adapter.base.entity.node.BaseNode r1 = (com.chad.library.adapter.base.entity.node.BaseNode) r1
            boolean r1 = r1 instanceof com.iMe.model.common.GlobalStateItem
            if (r1 == 0) goto L14
            r0 = r2
        L25:
            if (r0 == 0) goto L87
            java.util.List<com.iMe.storage.domain.model.wallet.token.TokenDetailed> r0 = r8.tokens
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r0 = r0.iterator()
        L32:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L6d
            java.lang.Object r4 = r0.next()
            r5 = r4
            com.iMe.storage.domain.model.wallet.token.TokenDetailed r5 = (com.iMe.storage.domain.model.wallet.token.TokenDetailed) r5
            java.lang.String r6 = r5.getAddress()
            java.lang.String r7 = r8.query
            boolean r6 = kotlin.text.StringsKt.contains(r6, r7, r3)
            if (r6 != 0) goto L66
            java.lang.String r6 = r5.getName()
            java.lang.String r7 = r8.query
            boolean r6 = kotlin.text.StringsKt.contains(r6, r7, r3)
            if (r6 != 0) goto L66
            java.lang.String r5 = r5.getTicker()
            java.lang.String r6 = r8.query
            boolean r5 = kotlin.text.StringsKt.contains(r5, r6, r3)
            if (r5 == 0) goto L64
            goto L66
        L64:
            r5 = r2
            goto L67
        L66:
            r5 = r3
        L67:
            if (r5 == 0) goto L32
            r1.add(r4)
            goto L32
        L6d:
            java.util.List r0 = com.iMe.mapper.wallet.TokenUiMappingKt.mapToUI(r1)
            boolean r1 = r0.isEmpty()
            if (r1 == 0) goto L82
            com.iMe.model.common.GlobalStateItem r0 = new com.iMe.model.common.GlobalStateItem
            com.iMe.model.state.GlobalState$Empty$CustomTokens r1 = com.iMe.model.state.GlobalState.Empty.CustomTokens.INSTANCE
            r0.<init>(r1)
            java.util.List r0 = kotlin.collections.CollectionsKt.listOf(r0)
        L82:
            java.util.List r0 = kotlin.collections.CollectionsKt.toMutableList(r0)
            goto L89
        L87:
            java.util.List<com.chad.library.adapter.base.entity.node.BaseNode> r0 = r8.items
        L89:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.p031ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter.getSearchRenderItems():java.util.List");
    }

    private final void subscribeToEvents() {
        RxEventBus rxEventBus = this.rxEventBus;
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.TokensSettingsChanged.class).observeOn(rxEventBus.getSchedulersProvider().mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2186xbcd14e9a(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2187xbcd14e9b(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* compiled from: CustomTokensPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
