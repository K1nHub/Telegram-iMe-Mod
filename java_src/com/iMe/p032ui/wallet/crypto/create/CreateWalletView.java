package com.iMe.p032ui.wallet.crypto.create;

import com.iMe.p032ui.base.mvp.base.BaseView;
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
    void createNewWalletWithPassword(List<String> list, String str);

    @OneExecution
    void onSuccessConfirmBackUp();

    void onSuccessEnterSeed(String str);

    void setHintWords(List<String> list);

    void setWalletAddress(String str);
}
