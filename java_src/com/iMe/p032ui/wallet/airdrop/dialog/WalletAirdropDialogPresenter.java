package com.iMe.p032ui.wallet.airdrop.dialog;

import com.iMe.p032ui.base.mvp.base.BasePresenter;
import com.iMe.p032ui.base.mvp.base.BaseView;
import com.iMe.p032ui.drawer.DrawerSwitchableItem;
import com.iMe.storage.data.locale.prefs.model.WalletAirdropMetadata;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.data.network.model.error.ErrorModel;
import com.iMe.storage.data.network.model.error.IErrorStatus;
import com.iMe.storage.domain.interactor.crypto.airdrop.AirdropInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropDisplayStatus;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropStatus;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropStep;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p034rx.RxExtKt;
import com.iMe.utils.extentions.p034rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.helper.wallet.WalletHelper;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Function;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
/* compiled from: WalletAirdropDialogPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter */
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
        Observable checkAirdropStart$default = AirdropInteractor.checkAirdropStart$default(this.airdropInteractor, requestId, null, 2, null);
        final C2084x61f5919c c2084x61f5919c = new C2084x61f5919c(this);
        Observable flatMap = checkAirdropStart$default.flatMap(new Function(c2084x61f5919c) { // from class: com.iMe.ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter$inlined$sam$i$io_reactivex_functions_Function$0
            private final /* synthetic */ Function1 function;

            {
                Intrinsics.checkNotNullParameter(c2084x61f5919c, "function");
                this.function = c2084x61f5919c;
            }

            @Override // io.reactivex.functions.Function
            public final /* synthetic */ Object apply(Object obj) {
                return this.function.invoke(obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(flatMap, "crossinline body: (T) ->…e.empty()\n        }\n    }");
        Observable observeOn = flatMap.observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "airdropInteractor\n      …(schedulersProvider.ui())");
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default(observeOn, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2085x9d8065d9(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2086x9d8065da((BaseView) getViewState())));
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
