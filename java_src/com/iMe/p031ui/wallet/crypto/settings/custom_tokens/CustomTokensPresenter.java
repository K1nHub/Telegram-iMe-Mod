package com.iMe.p031ui.wallet.crypto.settings.custom_tokens;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.mapper.wallet.TokenUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.crypto.TokenItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
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
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
import timber.log.Timber;
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

    public final void loadCustomTokens(final boolean z) {
        if (z) {
            String str = this.cursor;
            if (str == null || str.length() == 0) {
                ((CustomTokensView) getViewState()).onLoadMoreComplete();
                return;
            }
        }
        Observable<Result<CursoredData<TokenDetailed>>> customTokens = this.walletInteractor.getCustomTokens(this.cursor);
        final Function1<Result<? extends CursoredData<TokenDetailed>>, ObservableSource<? extends Result<? extends List<? extends BaseNode>>>> function1 = new Function1<Result<? extends CursoredData<TokenDetailed>>, ObservableSource<? extends Result<? extends List<? extends BaseNode>>>>() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$loadCustomTokens$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends List<? extends BaseNode>>> invoke(Result<? extends CursoredData<TokenDetailed>> result) {
                List list;
                List list2;
                String str2;
                List<TokenItem> searchRenderItems;
                List list3;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                list = CustomTokensPresenter.this.items;
                list.clear();
                list2 = CustomTokensPresenter.this.tokens;
                list2.clear();
                CursoredData<TokenDetailed> data = result.getData();
                List<TokenDetailed> data2 = data != null ? data.getData() : null;
                if (data2 == null) {
                    data2 = CollectionsKt__CollectionsKt.emptyList();
                }
                list2.addAll(data2);
                str2 = CustomTokensPresenter.this.query;
                if (str2.length() == 0) {
                    list3 = CustomTokensPresenter.this.tokens;
                    searchRenderItems = TokenUiMappingKt.mapToUI(list3);
                } else {
                    searchRenderItems = CustomTokensPresenter.this.getSearchRenderItems();
                }
                Observable just = Observable.just(Result.Companion.success(searchRenderItems));
                Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                return just;
            }
        };
        Observable<R> flatMap = customTokens.flatMap(new Function(function1) { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$inlined$sam$i$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            {
                Intrinsics.checkNotNullParameter(function1, "function");
                this.function = function1;
            }

            @Override // io.reactivex.functions.Function
            public final /* synthetic */ Object apply(Object obj) {
                return this.function.invoke(obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable startWith = flatMap.startWith((Observable<R>) Result.Companion.loading$default(Result.Companion, null, 1, null));
        Intrinsics.checkNotNullExpressionValue(startWith, "walletInteractor\n       …artWith(Result.loading())");
        Disposable subscribe = SchedulersExtKt.scheduleIO(startWith, this.schedulersProvider).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends BaseNode>>, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$loadCustomTokens$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends BaseNode>> result) {
                m1458invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1458invoke(Result<? extends List<? extends BaseNode>> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends BaseNode>> result = it;
                if (result instanceof Result.Success) {
                    CustomTokensPresenter.this.onTokensLoadingSuccess((List) ((Result.Success) result).getData(), z);
                } else if (result instanceof Result.Loading) {
                    if (z) {
                        return;
                    }
                    CustomTokensPresenter.this.renderState(GlobalState.Progress.INSTANCE);
                } else if (result instanceof Result.Error) {
                    CustomTokensPresenter.this.renderState(((Result.Error) result).getError().isNoConnectionStatus() ? GlobalState.NoInternet.INSTANCE : GlobalState.Unexpected.INSTANCE);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$loadCustomTokens$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
            }
        }));
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
        Observable<String> observeOn = this.querySubject.debounce(500L, TimeUnit.MILLISECONDS).distinctUntilChanged().observeOn(this.schedulersProvider.mo716ui());
        final Function1<String, Boolean> function1 = new Function1<String, Boolean>() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$subscribeToQueryChanges$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String rawQuery) {
                List<BaseNode> list;
                List list2;
                Intrinsics.checkNotNullParameter(rawQuery, "rawQuery");
                boolean z = false;
                boolean z2 = true;
                if (rawQuery.length() < 2) {
                    CustomTokensPresenter.this.query = "";
                    list = CustomTokensPresenter.this.items;
                    CustomTokensPresenter customTokensPresenter = CustomTokensPresenter.this;
                    if (!(list instanceof Collection) || !list.isEmpty()) {
                        Iterator it = list.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            } else if (((BaseNode) it.next()) instanceof GlobalStateItem) {
                                z2 = false;
                                break;
                            }
                        }
                    }
                    if (z2) {
                        list.clear();
                        list2 = customTokensPresenter.tokens;
                        list.addAll(TokenUiMappingKt.mapToUI(list2));
                    }
                    ((CustomTokensView) customTokensPresenter.getViewState()).renderItems(list);
                } else {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        };
        Observable<String> observeOn2 = observeOn.filter(new Predicate() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                boolean subscribeToQueryChanges$lambda$3;
                subscribeToQueryChanges$lambda$3 = CustomTokensPresenter.subscribeToQueryChanges$lambda$3(Function1.this, obj);
                return subscribeToQueryChanges$lambda$3;
            }
        }).observeOn(this.schedulersProvider.mo717io());
        final Function1<String, List<BaseNode>> function12 = new Function1<String, List<BaseNode>>() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$subscribeToQueryChanges$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final List<BaseNode> invoke(String newQuery) {
                List<BaseNode> searchRenderItems;
                Intrinsics.checkNotNullParameter(newQuery, "newQuery");
                CustomTokensPresenter.this.query = newQuery;
                searchRenderItems = CustomTokensPresenter.this.getSearchRenderItems();
                return searchRenderItems;
            }
        };
        Observable<R> map = observeOn2.map(new Function() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List subscribeToQueryChanges$lambda$4;
                subscribeToQueryChanges$lambda$4 = CustomTokensPresenter.subscribeToQueryChanges$lambda$4(Function1.this, obj);
                return subscribeToQueryChanges$lambda$4;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "private fun subscribeToQ…     .autoDispose()\n    }");
        Disposable subscribe = SchedulersExtKt.scheduleIO(map, this.schedulersProvider).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<List<BaseNode>, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<BaseNode> list) {
                m1460invoke(list);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1460invoke(List<BaseNode> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                ((CustomTokensView) CustomTokensPresenter.this.getViewState()).renderItems(it);
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
            }
        }));
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
        Observable observeOn = rxEventBus.getPublisher().ofType(DomainRxEvents.TokensSettingsChanged.class).observeOn(rxEventBus.getSchedulersProvider().mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "publisher\n              …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<DomainRxEvents.TokensSettingsChanged, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.TokensSettingsChanged tokensSettingsChanged) {
                m1459invoke(tokensSettingsChanged);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1459invoke(DomainRxEvents.TokensSettingsChanged it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                CustomTokensPresenter.this.reload();
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
            }
        }));
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
