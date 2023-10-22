package com.iMe.p030ui.wallet.fragment.usernames;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.mapper.fragment.TonFragmentProductUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.cryptobox.AnimatedHeaderItem;
import com.iMe.model.cryptobox.SortingListHeaderItem;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.state.GlobalState;
import com.iMe.model.wallet.fragment.TonFragmentItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.utils.extentions.NumberExtKt;
import com.iMe.storage.domain.interactor.crypto.fragment.TonFragmentInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.crypto.ton.TonFragmentProduct;
import com.iMe.storage.domain.model.crypto.ton.TonFragmentProductsSortingType;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.functions.Predicate;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3630R;
import timber.log.Timber;
/* compiled from: FragmentUsernamesPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter */
/* loaded from: classes3.dex */
public final class FragmentUsernamesPresenter extends BasePresenter<FragmentUsernamesView> {
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final String itemsHeaderText;
    private List<TonFragmentItem.Product> productsItems;
    private String query;
    private final PublishSubject<String> querySubject;
    private final ResourceManager resourceManager;
    private final Lazy rootItems$delegate;
    private final SchedulersProvider schedulersProvider;
    private TonFragmentItem.Product selectedProductItem;
    private final TonFragmentInteractor tonFragmentInteractor;
    private final WalletInteractor walletInteractor;

