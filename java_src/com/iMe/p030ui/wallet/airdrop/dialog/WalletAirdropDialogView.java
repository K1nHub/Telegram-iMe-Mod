package com.iMe.p030ui.wallet.airdrop.dialog;

import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropStep;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletAirdropDialogView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.airdrop.dialog.WalletAirdropDialogView */
/* loaded from: classes3.dex */
public interface WalletAirdropDialogView extends BaseView {
    void configureDialogState(boolean z, boolean z2, AirdropStep airdropStep, int i);
}
