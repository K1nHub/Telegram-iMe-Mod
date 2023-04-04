package com.iMe.p032ui.wallet.crypto.settings.blockchains.details;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p032ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: BlockchainWalletDetailsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsView */
/* loaded from: classes3.dex */
public interface BlockchainWalletDetailsView extends BaseView {
    void setupScreenWithData(int i, String str, String str2, String str3, String str4);

    @OneExecution
    void showResetWalletConfirmationDialog(DialogModel dialogModel);
}