    public FragmentUsernamesPresenter(CryptoPreferenceHelper cryptoPreferenceHelper, ResourceManager resourceManager, SchedulersProvider schedulersProvider, TonFragmentInteractor tonFragmentInteractor, WalletInteractor walletInteractor) {
        Lazy lazy;
        List<TonFragmentItem.Product> emptyList;
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(tonFragmentInteractor, "tonFragmentInteractor");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.tonFragmentInteractor = tonFragmentInteractor;
        this.walletInteractor = walletInteractor;
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.querySubject = create;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<? extends BaseNode>>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$rootItems$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends BaseNode> invoke() {
                List<? extends BaseNode> initRootItems;
                initRootItems = FragmentUsernamesPresenter.this.initRootItems();
                return initRootItems;
            }
        });
        this.rootItems$delegate = lazy;
        this.itemsHeaderText = resourceManager.getString(C3630R.string.fragment_usernames_list_title);
        emptyList = CollectionsKt__CollectionsKt.emptyList();
        this.productsItems = emptyList;
        this.query = "";
    }

    private final List<BaseNode> getRootItems() {
        return (List) this.rootItems$delegate.getValue();
    }

    private final void setSortingType(TonFragmentProductsSortingType tonFragmentProductsSortingType) {
        this.cryptoPreferenceHelper.setTonFragmentProductsSortingType(tonFragmentProductsSortingType);
    }

    private final TonFragmentProductsSortingType getSortingType() {
        return this.cryptoPreferenceHelper.getTonFragmentProductsSortingType();
    }

    public final void onQueryUpdate(String newQuery) {
        Intrinsics.checkNotNullParameter(newQuery, "newQuery");
        this.querySubject.onNext(newQuery);
    }

    public final void onSelectSortingTypeClick() {
        FragmentUsernamesView fragmentUsernamesView = (FragmentUsernamesView) getViewState();
        DialogModel dialogModel = new DialogModel(this.resourceManager.getString(C3630R.string.fragment_usernames_sorting_title), null, null, this.resourceManager.getString(C3630R.string.common_cancel), 6, null);
        TonFragmentProductsSortingType[] values = TonFragmentProductsSortingType.values();
        ArrayList arrayList = new ArrayList(values.length);
        for (TonFragmentProductsSortingType tonFragmentProductsSortingType : values) {
            arrayList.add(this.resourceManager.getString(tonFragmentProductsSortingType.getTextResId()));
        }
        fragmentUsernamesView.showChooseSortingTypeDialog(dialogModel, arrayList, getSortingType().ordinal());
    }

    public final void onSortingTypeSelected(int i) {
        setSortingType(TonFragmentProductsSortingType.Companion.mapByOrdinal(i));
        loadProducts$default(this, false, 1, null);
    }

    public final void onProductItemClick(TonFragmentItem.Product productItem) {
        Intrinsics.checkNotNullParameter(productItem, "productItem");
        ((FragmentUsernamesView) getViewState()).showProductDetailsDialog(productItem);
        this.selectedProductItem = productItem;
    }

    public final void onBuyClick() {
        TonFragmentItem.Product product = this.selectedProductItem;
        if (product != null) {
            ((FragmentUsernamesView) getViewState()).showConfirmationDialog(new DialogModel(this.resourceManager.getString(C3630R.string.settings_interface_confirmation_header), this.resourceManager.getString(C3630R.string.fragment_usernames_buy_confirmation_description, product.getTitle(), product.getPriceText()), this.resourceManager.getString(C3630R.string.common_cancel), this.resourceManager.getString(C3630R.string.wallet_buy_button_action_text)));
        }
    }

    public static /* synthetic */ void loadProducts$default(FragmentUsernamesPresenter fragmentUsernamesPresenter, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        fragmentUsernamesPresenter.loadProducts(z);
    }

    public final void loadProducts(final boolean z) {
        Observable<R> flatMap = this.tonFragmentInteractor.checkAndPrepareSession().flatMap(new C2272x5a5385bf(new Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends List<? extends TonFragmentProduct>>>>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$loadProducts$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends List<? extends TonFragmentProduct>>> invoke(Result<? extends Boolean> result) {
                Observable loadProductsObservable;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                loadProductsObservable = FragmentUsernamesPresenter.this.getLoadProductsObservable();
                return loadProductsObservable;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "tonFragmentInteractor\n  …(schedulersProvider.ui())");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends TonFragmentProduct>>, Unit>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends TonFragmentProduct>> result) {
                m1713invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1713invoke(Result<? extends List<? extends TonFragmentProduct>> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends TonFragmentProduct>> result = it;
                ((FragmentUsernamesView) FragmentUsernamesPresenter.this.getViewState()).showRefreshing(z && result.isLoading());
                if (result instanceof Result.Success) {
                    FragmentUsernamesPresenter.this.onLoadProductsSuccess((List) ((Result.Success) result).getData());
                } else if (result instanceof Result.Loading) {
                    if (z) {
                        return;
                    }
                    FragmentUsernamesPresenter.this.renderGlobalState(GlobalState.Progress.INSTANCE);
                } else if (result instanceof Result.Error) {
                    FragmentUsernamesPresenter.this.onLoadProductsError((Result.Error) result);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$loadProducts$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void buyUsername() {
        final TonFragmentItem.Product product = this.selectedProductItem;
        if (product == null) {
            return;
        }
        Observable<R> flatMap = this.walletInteractor.getTokenBalance(new Token("", NetworkType.TON), true, NetworkType.TON).flatMap(new C2272x5a5385bf(new Function1<Result<? extends TokenBalance>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$buyUsername$$inlined$flatMapSuccess$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends TokenBalance> result) {
                TonFragmentInteractor tonFragmentInteractor;
                ResourceManager resourceManager;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extensions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                TokenBalance data = result.getData();
                if (NumberExtKt.orZero(data != null ? Double.valueOf(data.getTotal()) : null) < Double.parseDouble(TonFragmentItem.Product.this.getPrice())) {
                    resourceManager = this.resourceManager;
                    Observable just = Observable.just(Result.Companion.error$default(Result.Companion, new ErrorModel(resourceManager.getString(C3630R.string.wallet_amount_send_error_insufficient_funds), FirebaseFunctionsErrorHandler.ErrorStatus.NO_ENOUGH_MONEY, null, 4, null), null, 2, null));
                    Intrinsics.checkNotNullExpressionValue(just, "just(this)");
                    return just;
                }
                tonFragmentInteractor = this.tonFragmentInteractor;
                return tonFragmentInteractor.buyProduct(TonFragmentItem.Product.this.getUsername(), TonFragmentItem.Product.this.getPrice());
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$buyUsername$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1712invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1712invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    ((FragmentUsernamesView) FragmentUsernamesPresenter.this.getViewState()).showActionSuccess();
                } else if (result instanceof Result.Error) {
                    ErrorModel error = ((Result.Error) result).getError();
                    resourceManager = FragmentUsernamesPresenter.this.resourceManager;
                    ((FragmentUsernamesView) FragmentUsernamesPresenter.this.getViewState()).showActionError(error.getMessage(resourceManager));
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$buyUsername$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        subscribeToQueryChanges();
        renderGlobalState(GlobalState.Progress.INSTANCE);
        loadProducts$default(this, false, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Observable<Result<List<TonFragmentProduct>>> getLoadProductsObservable() {
        return this.tonFragmentInteractor.getUsernames(getSortingType(), this.query);
    }

    private final void subscribeToQueryChanges() {
        Observable<String> debounce = this.querySubject.debounce(500L, TimeUnit.MILLISECONDS);
        final FragmentUsernamesPresenter$subscribeToQueryChanges$1 fragmentUsernamesPresenter$subscribeToQueryChanges$1 = new Function1<String, String>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$subscribeToQueryChanges$1
            @Override // kotlin.jvm.functions.Function1
            public final String invoke(String rawQuery) {
                CharSequence trim;
                Intrinsics.checkNotNullParameter(rawQuery, "rawQuery");
                trim = StringsKt__StringsKt.trim(rawQuery);
                String obj = trim.toString();
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < obj.length(); i++) {
                    char charAt = obj.charAt(i);
                    if (!Intrinsics.areEqual(String.valueOf(charAt), "@")) {
                        sb.append(charAt);
                    }
                }
                String sb2 = sb.toString();
                Intrinsics.checkNotNullExpressionValue(sb2, "filterNotTo(StringBuilder(), predicate).toString()");
                return sb2;
            }
        };
        Observable<R> map = debounce.map(new Function() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                String subscribeToQueryChanges$lambda$7;
                subscribeToQueryChanges$lambda$7 = FragmentUsernamesPresenter.subscribeToQueryChanges$lambda$7(Function1.this, obj);
                return subscribeToQueryChanges$lambda$7;
            }
        });
        final Function1<String, Boolean> function1 = new Function1<String, Boolean>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$subscribeToQueryChanges$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(String newQuery) {
                String str;
                Intrinsics.checkNotNullParameter(newQuery, "newQuery");
                boolean z = true;
                if (!(newQuery.length() > 0)) {
                    str = FragmentUsernamesPresenter.this.query;
                    if (!(str.length() > 0)) {
                        z = false;
                    }
                }
                return Boolean.valueOf(z);
            }
        };
        Observable observeOn = map.filter(new Predicate() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Predicate
            public final boolean test(Object obj) {
                boolean subscribeToQueryChanges$lambda$8;
                subscribeToQueryChanges$lambda$8 = FragmentUsernamesPresenter.subscribeToQueryChanges$lambda$8(Function1.this, obj);
                return subscribeToQueryChanges$lambda$8;
            }
        }).distinctUntilChanged().observeOn(this.schedulersProvider.mo1010io());
        final Function1<String, ObservableSource<? extends Result<? extends List<? extends TonFragmentProduct>>>> function12 = new Function1<String, ObservableSource<? extends Result<? extends List<? extends TonFragmentProduct>>>>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$subscribeToQueryChanges$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<List<TonFragmentProduct>>> invoke(String newQuery) {
                Observable loadProductsObservable;
                Intrinsics.checkNotNullParameter(newQuery, "newQuery");
                FragmentUsernamesPresenter.this.query = newQuery;
                loadProductsObservable = FragmentUsernamesPresenter.this.getLoadProductsObservable();
                return loadProductsObservable;
            }
        };
        Observable observeOn2 = observeOn.switchMap(new Function() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToQueryChanges$lambda$9;
                subscribeToQueryChanges$lambda$9 = FragmentUsernamesPresenter.subscribeToQueryChanges$lambda$9(Function1.this, obj);
                return subscribeToQueryChanges$lambda$9;
            }
        }).observeOn(this.schedulersProvider.mo1009ui());
        Intrinsics.checkNotNullExpressionValue(observeOn2, "private fun subscribeToQ…     .autoDispose()\n    }");
        Disposable subscribe = observeOn2.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends TonFragmentProduct>>, Unit>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends TonFragmentProduct>> result) {
                m1714invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1714invoke(Result<? extends List<? extends TonFragmentProduct>> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends TonFragmentProduct>> result = it;
                if (result instanceof Result.Success) {
                    FragmentUsernamesPresenter.this.onLoadProductsSuccess((List) ((Result.Success) result).getData());
                } else if (result instanceof Result.Loading) {
                    FragmentUsernamesPresenter.this.renderGlobalState(GlobalState.Progress.INSTANCE);
                } else if (result instanceof Result.Error) {
                    FragmentUsernamesPresenter.this.onLoadProductsError((Result.Error) result);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.fragment.usernames.FragmentUsernamesPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String subscribeToQueryChanges$lambda$7(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (String) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean subscribeToQueryChanges$lambda$8(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return ((Boolean) tmp0.invoke(obj)).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ObservableSource subscribeToQueryChanges$lambda$9(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onLoadProductsSuccess(List<TonFragmentProduct> list) {
        if (list.isEmpty()) {
            renderGlobalState(GlobalState.Empty.Common.INSTANCE);
            return;
        }
        List<TonFragmentItem.Product> mapTonFragmentProductToUi = TonFragmentProductUiMappingKt.mapTonFragmentProductToUi(list, this.resourceManager);
        this.productsItems = mapTonFragmentProductToUi;
        TonFragmentItem.Product[] productArr = (TonFragmentItem.Product[]) mapTonFragmentProductToUi.toArray(new TonFragmentItem.Product[0]);
        renderItems((BaseNode[]) Arrays.copyOf(productArr, productArr.length), true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onLoadProductsError(Result.Error<? extends List<TonFragmentProduct>> error) {
        if (error.getError().isNoConnectionStatus()) {
            renderGlobalState(GlobalState.NoInternet.INSTANCE);
            return;
        }
        renderGlobalState(GlobalState.Unexpected.INSTANCE);
        ((FragmentUsernamesView) getViewState()).showErrorToast(error, this.resourceManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderGlobalState(GlobalState globalState) {
        renderItems(new BaseNode[]{new GlobalStateItem(globalState)}, false);
    }

    private final void renderItems(BaseNode[] baseNodeArr, boolean z) {
        List<BaseNode> mutableList;
        FragmentUsernamesView fragmentUsernamesView = (FragmentUsernamesView) getViewState();
        mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) getRootItems());
        mutableList.add(new SortingListHeaderItem(this.itemsHeaderText, z));
        CollectionsKt__MutableCollectionsKt.addAll(mutableList, baseNodeArr);
        fragmentUsernamesView.renderItems(mutableList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<BaseNode> initRootItems() {
        List<BaseNode> listOfNotNull;
        listOfNotNull = CollectionsKt__CollectionsKt.listOfNotNull(new AnimatedHeaderItem(C3630R.raw.fork_fragment_usernames, this.resourceManager.getString(C3630R.string.fragment_usernames_description), null, 4, null));
        return listOfNotNull;
    }
}
