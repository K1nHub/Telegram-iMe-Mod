package com.iMe.p032ui.wallet.crypto.settings.blockchains;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.settings.BlockchainWalletItem;
import com.iMe.p032ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: BlockchainsManagementView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementView */
/* loaded from: classes3.dex */
public interface BlockchainsManagementView extends BaseView {
    void openBackupScreen(List<String> list, String str);

    @AddToEndSingle
    void setupWalletsItems(List<BlockchainWalletItem> list);

    void showResetAllWalletsConfirmationDialog(DialogModel dialogModel);

    void showWalletDetailsDialog(BlockchainWalletItem blockchainWalletItem, DialogModel dialogModel);

    void showWalletInfoDialog(DialogModel dialogModel);
}
