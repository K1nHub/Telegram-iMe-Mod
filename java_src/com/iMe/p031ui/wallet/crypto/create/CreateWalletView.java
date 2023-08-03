package com.iMe.p031ui.wallet.crypto.create;

import com.iMe.model.dialog.RadioCellsListDialogModel;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.Wallet;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CreateWalletView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView */
/* loaded from: classes4.dex */
public interface CreateWalletView extends BaseView {
    void addNewWallet(Wallet wallet2, String str);

    void createNewWallet(Wallet wallet2, String str);

    void generateAndOpenPdf(String str, List<String> list);

    void onSuccessConfirmBackUp();

    void onSuccessEnterSeed(String str, String str2);

    @AddToEndSingle
    void onWordsCountSelected(int i);

    void showSelectWordsCountDialog(RadioCellsListDialogModel radioCellsListDialogModel);

    @AddToEndSingle
    void showWordsSuggestions(List<String> list);

    @AddToEndSingle
    void updateLoadingState(boolean z);
}
