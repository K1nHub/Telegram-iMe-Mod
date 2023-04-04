package com.iMe.p031ui.wallet.crypto.create.intro;

import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.gateway.TelegramControllersGateway;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.data.utils.extentions.CryptoExtKt;
import com.iMe.storage.domain.interactor.crypto.CryptoWalletInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.Wallet;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3417R;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: CreateWalletIntroPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroPresenter */
/* loaded from: classes4.dex */
public final class CreateWalletIntroPresenter extends BasePresenter<CreateWalletIntroView> {
    private final CryptoAccessManager cryptoAccessManager;
    private final CryptoWalletInteractor cryptoWalletInteractor;
    private final BlockchainType currentBlockchainType;
    private final String linkedWalletAddress;
    private final Network network;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final TelegramControllersGateway telegramControllersGateway;
    private final WalletCreationType.Initial walletCreationType;

    public CreateWalletIntroPresenter(CryptoPreferenceHelper cryptoPreferenceHelper, String linkedWalletAddress, WalletCreationType.Initial walletCreationType, CryptoAccessManager cryptoAccessManager, CryptoWalletInteractor cryptoWalletInteractor, ResourceManager resourceManager, SchedulersProvider schedulersProvider, TelegramControllersGateway telegramControllersGateway) {
        Intrinsics.checkNotNullParameter(cryptoPreferenceHelper, "cryptoPreferenceHelper");
        Intrinsics.checkNotNullParameter(linkedWalletAddress, "linkedWalletAddress");
        Intrinsics.checkNotNullParameter(walletCreationType, "walletCreationType");
        Intrinsics.checkNotNullParameter(cryptoAccessManager, "cryptoAccessManager");
        Intrinsics.checkNotNullParameter(cryptoWalletInteractor, "cryptoWalletInteractor");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(telegramControllersGateway, "telegramControllersGateway");
        this.linkedWalletAddress = linkedWalletAddress;
        this.walletCreationType = walletCreationType;
        this.cryptoAccessManager = cryptoAccessManager;
        this.cryptoWalletInteractor = cryptoWalletInteractor;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.telegramControllersGateway = telegramControllersGateway;
        this.network = cryptoPreferenceHelper.getNetwork();
        this.currentBlockchainType = cryptoPreferenceHelper.getCurrentBlockchainType();
    }

    public final void onViewOnScanClick() {
        ((CreateWalletIntroView) getViewState()).openAddressScan(this.network.getAddressUrl(this.linkedWalletAddress));
    }

    public final void onCopyAddressClick() {
        ContextExtKt.copyToClipboard$default(this.linkedWalletAddress, null, 2, null);
    }

    public final void onNextClick() {
        if (this.linkedWalletAddress.length() > 0) {
            Wallet wallet2 = this.cryptoAccessManager.getWallet(this.currentBlockchainType);
            if (!Intrinsics.areEqual(wallet2 != null ? wallet2.getAddress() : null, this.linkedWalletAddress)) {
                showCreateNewWalletConfirmationDialog();
                return;
            }
        }
        prepareCreateWalletFlow();
    }

    public final void prepareCreateWalletFlow() {
        String randomString;
        boolean isAnyWalletCreated = this.cryptoAccessManager.isAnyWalletCreated();
        WalletCreationType.Initial initial = this.walletCreationType;
        if (Intrinsics.areEqual(initial, WalletCreationType.Initial.Create.INSTANCE)) {
            Observable<Result<Wallet>> observeOn = this.cryptoWalletInteractor.createLocalWallet(this.currentBlockchainType).observeOn(this.schedulersProvider.mo698ui());
            Intrinsics.checkNotNullExpressionValue(observeOn, "cryptoWalletInteractor\n …(schedulersProvider.ui())");
            Disposable subscribe = RxExtKt.withLoadingUpdate(observeOn, new Callbacks$Callback1() { // from class: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroPresenter$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    CreateWalletIntroPresenter.prepareCreateWalletFlow$lambda$0(CreateWalletIntroPresenter.this, (Boolean) obj);
                }
            }).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2151xcb3c75da(isAnyWalletCreated, this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C2152xcb3c75db((BaseView) getViewState())));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
        } else if (Intrinsics.areEqual(initial, WalletCreationType.Initial.Import.INSTANCE)) {
            CreateWalletIntroView createWalletIntroView = (CreateWalletIntroView) getViewState();
            if (isAnyWalletCreated) {
                randomString = this.cryptoAccessManager.getWalletPassword();
            } else {
                randomString = CryptoExtKt.randomString();
            }
            createWalletIntroView.openImportWalletScreen(randomString, this.linkedWalletAddress);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void prepareCreateWalletFlow$lambda$0(CreateWalletIntroPresenter this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        ((CreateWalletIntroView) this$0.getViewState()).updateNextButtonLoadingState(it.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        if (this.linkedWalletAddress.length() > 0) {
            TLRPC$User user = TelegramControllersGateway.CC.getMessagesController$default(this.telegramControllersGateway, 0, 1, null).getUser(0L);
            Intrinsics.checkNotNullExpressionValue(user, "telegramControllersGatew…esController().getUser(0)");
            ((CreateWalletIntroView) getViewState()).setupScreenData(user, this.linkedWalletAddress, this.network.getExplorer());
        }
    }

    private final void showCreateNewWalletConfirmationDialog() {
        ((CreateWalletIntroView) getViewState()).showCreateNewWalletConfirmationDialog(new DialogModel(this.resourceManager.getString(C3417R.string.wallet_creation_intro_new_wallet_confirmation_title), this.resourceManager.getString(C3417R.string.wallet_creation_intro_new_wallet_confirmation_description), this.resourceManager.getString(C3417R.string.common_cancel), this.resourceManager.getString(this.walletCreationType.getButtonTextResId())));
    }
}