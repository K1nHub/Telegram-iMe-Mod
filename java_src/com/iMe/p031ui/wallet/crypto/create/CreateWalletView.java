package com.iMe.p031ui.wallet.crypto.create;

import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.Wallet;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CreateWalletView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.crypto.create.CreateWalletView */
/* loaded from: classes3.dex */
public interface CreateWalletView extends BaseView {
    @OneExecution
    void createNewWallet();

    @OneExecution
    void createNewWalletWithPassword(Wallet wallet2, String str);

    @OneExecution
    void onSuccessConfirmBackUp();

    void onSuccessEnterSeed(String str);

    void setWalletAddress(String str);

    void showWordsSuggestions(List<String> list);
}
