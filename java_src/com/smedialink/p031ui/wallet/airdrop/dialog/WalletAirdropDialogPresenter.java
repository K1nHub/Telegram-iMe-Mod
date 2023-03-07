package com.smedialink.p031ui.wallet.airdrop.dialog;

import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.drawer.DrawerSwitchableItem;
import com.smedialink.storage.data.locale.prefs.model.WalletAirdropMetadata;
import com.smedialink.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.smedialink.storage.data.network.model.error.ErrorModel;
import com.smedialink.storage.data.network.model.error.IErrorStatus;
import com.smedialink.storage.domain.interactor.crypto.airdrop.AirdropInteractor;
import com.smedialink.storage.domain.manager.crypto.CryptoAccessManager;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropDisplayStatus;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropStatus;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropStep;
import com.smedialink.storage.domain.storage.CryptoPreferenceHelper;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt;
import com.smedialink.utils.helper.wallet.WalletHelper;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3158R;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import timber.log.Timber;
/* compiled from: WalletAirdropDialogPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter */
/* loaded from: classes3.dex */
public final class WalletAirdropDialogPresenter extends BasePresenter<WalletAirdropDialogView> {
    private final AirdropInteractor airdropInteractor;
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoPreferenceHelper preferenceHelper;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;

    public WalletAirdropDialogPresenter(AirdropInteractor airdropInteractor, CryptoAccessManager cryptoAccessManager, CryptoPreferenceHelper preferenceHelper, ResourceManager resourceManager, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(airdropInteractor, "airdropInteractor");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(preferenceHelper, "preferenceHelper");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.airdropInteractor = airdropInteractor;
        this.cryptoAccessManager = cryptoAccessManager;
        this.preferenceHelper = preferenceHelper;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
    }

    public final void acceptAirdrop() {
        CryptoPreferenceHelper cryptoPreferenceHelper = this.preferenceHelper;
        cryptoPreferenceHelper.setAirdropMetadata(WalletAirdropMetadata.copy$default(cryptoPreferenceHelper.getAirdropMetadata(), false, 0, null, null, AirdropDisplayStatus.ACCEPTED, 15, null));
        WalletAirdropDialogView walletAirdropDialogView = (WalletAirdropDialogView) getViewState();
        walletAirdropDialogView.onAcceptAirdrop();
        walletAirdropDialogView.finishScreen();
    }

    public final void rejectAirdrop() {
        CryptoPreferenceHelper cryptoPreferenceHelper = this.preferenceHelper;
        cryptoPreferenceHelper.setAirdropMetadata(WalletAirdropMetadata.copy$default(cryptoPreferenceHelper.getAirdropMetadata(), false, 0, null, null, AirdropDisplayStatus.REJECTED, 15, null));
        ((WalletAirdropDialogView) getViewState()).finishScreen();
    }

