package com.smedialink.p031ui.wallet.airdrop.dialog;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.model.crypto.airdrop.AirdropStep;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletAirdropDialogView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.airdrop.dialog.WalletAirdropDialogView */
/* loaded from: classes3.dex */
public interface WalletAirdropDialogView extends BaseView {
    void configureDialogState(boolean z, boolean z2, AirdropStep airdropStep, int i);

    void onAcceptAirdrop();

    void onSuccessClaimAirdrop(String str, String str2);
}
