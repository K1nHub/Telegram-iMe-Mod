package com.smedialink.p031ui.wallet.home.old;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.manager.crypto.recipient.CryptoRecipientView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.p031ui.custom.state.GlobalStateView;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import com.smedialink.storage.domain.model.wallet.token.TokenBalance;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletAttachAlertView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.home.old.WalletAttachAlertView */
/* loaded from: classes3.dex */
public interface WalletAttachAlertView extends BaseView, CryptoRecipientView, GlobalStateView {
    void showBalances(List<TokenBalance> list);

    void showChooseNetworkDialog(NetworkType networkType, List<? extends NetworkType> list, Function1<? super NetworkType, Unit> function1);

    void showTransactions(List<BaseNode> list);
}
