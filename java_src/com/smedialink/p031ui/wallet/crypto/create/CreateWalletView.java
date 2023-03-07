package com.smedialink.p031ui.wallet.crypto.create;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CreateWalletView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletView */
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
