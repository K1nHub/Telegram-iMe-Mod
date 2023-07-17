package com.iMe.p031ui.wallet.crypto.token;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.wallet.crypto.token.TokenManagementFragment;
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
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import moxy.InjectViewState;
import org.telegram.messenger.C3417R;
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
        lazy = LazyKt__LazyJVMKt.lazy(new TokenManagementPresenter$validationErrorText$2(this));
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

    public final void onAddressScanned(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.isValidAddress(text, this.selectedNetwork.getBlockchainType()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2212xa396b9f6(this, text)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2213xa396b9f7((BaseView) getViewState())));
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
        ((TokenManagementView) getViewState()).showChooseNetworkDialog(this.selectedNetwork, NetworksHelper.INSTANCE.getNetworksByBlockchains(this.cryptoAccessManager.getLoggedIndWalletsBlockchains()), new TokenManagementPresenter$startChooseNetworkDialog$1(this));
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
        Observable<Result<Boolean>> observeOn = this.walletInteractor.setTokenVisibility(getToken(), true).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2206xd379f861(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2207xd379f862((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void deleteToken() {
        Observable<Result<Boolean>> observeOn = this.walletInteractor.detachCustomToken(getToken()).observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "walletInteractor\n       …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog((Observable) observeOn, (BaseView) viewState, false).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2204x76968d39(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2205x76968d3a((BaseView) getViewState())));
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
        Observable<Result<Boolean>> observeOn = this.cryptoWalletInteractor.isValidAddress(this.address, this.cryptoPreferenceHelper.getCurrentBlockchainType()).observeOn(this.schedulersProvider.mo699io());
        final TokenManagementPresenter$loadTokenInfo$1 tokenManagementPresenter$loadTokenInfo$1 = new TokenManagementPresenter$loadTokenInfo$1(this);
        Observable<R> map = observeOn.map(new Function() { // from class: com.iMe.ui.wallet.crypto.token.TokenManagementPresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                Result loadTokenInfo$lambda$3;
                loadTokenInfo$lambda$3 = TokenManagementPresenter.loadTokenInfo$lambda$3(Function1.this, obj);
                return loadTokenInfo$lambda$3;
            }
        });
        Intrinsics.checkNotNullExpressionValue(map, "private fun loadTokenInf…     .autoDispose()\n    }");
        Observable flatMap = map.flatMap(new C2214x8acd2b70(new TokenManagementPresenter$loadTokenInfo$$inlined$flatMapSuccess$1(this)));
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn2 = flatMap.observeOn(this.schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(observeOn2, "private fun loadTokenInf…     .autoDispose()\n    }");
        Disposable subscribe = observeOn2.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2208xaa0b87ac(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2209xaa0b87ad((BaseView) getViewState())));
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
        ((TokenManagementView) getViewState()).showEnableConfirmationDialog(new DialogModel(this.resourceManager.getString(C3417R.string.wallet_tokens_management_enable_title), this.resourceManager.getString(C3417R.string.wallet_tokens_management_enable_description), this.resourceManager.getString(C3417R.string.common_cancel), this.resourceManager.getString(C3417R.string.emoji_premium_title_on_alert)));
    }

    private final void showImportConfirmationDialog() {
        ((TokenManagementView) getViewState()).showEnableConfirmationDialog(new DialogModel(this.resourceManager.getString(C3417R.string.wallet_tokens_management_import_confirmation_title), this.resourceManager.getString(C3417R.string.wallet_tokens_management_import_confirmation_description), this.resourceManager.getString(C3417R.string.common_cancel), this.resourceManager.getString(C3417R.string.wallet_tokens_management_import_confirmation_import)));
    }

    private final void showDeleteConfirmationDialog() {
        ((TokenManagementView) getViewState()).showDeleteConfirmationDialog(new DialogModel(this.resourceManager.getString(C3417R.string.wallet_tokens_management_delete_title), this.resourceManager.getString(C3417R.string.wallet_tokens_management_delete_description), this.resourceManager.getString(C3417R.string.common_cancel), this.resourceManager.getString(C3417R.string.favorite_folder_delete)));
    }
}
