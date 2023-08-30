package com.iMe.p031ui.wallet.airdrop;

import com.iMe.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletAirdropView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.airdrop.WalletAirdropView */
/* loaded from: classes4.dex */
public interface WalletAirdropView extends BaseView {
    void checkNeedToShowAirdropDialog();

    void showAirdropDialog();
}
