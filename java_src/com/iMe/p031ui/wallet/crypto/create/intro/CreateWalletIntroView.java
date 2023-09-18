package com.iMe.p031ui.wallet.crypto.create.intro;

import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.Network;
import com.iMe.storage.domain.model.crypto.Wallet;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: CreateWalletIntroView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.create.intro.CreateWalletIntroView */
/* loaded from: classes6.dex */
public interface CreateWalletIntroView extends BaseView {
    void openAddWalletScreen(Wallet wallet2, String str);

    void openAddressScan(String str);

    void openCreateWalletScreen(Wallet wallet2, String str);

    void openImportWalletScreen(String str, String str2);

    @AddToEndSingle
    void setupScreenData(TLRPC$User tLRPC$User, String str, Network.Explorer explorer);

    void showCreateNewWalletConfirmationDialog(DialogModel dialogModel);

    @AddToEndSingle
    void updateNextButtonLoadingState(boolean z);
}
