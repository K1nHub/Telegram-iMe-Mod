package com.iMe.p030ui.wallet.cryptobox.conditions;

import com.iMe.manager.wallet.create.WalletCreateManagerView;
import com.iMe.model.cryptobox.CryptoBoxActionButtonType;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.Network;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CryptoBoxConditionsView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.cryptobox.conditions.CryptoBoxConditionsView */
/* loaded from: classes.dex */
public interface CryptoBoxConditionsView extends BaseView, WalletCreateManagerView {
    void copyNameToClipboard(String str);

    void openAddressScan(String str);

    @AddToEndSingle
    void renderButton(CryptoBoxActionButtonType cryptoBoxActionButtonType);

    @AddToEndSingle
    void renderScreenData(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, Network.Explorer explorer);

    void showParticipationSuccess();

    void startActivationFlow();
}
