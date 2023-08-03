package com.iMe.p031ui.wallet.crypto.token;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.wallet.crypto.token.TokenManagementFragment;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.utils.crypto.NetworksHelper;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.interactor.wallet.WalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.wallet.token.Token;
import com.iMe.storage.domain.model.wallet.token.TokenDetailed;
import com.iMe.storage.domain.model.wallet.token.TokenListInfo;
import com.iMe.storage.domain.model.wallet.token.TokenListsData;
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
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3419R;
import timber.log.Timber;
/* compiled from: TokenManagementPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter */
/* loaded from: classes4.dex */
public final class TokenManagementPresenter extends BasePresenter<TokenManagementView> {
    private String address;
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper cryptoPreferenceHelper;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private boolean isCustomToken;
    private boolean isSearchErrorObtained;
    private final ResourceManager resourceManager;
    private final RxEventBus rxEventBus;
    private final SchedulersProvider schedulersProvider;
    private final TokenManagementFragment.ScreenType screenType;
    private Network selectedNetwork;
    private TokenDetailed tokenDetailed;
    private TokenListsData tokenListsData;
    private final Lazy validationErrorText$delegate;
    private final WalletInteractor walletInteractor;

    public TokenManagementPresenter(TokenManagementFragment.ScreenType screenType, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper cryptoPreferenceHelper, CryptoWalletInteractor cryptoWalletInteractor, ResourceManager resourceManager, RxEventBus rxEventBus, SchedulersProvider schedulersProvider, WalletInteractor walletInteractor) {
        Lazy lazy;
        Intrinsics.checkNotNullParameter(screenType, "screenType");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(rxEventBus, "rxEventBus");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(walletInteractor, "walletInteractor");
        this.screenType = screenType;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoPreferenceHelper = cryptoPreferenceHelper;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.resourceManager = resourceManager;
        this.rxEventBus = rxEventBus;
        this.schedulersProvider = schedulersProvider;
        this.walletInteractor = walletInteractor;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<String>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$validationErrorText$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final String invoke() {
                ResourceManager resourceManager2;
                resourceManager2 = TokenManagementPresenter.this.resourceManager;
                return resourceManager2.getString(C3419R.string.wallet_tokens_management_token_address_invalid);
            }
        });
        this.validationErrorText$delegate = lazy;
        this.address = "";
        this.selectedNetwork = getInitialNetwork();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Token getToken() {
        return new Token(this.address, this.selectedNetwork.getId());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String getValidationErrorText() {
        return (String) this.validationErrorText$delegate.getValue();
    }

    public final void onAddressUpdated(String addressQuery) {
        Intrinsics.checkNotNullParameter(addressQuery, "addressQuery");
        if (Intrinsics.areEqual(this.address, addressQuery)) {
            return;
        }
        this.address = addressQuery;
        resetImportScreen();
    }

    public final void onAddressScanned(final String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.isValidAddress(text, this.selectedNetwork.getBlockchainType()).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$onAddressScanned$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1471invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1471invoke(Result<? extends Boolean> it) {
                String validationErrorText;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (!(result instanceof Result.Success) || !((Boolean) ((Result.Success) result).getData()).booleanValue()) {
                    validationErrorText = TokenManagementPresenter.this.getValidationErrorText();
                    ((TokenManagementView) TokenManagementPresenter.this.getViewState()).showToast(validationErrorText);
                    return;
                }
                ((TokenManagementView) TokenManagementPresenter.this.getViewState()).setScannedAddressText(text);
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$onAddressScanned$$inlined$subscribeWithErrorHandle$default$2
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

    public final void onActionButtonClicked() {
        TokenManagementFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof TokenManagementFragment.ScreenType.Import) {
            if (this.tokenDetailed == null) {
                loadTokenInfo();
            } else if (this.isCustomToken) {
                showImportConfirmationDialog();
            } else {
                showEnableConfirmationDialog();
            }
        } else if (screenType instanceof TokenManagementFragment.ScreenType.View) {
            showDeleteConfirmationDialog();
        }
    }

    public final void onVerificationClicked() {
        List<TokenListInfo> tokenLists;
        TokenManagementView tokenManagementView = (TokenManagementView) getViewState();
        TokenListsData tokenListsData = this.tokenListsData;
        if (tokenListsData == null || (tokenLists = tokenListsData.getTokenLists()) == null) {
            return;
        }
        tokenManagementView.showTokensListsDialog(tokenLists);
    }

    public final void startChooseNetworkDialog() {
        if (this.screenType instanceof TokenManagementFragment.ScreenType.View) {
            return;
        }
        ((TokenManagementView) getViewState()).showChooseNetworkDialog(this.selectedNetwork, NetworksHelper.INSTANCE.getNetworksByBlockchains(this.cryptoAccessManager.getLoggedIndWalletsBlockchains()), new Function1<Network, Unit>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$startChooseNetworkDialog$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Network network) {
                invoke2(network);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Network newNetwork) {
                Network network;
                Intrinsics.checkNotNullParameter(newNetwork, "newNetwork");
                TokenManagementPresenter.this.selectedNetwork = newNetwork;
                TokenManagementPresenter.this.resetImportScreen();
                network = TokenManagementPresenter.this.selectedNetwork;
                ((TokenManagementView) TokenManagementPresenter.this.getViewState()).setupNetwork(network);
            }
        });
    }

    public final void copyAddressToClipboard() {
        String address;
        TokenManagementView tokenManagementView = (TokenManagementView) getViewState();
        TokenManagementFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof TokenManagementFragment.ScreenType.Import) {
            TokenDetailed tokenDetailed = this.tokenDetailed;
            address = tokenDetailed != null ? tokenDetailed.getAddress() : null;
            if (address == null) {
                address = "";
            }
        } else if (!(screenType instanceof TokenManagementFragment.ScreenType.View)) {
            throw new NoWhenBranchMatchedException();
        } else {
            address = ((TokenManagementFragment.ScreenType.View) screenType).getToken().getAddress();
        }
        tokenManagementView.copyAddressToClipboard(address);
    }

    public final void openTokenScannerUrl() {
        TokenManagementView tokenManagementView = (TokenManagementView) getViewState();
        TokenDetailed tokenDetailed = this.tokenDetailed;
        String contractUrl = tokenDetailed != null ? tokenDetailed.getContractUrl() : null;
        if (contractUrl == null) {
            contractUrl = "";
        }
        tokenManagementView.openBrowserUrl(contractUrl);
    }

    public final void enableToken() {
        Observable<Result<Boolean>> observeOn = this.walletInteractor.setTokenVisibility(getToken(), true).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$enableToken$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1469invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1469invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    TokenManagementPresenter.this.onTokenStatusChanged(C3419R.string.wallet_tokens_management_add_success);
                } else if (result instanceof Result.Error) {
                    resourceManager = TokenManagementPresenter.this.resourceManager;
                    ((TokenManagementView) TokenManagementPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$enableToken$$inlined$subscribeWithErrorHandle$default$2
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

    public final void deleteToken() {
        Observable<Result<Boolean>> observeOn = this.walletInteractor.detachCustomToken(getToken()).observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$deleteToken$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1468invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1468invoke(Result<? extends Boolean> it) {
                ResourceManager resourceManager;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Boolean> result = it;
                if (result instanceof Result.Success) {
                    TokenManagementPresenter.this.onTokenStatusChanged(C3419R.string.wallet_tokens_management_delete_success);
                } else if (result instanceof Result.Error) {
                    resourceManager = TokenManagementPresenter.this.resourceManager;
                    ((TokenManagementView) TokenManagementPresenter.this.getViewState()).showErrorToast((Result.Error) result, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$deleteToken$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        ((TokenManagementView) getViewState()).setupNetwork(this.selectedNetwork);
        TokenManagementFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof TokenManagementFragment.ScreenType.Import) {
            setupActionButtonState(false);
        } else if (screenType instanceof TokenManagementFragment.ScreenType.View) {
            if (((TokenManagementFragment.ScreenType.View) screenType).isCustomToken() != null) {
                this.isCustomToken = ((TokenManagementFragment.ScreenType.View) this.screenType).isCustomToken().booleanValue();
                setupActionButtonState(true);
            }
            setupTokenData(((TokenManagementFragment.ScreenType.View) this.screenType).getToken());
            loadTokenInfo();
        }
    }

    private final void loadTokenInfo() {
        Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.isValidAddress(this.address, this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo717io());
        final Function1<Result<? extends Boolean>, Result<? extends Boolean>> function1 = new Function1<Result<? extends Boolean>, Result<? extends Boolean>>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$loadTokenInfo$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Result<? extends Boolean> invoke(Result<? extends Boolean> result) {
                return invoke2((Result<Boolean>) result);
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Result<Boolean> invoke2(Result<Boolean> validationResult) {
                String validationErrorText;
                Intrinsics.checkNotNullParameter(validationResult, "validationResult");
                if (!(validationResult instanceof Result.Success) || ((Boolean) ((Result.Success) validationResult).getData()).booleanValue()) {
                    return validationResult;
                }
                validationErrorText = TokenManagementPresenter.this.getValidationErrorText();
                return Result.Companion.error$default(Result.Companion, new ErrorModel(validationErrorText, FirebaseFunctionsErrorHandler.ErrorStatus.VALIDATION_ERROR, null, 4, null), null, 2, null);
            }
        };
        Observable<R> map = observeOn.map(new Function() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result loadTokenInfo$lambda$3;
                loadTokenInfo$lambda$3 = TokenManagementPresenter.loadTokenInfo$lambda$3(Function1.this, obj);
                return loadTokenInfo$lambda$3;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "private fun loadTokenInf…     .autoDispose()\n    }");
        Observable flatMap = map.flatMap(new C2214x8acd2b70(new Function1<Result<? extends Boolean>, ObservableSource<? extends Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>>>>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$loadTokenInfo$$inlined$flatMapSuccess$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final ObservableSource<? extends Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>>> invoke(Result<? extends Boolean> result) {
                WalletInteractor walletInteractor;
                Token token;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Result error$default = Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null);
                        Intrinsics.checkNotNull(error$default, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                        return Observable.just(error$default);
                    }
                    return Observable.empty();
                }
                walletInteractor = TokenManagementPresenter.this.walletInteractor;
                token = TokenManagementPresenter.this.getToken();
                Observable<Result<Pair<TokenDetailed, Boolean>>> tokenInfo = walletInteractor.getTokenInfo(token);
                T viewState = TokenManagementPresenter.this.getViewState();
                Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
                Observable withLoadingDialog = RxExtKt.withLoadingDialog((Observable) tokenInfo, (BaseView) viewState, false);
                final TokenManagementPresenter tokenManagementPresenter = TokenManagementPresenter.this;
                Observable flatMap2 = withLoadingDialog.flatMap(new C2214x8acd2b70(new Function1<Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>>, ObservableSource<? extends Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>>>>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$loadTokenInfo$lambda$6$$inlined$flatMapSuccess$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final ObservableSource<? extends Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>>> invoke(final Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>> result2) {
                        WalletInteractor walletInteractor2;
                        Token token2;
                        Intrinsics.checkNotNullParameter(result2, "result");
                        if (!(result2 instanceof Result.Success)) {
                            if (result2 instanceof Result.Error) {
                                Result error$default2 = Result.Companion.error$default(Result.Companion, ((Result.Error) result2).getError(), null, 2, null);
                                Intrinsics.checkNotNull(error$default2, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.flatMapSuccess");
                                return Observable.just(error$default2);
                            }
                            return Observable.empty();
                        }
                        walletInteractor2 = TokenManagementPresenter.this.walletInteractor;
                        token2 = TokenManagementPresenter.this.getToken();
                        Observable<Result<TokenListsData>> tokenListsData = walletInteractor2.getTokenListsData(token2);
                        final TokenManagementPresenter tokenManagementPresenter2 = TokenManagementPresenter.this;
                        ObservableSource map2 = tokenListsData.map(new C2214x8acd2b70(new Function1<Result<? extends TokenListsData>, Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>>>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$loadTokenInfo$lambda$6$lambda$5$$inlined$mapSuccess$1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // kotlin.jvm.functions.Function1
                            public final Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>> invoke(Result<? extends TokenListsData> result3) {
                                Intrinsics.checkNotNullParameter(result3, "result");
                                if (!(result3 instanceof Result.Success)) {
                                    if (result3 instanceof Result.Error) {
                                        Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>> error$default3 = Result.Companion.error$default(Result.Companion, ((Result.Error) result3).getError(), null, 2, null);
                                        Intrinsics.checkNotNull(error$default3, "null cannot be cast to non-null type R of com.iMe.storage.domain.utils.extentions.ObservableExtKt.mapSuccess");
                                        return error$default3;
                                    } else if (result3 instanceof Object) {
                                        return result3;
                                    } else {
                                        return null;
                                    }
                                }
                                TokenManagementPresenter.this.tokenListsData = (TokenListsData) result3.getData();
                                return result2;
                            }
                        }));
                        Intrinsics.checkNotNullExpressionValue(map2, "crossinline body: (T) ->…ult as? R\n        }\n    }");
                        return map2;
                    }
                }));
                Intrinsics.checkNotNullExpressionValue(flatMap2, "crossinline body: (T) ->…e.empty()\n        }\n    }");
                return flatMap2;
            }
        }));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn2 = flatMap.observeOn(this.schedulersProvider.mo716ui());
        Intrinsics.checkNotNullExpressionValue(observeOn2, "private fun loadTokenInf…     .autoDispose()\n    }");
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = observeOn2.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>>, Unit>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>> result) {
                m1470invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1470invoke(Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>> it) {
                ResourceManager resourceManager;
                boolean z;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends Pair<? extends TokenDetailed, ? extends Boolean>> result = it;
                if (result instanceof Result.Success) {
                    Pair pair = (Pair) ((Result.Success) result).getData();
                    TokenManagementPresenter.this.isCustomToken = ((Boolean) pair.getSecond()).booleanValue();
                    TokenManagementPresenter.this.setupActionButtonState(true);
                    TokenManagementPresenter.this.setupTokenData((TokenDetailed) pair.getFirst());
                } else if (result instanceof Result.Error) {
                    Result.Error error = (Result.Error) result;
                    if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.CryptoErrorStatus.ERR_TOKEN_NOT_FOUND) {
                        TokenManagementPresenter.this.isSearchErrorObtained = true;
                        TokenManagementPresenter.this.setupActionButtonState(false);
                        z = TokenManagementPresenter.this.isSearchErrorObtained;
                        ((TokenManagementView) TokenManagementPresenter.this.getViewState()).updateErrorTextVisibility(z);
                        return;
                    }
                    resourceManager = TokenManagementPresenter.this.resourceManager;
                    ((TokenManagementView) TokenManagementPresenter.this.getViewState()).showErrorToast(error, resourceManager);
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$loadTokenInfo$$inlined$subscribeWithErrorHandle$default$2
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final Result loadTokenInfo$lambda$3(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Result) tmp0.invoke(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void resetImportScreen() {
        boolean isBlank;
        this.isCustomToken = false;
        this.isSearchErrorObtained = false;
        this.tokenDetailed = null;
        this.tokenListsData = null;
        ((TokenManagementView) getViewState()).updateErrorTextVisibility(this.isSearchErrorObtained);
        ((TokenManagementView) getViewState()).resetImportScreen();
        isBlank = StringsKt__StringsJVMKt.isBlank(this.address);
        setupActionButtonState(!isBlank);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupActionButtonState(boolean z) {
        ((TokenManagementView) getViewState()).setupActionButtonState(this.isCustomToken, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setupTokenData(TokenDetailed tokenDetailed) {
        this.tokenDetailed = tokenDetailed;
        this.address = tokenDetailed.getAddress();
        TokenManagementView tokenManagementView = (TokenManagementView) getViewState();
        String avatarUrl = tokenDetailed.getAvatarUrl();
        String address = tokenDetailed.getAddress();
        String ticker = tokenDetailed.getTicker();
        String name = tokenDetailed.getName();
        String valueOf = String.valueOf(tokenDetailed.getDecimals());
        Network networkById = NetworksHelper.getNetworkById(tokenDetailed.getNetworkId());
        TokenListsData tokenListsData = this.tokenListsData;
        tokenManagementView.setupTokenData(avatarUrl, address, ticker, name, valueOf, networkById, tokenListsData != null ? Integer.valueOf(tokenListsData.getVerifiedCount()) : null);
    }

    private final Network getInitialNetwork() {
        TokenManagementFragment.ScreenType screenType = this.screenType;
        if (screenType instanceof TokenManagementFragment.ScreenType.Import) {
            return this.cryptoPreferenceHelper.getNetwork();
        }
        if (screenType instanceof TokenManagementFragment.ScreenType.View) {
            return NetworksHelper.getNetworkById(((TokenManagementFragment.ScreenType.View) screenType).getToken().getNetworkId());
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onTokenStatusChanged(int i) {
        this.rxEventBus.publish(new DomainRxEvents.TokensSettingsChanged(null, false, 3, null));
        ((TokenManagementView) getViewState()).showToast(this.resourceManager.getString(i));
        ((TokenManagementView) getViewState()).finishScreen();
    }

    private final void showEnableConfirmationDialog() {
        ((TokenManagementView) getViewState()).showEnableConfirmationDialog(new DialogModel(this.resourceManager.getString(C3419R.string.wallet_tokens_management_enable_title), this.resourceManager.getString(C3419R.string.wallet_tokens_management_enable_description), this.resourceManager.getString(C3419R.string.common_cancel), this.resourceManager.getString(C3419R.string.emoji_premium_title_on_alert)));
    }

    private final void showImportConfirmationDialog() {
        ((TokenManagementView) getViewState()).showEnableConfirmationDialog(new DialogModel(this.resourceManager.getString(C3419R.string.wallet_tokens_management_import_confirmation_title), this.resourceManager.getString(C3419R.string.wallet_tokens_management_import_confirmation_description), this.resourceManager.getString(C3419R.string.common_cancel), this.resourceManager.getString(C3419R.string.wallet_tokens_management_import_confirmation_import)));
    }

    private final void showDeleteConfirmationDialog() {
        ((TokenManagementView) getViewState()).showDeleteConfirmationDialog(new DialogModel(this.resourceManager.getString(C3419R.string.wallet_tokens_management_delete_title), this.resourceManager.getString(C3419R.string.wallet_tokens_management_delete_description), this.resourceManager.getString(C3419R.string.common_cancel), this.resourceManager.getString(C3419R.string.favorite_folder_delete)));
    }
}
