package com.iMe.p030ui.wallet.crypto.settings.blockchains;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.settings.BlockchainManagementItem;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.Wallet;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: BlockchainsManagementView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView */
/* loaded from: classes3.dex */
public interface BlockchainsManagementView extends BaseView, WalletCreateManagerView {
    void openBackupScreen(Wallet wallet2);

    @AddToEndSingle
    void setupWalletsItems(List<BaseNode> list);

    void showResetAllWalletsConfirmationDialog(DialogModel dialogModel);

    void showWalletDetailsDialog(BlockchainManagementItem.Wallet wallet2, DialogModel dialogModel);

    void showWalletInfoDialog(DialogModel dialogModel);
}
