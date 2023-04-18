package com.iMe.p031ui.wallet.home.old;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.crypto.recipient.CryptoRecipientView;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.p031ui.custom.state.GlobalStateView;
import com.iMe.storage.domain.model.crypto.NetworkType;
import com.iMe.storage.domain.model.wallet.token.TokenBalance;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletAttachAlertView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.home.old.WalletAttachAlertView */
/* loaded from: classes.dex */
public interface WalletAttachAlertView extends BaseView, CryptoRecipientView, GlobalStateView {
    void showBalances(List<TokenBalance> list);

    void showChooseNetworkDialog(NetworkType networkType, List<? extends NetworkType> list, Function1<? super NetworkType, Unit> function1);

    void showTransactions(List<BaseNode> list);
}
