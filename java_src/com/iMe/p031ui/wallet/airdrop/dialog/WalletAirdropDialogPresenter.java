package com.iMe.p031ui.wallet.airdrop.dialog;

import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.interactor.crypto.airdrop.AirdropInteractor;
import com.iMe.storage.domain.manager.crypto.CryptoAccessManager;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropStep;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.helper.wallet.WalletHelper;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: WalletAirdropDialogPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter */
/* loaded from: classes6.dex */
public final class WalletAirdropDialogPresenter extends BasePresenter<WalletAirdropDialogView> {
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
        this.cryptoAccessManager = cryptoAccessManager;
        this.preferenceHelper = preferenceHelper;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        configureDialogState();
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

    private final boolean isBotActivated() {
        return WalletHelper.isAuthorized();
    }

    private final boolean isCryptoWalletCreated() {
        return this.cryptoAccessManager.isCurrentBlockchainWalletCreated();
    }
}
