package com.iMe.p031ui.wallet.crypto.create;

import com.iMe.model.dialog.RadioCellsListDialogModel;
import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
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
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3417R;
/* compiled from: CreateWalletPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter */
/* loaded from: classes3.dex */
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
        lazy = LazyKt__LazyJVMKt.lazy(new CreateWalletPresenter$wordsCountItems$2(this));
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
                Observable<Result<Wallet>> observeOn = this.cryptoWalletInteractor.importWallet(StringExtKt.joinBySpace(((CreateWalletScreenType.WordsCheck) this.screenType).getSecretWords()), ((CreateWalletScreenType.WordsCheck) this.screenType).getPassword(), this.cryptoAccessManager.isAnyWalletCreated() ? "" : ((CreateWalletScreenType.WordsCheck) this.screenType).getPin(), this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo698ui());
                Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
                Disposable subscribe = RxExtKt.withLoadingUpdate(observeOn, new CreateWalletPresenter$$ExternalSyntheticLambda0((CreateWalletView) getViewState())).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2139x69d5d2cf(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2140x69d5d2d0((BaseView) getViewState())));
                Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
                BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
                return;
            }
            confirmBackUpCreated();
        }
    }

    public final void onCreateNewEmptyWalletClick() {
        String walletPassword = this.cryptoAccessManager.getWalletPassword();
        Observable<Result<Wallet>> observeOn = this.cryptoWalletInteractor.createLocalWallet(this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        Disposable subscribe = RxExtKt.withLoadingUpdate(observeOn, new CreateWalletPresenter$$ExternalSyntheticLambda0((CreateWalletView) getViewState())).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2137x1004bc19(walletPassword, this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2138x1004bc1a((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void searchMnemonicWordsSuggestions(String query) {
        Intrinsics.checkNotNullParameter(query, "query");
        this.lastSearchQuery = query;
        this.searchQuerySubject.onNext(query);
    }

    public final void validateSeed(String seed) {
        Intrinsics.checkNotNullParameter(seed, "seed");
        if (this.screenType instanceof CreateWalletScreenType.Import) {
            boolean z = this.cryptoAccessManager.getWalletPassword().length() > 0;
            Observable<R> flatMap = this.walletInteractor.isValidSeed(seed, this.cryptoPreferenceHelper.getCurrentBlockchainType()).flatMap(new C2146x9ee4cc57(new CreateWalletPresenter$validateSeed$$inlined$flatMapSuccess$1(z, this, seed)));
            Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
            Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
            Disposable subscribe = RxExtKt.withLoadingUpdate(observeOn, new CreateWalletPresenter$$ExternalSyntheticLambda0((CreateWalletView) getViewState())).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2143x1747f87b(this, z, seed)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2144x1747f87c((BaseView) getViewState())));
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
        Observable<String> subscribeOn = this.searchQuerySubject.debounce(200L, TimeUnit.MILLISECONDS).distinctUntilChanged().subscribeOn(this.schedulersProvider.mo699io());
        final CreateWalletPresenter$subscribeToQueryChanges$1 createWalletPresenter$subscribeToQueryChanges$1 = new CreateWalletPresenter$subscribeToQueryChanges$1(this);
        Observable observeOn = subscribeOn.switchMap(new Function() { // from class: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ObservableSource subscribeToQueryChanges$lambda$6;
                subscribeToQueryChanges$lambda$6 = CreateWalletPresenter.subscribeToQueryChanges$lambda$6(Function1.this, obj);
                return subscribeToQueryChanges$lambda$6;
            }
        }).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "private fun subscribeToQ…     .autoDispose()\n    }");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2141x40636172(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2142x40636173(null)));
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
        String string = this.resourceManager.getString(C3417R.string.wallet_import_change_words_count_dialog_title);
        List<Integer> wordsCountItems = getWordsCountItems();
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(wordsCountItems, 10);
        ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
        for (Number number : wordsCountItems) {
            int intValue = number.intValue();
            boolean z = true;
            String string2 = this.resourceManager.getString(C3417R.string.wallet_import_words_count, Integer.valueOf(intValue));
            if (this.selectedWordsCount != intValue) {
                z = false;
            }
            arrayList.add(TuplesKt.m85to(string2, Boolean.valueOf(z)));
        }
        return new RadioCellsListDialogModel(string, null, arrayList, this.resourceManager.getString(C3417R.string.common_cancel), 2, null);
    }

    /* compiled from: CreateWalletPresenter.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletPresenter$Companion */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
