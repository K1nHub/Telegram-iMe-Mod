package com.iMe.p031ui.wallet.crypto.create;

import com.iMe.model.dialog.RadioCellsListDialogModel;
import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.extentions.CollectionExtKt;
import com.iMe.storage.data.utils.extentions.CryptoExtKt;
import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.RxEventBus;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3419R;
import timber.log.Timber;
/* compiled from: CreateWalletPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter */
/* loaded from: classes4.dex */
public final class CreateWalletPresenter extends BasePresenter<CreateWalletView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private String lastSearchQuery;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventsBus;
    private final SchedulersProvider schedulersProvider;
    private final CreateWalletScreenType screenType;
    private final PublishSubject<String> searchQuerySubject;
    private int selectedWordsCount;
    private final CryptoWalletInteractor walletInteractor;
    private final Lazy wordsCountItems$delegate;

    static {
        new Companion(null);
    }

    public CreateWalletPresenter(CreateWalletScreenType screenType, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, ResourceManager resourceManager, RxEventBus rxEventsBus, SchedulersProvider schedulersProvider, CryptoWalletInteractor walletInteractor) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventsBus, "rxEventsBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.screenType = screenType;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.resourceManager = resourceManager;
        this.rxEventsBus = rxEventsBus;
        this.schedulersProvider = schedulersProvider;
        this.walletInteractor = walletInteractor;
        PublishSubject<String> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.searchQuerySubject = create;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<List<Integer>>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$wordsCountItems$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<Integer> invoke() {
                List<Integer> initWordsCountItems;
                initWordsCountItems = CreateWalletPresenter.this.initWordsCountItems();
                return initWordsCountItems;
            }
        });
        this.wordsCountItems$delegate = lazy;
        this.lastSearchQuery = "";
        this.selectedWordsCount = getInitialWordsCount();
    }

    private final List<Integer> getWordsCountItems() {
        return (List) this.wordsCountItems$delegate.getValue();
    }

    public final void onSelectWordsCountClick() {
        ((CreateWalletView) getViewState()).showSelectWordsCountDialog(getSelectWordsCountDialogModel());
    }

    public final void onWordsCountSelected(int i) {
        Integer num = (Integer) CollectionsKt.getOrNull(getWordsCountItems(), i);
        this.selectedWordsCount = num != null ? num.intValue() : 24;
        ((CreateWalletView) getViewState()).onWordsCountSelected(this.selectedWordsCount);
    }

    public final void onSavePdfClick() {
        if (this.screenType instanceof CreateWalletScreenType.SecretWords) {
            ((CreateWalletView) getViewState()).generateAndOpenPdf(((CreateWalletScreenType.SecretWords) this.screenType).getAddress(), ((CreateWalletScreenType.SecretWords) this.screenType).getSecretWords());
        }
    }

    public final void onSecretWordsCheckCompleted() {
        CreateWalletScreenType createWalletScreenType = this.screenType;
        if (createWalletScreenType instanceof CreateWalletScreenType.WordsCheck) {
            if (((CreateWalletScreenType.WordsCheck) createWalletScreenType).getPassword().length() > 0) {
                Observable<Result<Wallet>> observeOn = this.cryptoWalletInteractor.importWallet(StringExtKt.joinBySpace(((CreateWalletScreenType.WordsCheck) this.screenType).getSecretWords()), ((CreateWalletScreenType.WordsCheck) this.screenType).getPassword(), this.cryptoAccessManager.isAnyWalletCreated() ? "" : ((CreateWalletScreenType.WordsCheck) this.screenType).getPin(), this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo716ui());
                Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
                Observable withLoadingUpdate = RxExtKt.withLoadingUpdate(observeOn, new CreateWalletPresenter$$ExternalSyntheticLambda0((CreateWalletView) getViewState()));
                final BaseView baseView = (BaseView) getViewState();
                Disposable subscribe = withLoadingUpdate.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Wallet>, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Wallet> result) {
                        m1440invoke(result);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke  reason: collision with other method in class */
                    public final void m1440invoke(Result<? extends Wallet> it) {
                        ResourceManager resourceManager;
                        Intrinsics.checkNotNullExpressionValue(it, "it");
                        Result<? extends Wallet> result = it;
                        if (result instanceof Result.Success) {
                            CreateWalletPresenter.this.confirmBackUpCreated();
                        } else if (result instanceof Result.Error) {
                            resourceManager = CreateWalletPresenter.this.resourceManager;
                            ((CreateWalletView) CreateWalletPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                        }
                    }
                }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$onSecretWordsCheckCompleted$$inlined$subscribeWithErrorHandle$default$2
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
                        BaseView baseView2 = BaseView.this;
                        if (baseView2 != null) {
                            String message = th.getMessage();
                            if (message == null) {
                                message = "";
                            }
                            baseView2.showToast(message);
                        }
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
                BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
                return;
            }
            confirmBackUpCreated();
        }
    }

    public final void onCreateNewEmptyWalletClick() {
        final String walletPassword = this.cryptoAccessManager.getWalletPassword();
        Observable<Result<Wallet>> observeOn = this.cryptoWalletInteractor.createLocalWallet(this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Observable withLoadingUpdate = RxExtKt.withLoadingUpdate(observeOn, new CreateWalletPresenter$$ExternalSyntheticLambda0((CreateWalletView) getViewState()));
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingUpdate.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Wallet>, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Wallet> result) {
                m1439invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1439invoke(Result<? extends Wallet> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Wallet> result = it;
                if (result instanceof Result.Success) {
                    if (walletPassword.length() == 0) {
                        ((CreateWalletView) this.getViewState()).createNewWallet((Wallet) ((Result.Success) result).getData(), CryptoExtKt.randomString());
                    } else {
                        ((CreateWalletView) this.getViewState()).addNewWallet((Wallet) ((Result.Success) result).getData(), walletPassword);
                    }
                } else if (result instanceof Result.Error) {
                    resourceManager = this.resourceManager;
                    ((CreateWalletView) this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$onCreateNewEmptyWalletClick$$inlined$subscribeWithErrorHandle$default$2
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
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void searchMnemonicWordsSuggestions(String query) {
        Intrinsics.checkNotNullParameter(query, "query");
        this.lastSearchQuery = query;
        this.searchQuerySubject.onNext(query);
    }

    public final void validateSeed(final String seed) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        if (this.screenType instanceof CreateWalletScreenType.Import) {
            final boolean z = this.cryptoAccessManager.getWalletPassword().length() > 0;
            Observable<R> flatMap = this.walletInteractor.isValidSeed(seed, this.cryptoPreferenceHelper.getCurrentBlockchainType()).flatMap(new C2146x9ee4cc57(new Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Boolean>>>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$validateSeed$$inlined$flatMapSuccess$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final ObservableSource<? extends Result<? extends Boolean>> invoke(Result<? extends Boolean> result) {
                    CryptoWalletInteractor cryptoWalletInteractor;
                    CreateWalletScreenType createWalletScreenType;
                    CryptoPreferenceHelper cryptoPreferenceHelper;
                    Intrinsics.checkNotNullParameter(result, "result");
                    if (!(result instanceof Result.Success)) {
                        if (result instanceof Result.Error) {
                            Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                            Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                            return Observable.just(error$default);
                        }
                        return Observable.empty();
                    } else if (z && Intrinsics.areEqual(result.getData(), Boolean.TRUE)) {
                        cryptoWalletInteractor = this.cryptoWalletInteractor;
                        String str = seed;
                        createWalletScreenType = this.screenType;
                        String password = ((CreateWalletScreenType.Import) createWalletScreenType).getPassword();
                        cryptoPreferenceHelper = this.cryptoPreferenceHelper;
                        ObservableSource map = cryptoWalletInteractor.importWallet(str, password, "", cryptoPreferenceHelper.getCurrentBlockchainType()).map(new C2146x9ee4cc57(new Function1<Result<? extends Wallet>, Result<? extends Boolean>>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$validateSeed$lambda$3$$inlined$mapSuccess$1
                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // kotlin.jvm.functions.Function1
                            public final Result<? extends Boolean> invoke(Result<? extends Wallet> result2) {
                                Intrinsics.checkNotNullParameter(result2, "result");
                                if (!(result2 instanceof Result.Success)) {
                                    if (result2 instanceof Result.Error) {
                                        Result<? extends Boolean> error$default2 = Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                                        Intrinsics.checkNotNull(error$default2, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                                        return error$default2;
                                    } else if (result2 instanceof Object) {
                                        return result2;
                                    } else {
                                        return null;
                                    }
                                }
                                return Result.Companion.success(Boolean.TRUE);
                            }
                        }));
                        Intrinsics.checkNotNullExpressionValue(map, "crossinline body: (T) ->…ult as? R\n        }\n    }");
                        return map;
                    } else {
                        Observable just = Observable.just(result);
                        Intrinsics.checkNotNullExpressionValue(just, "just(validationResult)");
                        return just;
                    }
                }
            }));
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo716ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
            Observable withLoadingUpdate = RxExtKt.withLoadingUpdate(observeOn, new CreateWalletPresenter$$ExternalSyntheticLambda0((CreateWalletView) getViewState()));
            final BaseView baseView = (BaseView) getViewState();
            Disposable subscribe = withLoadingUpdate.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                    m1442invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1442invoke(Result<? extends Boolean> it) {
                    ResourceManager resourceManager;
                    ResourceManager resourceManager2;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result<? extends Boolean> result = it;
                    CreateWalletView validateSeed$lambda$5$lambda$4 = (CreateWalletView) CreateWalletPresenter.this.getViewState();
                    if (result instanceof Result.Success) {
                        Intrinsics.checkNotNullExpressionValue(validateSeed$lambda$5$lambda$4, "validateSeed$lambda$5$lambda$4");
                        BaseView.CC.showLoadingDialog$default(validateSeed$lambda$5$lambda$4, false, false, null, 6, null);
                        if (!((Boolean) ((Result.Success) result).getData()).booleanValue()) {
                            resourceManager2 = CreateWalletPresenter.this.resourceManager;
                            validateSeed$lambda$5$lambda$4.showToast(resourceManager2.getString(C3419R.string.wallet_restore_eth_error));
                        } else if (z) {
                            validateSeed$lambda$5$lambda$4.onSuccessConfirmBackUp();
                        } else {
                            validateSeed$lambda$5$lambda$4.onSuccessEnterSeed(seed, CryptoExtKt.randomString());
                        }
                    } else if (result instanceof Result.Error) {
                        Intrinsics.checkNotNullExpressionValue(validateSeed$lambda$5$lambda$4, "validateSeed$lambda$5$lambda$4");
                        BaseView.CC.showLoadingDialog$default(validateSeed$lambda$5$lambda$4, false, false, null, 6, null);
                        resourceManager = CreateWalletPresenter.this.resourceManager;
                        validateSeed$lambda$5$lambda$4.showErrorToast((Result.Error) result, resourceManager);
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$validateSeed$$inlined$subscribeWithErrorHandle$default$2
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
                    BaseView baseView2 = BaseView.this;
                    if (baseView2 != null) {
                        String message = th.getMessage();
                        if (message == null) {
                            message = "";
                        }
                        baseView2.showToast(message);
                    }
                }
            }));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        subscribeToQueryChanges();
    }

    private final void subscribeToQueryChanges() {
        Observable<String> subscribeOn = this.searchQuerySubject.debounce(200L, TimeUnit.MILLISECONDS).distinctUntilChanged().subscribeOn(this.schedulersProvider.mo717io());
        final Function1<String, ObservableSource<? extends List<? extends String>>> function1 = new Function1<String, ObservableSource<? extends List<? extends String>>>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$subscribeToQueryChanges$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends List<String>> invoke(String query) {
                CryptoWalletInteractor cryptoWalletInteractor;
                Intrinsics.checkNotNullParameter(query, "query");
                CreateWalletPresenter.this.lastSearchQuery = query;
                cryptoWalletInteractor = CreateWalletPresenter.this.cryptoWalletInteractor;
                return cryptoWalletInteractor.getMnemonicWordsSuggestions(query);
            }
        };
        Observable observeOn = subscribeOn.switchMap(new Function() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToQueryChanges$lambda$6;
                subscribeToQueryChanges$lambda$6 = CreateWalletPresenter.subscribeToQueryChanges$lambda$6(Function1.this, obj);
                return subscribeToQueryChanges$lambda$6;
            }
        }).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "private fun subscribeToQ…     .autoDispose()\n    }");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<List<? extends String>, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(List<? extends String> list) {
                m1441invoke(list);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1441invoke(List<? extends String> it) {
                String str;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                List<? extends String> list = it;
                CreateWalletView createWalletView = (CreateWalletView) CreateWalletPresenter.this.getViewState();
                if (CollectionExtKt.isSingletonList(list)) {
                    Object firstOrNull = CollectionsKt.firstOrNull(list);
                    str = CreateWalletPresenter.this.lastSearchQuery;
                    if (Intrinsics.areEqual(firstOrNull, str)) {
                        list = CollectionsKt__CollectionsKt.emptyList();
                    }
                }
                createWalletView.showWordsSuggestions(list);
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$subscribeToQueryChanges$$inlined$subscribeWithErrorHandle$default$2
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
    public static final ObservableSource subscribeToQueryChanges$lambda$6(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (ObservableSource) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void confirmBackUpCreated() {
        this.rxEventsBus.publish(DomainRxEvents.SuccessSaveBackup.INSTANCE);
        ((CreateWalletView) getViewState()).onSuccessConfirmBackUp();
    }

    private final int getInitialWordsCount() {
        CreateWalletScreenType createWalletScreenType = this.screenType;
        CreateWalletScreenType.SecretWords secretWords = createWalletScreenType instanceof CreateWalletScreenType.SecretWords ? (CreateWalletScreenType.SecretWords) createWalletScreenType : null;
        if (secretWords != null) {
            return secretWords.getWordsCount();
        }
        return 24;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Integer> initWordsCountItems() {
        IntProgression step;
        List<Integer> mutableList;
        step = RangesKt___RangesKt.step(new IntRange(12, 24), 3);
        mutableList = CollectionsKt___CollectionsKt.toMutableList(step);
        return mutableList;
    }

    private final RadioCellsListDialogModel getSelectWordsCountDialogModel() {
        int collectionSizeOrDefault;
        String string = this.resourceManager.getString(C3419R.string.wallet_import_change_words_count_dialog_title);
        List<Integer> wordsCountItems = getWordsCountItems();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(wordsCountItems, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Number number : wordsCountItems) {
            int intValue = number.intValue();
            boolean z = true;
            String string2 = this.resourceManager.getString(C3419R.string.wallet_import_words_count, Integer.valueOf(intValue));
            if (this.selectedWordsCount != intValue) {
                z = false;
            }
            arrayList.add(TuplesKt.m103to(string2, Boolean.valueOf(z)));
        }
        return new RadioCellsListDialogModel(string, null, arrayList, this.resourceManager.getString(C3419R.string.common_cancel), 2, null);
    }

    /* compiled from: CreateWalletPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$Companion */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
