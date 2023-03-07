package com.smedialink.p031ui.wallet.airdrop;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletAirdropView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.airdrop.WalletAirdropView */
/* loaded from: classes3.dex */
public interface WalletAirdropView extends BaseView {
    void checkNeedToShowAirdropDialog();

    void showAirdropDialog();
}