    public static /* synthetic */ void getTokensByAirdrop$default(WalletAirdropDialogPresenter walletAirdropDialogPresenter, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = walletAirdropDialogPresenter.preferenceHelper.getAirdropMetadata().getAirdropRequestId();
        }
        walletAirdropDialogPresenter.getTokensByAirdrop(str);
    }

    public final void getTokensByAirdrop(String requestId) {
        Intrinsics.checkNotNullParameter(requestId, "requestId");
        Observable flatMap = AirdropInteractor.checkAirdropStart$default(this.airdropInteractor, requestId, null, 2, null).flatMap(new Function() { // from class: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$flatMapSuccess$1
            /* JADX WARN: Incorrect types in method signature: (TT;)Lio/reactivex/ObservableSource<+TR;>; */
            @Override // io.reactivex.functions.Function
            public final ObservableSource apply(Result result) {
                AirdropInteractor airdropInteractor;
                CryptoPreferenceHelper cryptoPreferenceHelper;
                Intrinsics.checkNotNullParameter(result, "result");
                if (!(result instanceof Result.Success)) {
                    return result instanceof Result.Error ? Observable.just(Result.Companion.error$default(Result.Companion, ((Result.Error) result).getError(), null, 2, null)) : Observable.empty();
                }
                airdropInteractor = WalletAirdropDialogPresenter.this.airdropInteractor;
                cryptoPreferenceHelper = WalletAirdropDialogPresenter.this.preferenceHelper;
                return AirdropInteractor.getTokensByAirdrop$default(airdropInteractor, cryptoPreferenceHelper.getAirdropMetadata().getAirdropRequestId(), null, 2, null);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "airdropInteractor\n      …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new Consumer() { // from class: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                CryptoPreferenceHelper cryptoPreferenceHelper;
                CryptoPreferenceHelper cryptoPreferenceHelper2;
                ResourceManager resourceManager;
                ResourceManager resourceManager2;
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    cryptoPreferenceHelper = WalletAirdropDialogPresenter.this.preferenceHelper;
                    cryptoPreferenceHelper2 = WalletAirdropDialogPresenter.this.preferenceHelper;
                    cryptoPreferenceHelper.setAirdropMetadata(WalletAirdropMetadata.copy$default(cryptoPreferenceHelper2.getAirdropMetadata(), false, 0, null, AirdropStatus.FINISHED, null, 23, null));
                    WalletAirdropDialogPresenter.this.enableWalletMenuItem();
                    resourceManager = WalletAirdropDialogPresenter.this.resourceManager;
                    String string = resourceManager.getString(C3158R.string.airdrop_success_dialog_title);
                    resourceManager2 = WalletAirdropDialogPresenter.this.resourceManager;
                    ((WalletAirdropDialogView) WalletAirdropDialogPresenter.this.getViewState()).onSuccessClaimAirdrop(string, resourceManager2.getString(C3158R.string.airdrop_success_dialog_description));
                    ((WalletAirdropDialogView) WalletAirdropDialogPresenter.this.getViewState()).finishScreen();
                } else if (result instanceof Result.Error) {
                    WalletAirdropDialogPresenter.this.handleErrors(((Result.Error) result).getError());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView2.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        configureDialogState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void enableWalletMenuItem() {
        Set<DrawerSwitchableItem> set = SharedConfig.selectedDrawerItems;
        DrawerSwitchableItem drawerSwitchableItem = DrawerSwitchableItem.WALLET;
        if (set.contains(drawerSwitchableItem)) {
            return;
        }
        set.add(drawerSwitchableItem);
        SharedConfig.setSelectedDrawerItems(set);
        NotificationCenter.getInstance(UserConfig.selectedAccount).postNotificationName(NotificationCenter.mainUserInfoChanged, new Object[0]);
    }

    private final void configureDialogState() {
        AirdropStep airdropStep;
        if (isBotActivated() && isCryptoWalletCreated()) {
            airdropStep = AirdropStep.CLAIM;
        } else {
            airdropStep = (!isBotActivated() || isCryptoWalletCreated()) ? AirdropStep.INTRO : AirdropStep.CREATE_WALLET;
        }
        ((WalletAirdropDialogView) getViewState()).configureDialogState(isBotActivated(), isCryptoWalletCreated(), airdropStep, this.preferenceHelper.getAirdropMetadata().getTokenValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleErrors(ErrorModel errorModel) {
        ((WalletAirdropDialogView) getViewState()).showToast(errorModel.getMessage(this.resourceManager));
        IErrorStatus status = errorModel.getStatus();
        if (status == FirebaseFunctionsErrorHandler.AirdropErrorStatus.AIRDROP_NO_TOKENS) {
            ((WalletAirdropDialogView) getViewState()).finishScreen();
            return;
        }
        boolean z = true;
        if (status != FirebaseFunctionsErrorHandler.AirdropErrorStatus.AIRDROP_NOT_ACTIVE && status != FirebaseFunctionsErrorHandler.AirdropErrorStatus.USER_ALREADY_PARTICIPATED) {
            z = false;
        }
        if (z) {
            CryptoPreferenceHelper cryptoPreferenceHelper = this.preferenceHelper;
            cryptoPreferenceHelper.setAirdropMetadata(WalletAirdropMetadata.copy$default(cryptoPreferenceHelper.getAirdropMetadata(), false, 0, null, AirdropStatus.FINISHED, null, 23, null));
            ((WalletAirdropDialogView) getViewState()).finishScreen();
        }
    }

    private final boolean isBotActivated() {
        return WalletHelper.isWalletAuthorized();
    }

    private final boolean isCryptoWalletCreated() {
        return this.cryptoAccessManager.isCurrentBlockchainWalletCreated();
    }
}
