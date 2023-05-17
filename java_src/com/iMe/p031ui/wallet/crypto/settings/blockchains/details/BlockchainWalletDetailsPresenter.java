package com.iMe.p031ui.wallet.crypto.settings.blockchains.details;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.settings.BlockchainWalletItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.common.StringExtKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.LocaleController;
/* compiled from: BlockchainWalletDetailsPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsPresenter */
/* loaded from: classes3.dex */
public final class BlockchainWalletDetailsPresenter extends BasePresenter<BlockchainWalletDetailsView> {
    private final ResourceManager resourceManager;
    private final BlockchainWalletItem walletItem;

    public BlockchainWalletDetailsPresenter(BlockchainWalletItem walletItem, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(walletItem, "walletItem");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.walletItem = walletItem;
        this.resourceManager = resourceManager;
    }

    public final void showResetWalletConfirmationDialog() {
        ((BlockchainWalletDetailsView) getViewState()).showResetWalletConfirmationDialog(new DialogModel(this.resourceManager.getString(C3290R.string.wallet_details_reset_title), this.resourceManager.getString(C3290R.string.wallet_details_reset_description), LocaleController.getString("Cancel", C3290R.string.Cancel), LocaleController.getString("Reset", C3290R.string.Reset)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        BlockchainWalletItem blockchainWalletItem = this.walletItem;
        ((BlockchainWalletDetailsView) getViewState()).setupScreenWithData(blockchainWalletItem.getBlockchainType().getIconResId(), this.resourceManager.getString(blockchainWalletItem.getBlockchainType().getTitleResId()), this.resourceManager.getString(blockchainWalletItem.getBlockchainType().getSubtitleResId()), blockchainWalletItem.getCreationDate(), StringExtKt.shortened$default(blockchainWalletItem.getAddress(), 0, 1, null));
    }
}
