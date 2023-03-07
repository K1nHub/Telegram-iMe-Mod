package com.smedialink.p031ui.wallet.crypto.settings.blockchains.details;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: BlockchainWalletDetailsView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsView */
/* loaded from: classes3.dex */
public interface BlockchainWalletDetailsView extends BaseView {
    void setupScreenWithData(int i, String str, String str2, String str3, String str4);

    @OneExecution
    void showResetWalletConfirmationDialog(DialogModel dialogModel);
}
