package com.iMe.p030ui.wallet.crypto.settings.blockchains.details;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.settings.BlockchainManagementItem;
import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
/* compiled from: BlockchainWalletDetailsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsPresenter */
/* loaded from: classes3.dex */
public final class BlockchainWalletDetailsPresenter extends BasePresenter<BlockchainWalletDetailsView> {
    private final ResourceManager resourceManager;
    private final BlockchainManagementItem.Wallet walletItem;

    public BlockchainWalletDetailsPresenter(BlockchainManagementItem.Wallet walletItem, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.walletItem = walletItem;
        this.resourceManager = resourceManager;
    }

    public final void showResetWalletConfirmationDialog() {
        ((BlockchainWalletDetailsView) getViewState()).showResetWalletConfirmationDialog(new DialogModel(this.resourceManager.getString(C3632R.string.wallet_details_reset_title), this.resourceManager.getString(C3632R.string.wallet_details_reset_description), LocaleController.getString("Cancel", C3632R.string.Cancel), LocaleController.getString("Reset", C3632R.string.Reset)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        BlockchainManagementItem.Wallet wallet2 = this.walletItem;
        ((BlockchainWalletDetailsView) getViewState()).setupScreenWithData(wallet2.getBlockchainType().getIconResId(), this.resourceManager.getString(wallet2.getBlockchainType().getTitleResId()), this.resourceManager.getString(wallet2.getBlockchainType().getSubtitleResId()), wallet2.getCreationDate(), StringExtKt.shortened$default(wallet2.getAddress(), 0, 1, null));
    }
}
