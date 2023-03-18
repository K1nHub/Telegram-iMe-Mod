package com.smedialink.p031ui.wallet.home.p032v2.tabs.crypto;

import android.content.DialogInterface;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.manager.wallet.create.WalletCreateManagerView;
import com.smedialink.p031ui.base.mvp.AdapterNotifyView;
import com.smedialink.p031ui.base.mvp.SwipeRefreshView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.model.crypto.BlockchainType;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletHomeCryptoView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView */
/* loaded from: classes3.dex */
public interface WalletHomeCryptoView extends BaseView, SwipeRefreshView, WalletCreateManagerView, AdapterNotifyView {
    void openHistoryScreen();

    void openSendScreen();

    @AddToEndSingle
    void renderNodes(List<? extends BaseNode> list);

    void showAddressMismatchScreen();

    void showChangeNetworkHint();

    void showChooseNetworkDialog(NetworkType networkType, Function1<? super NetworkType, Unit> function1);

    void showQrReceiveDialog(String str, BlockchainType blockchainType);

    void showWalletAddressScan(String str);

    /* compiled from: WalletHomeCryptoView.kt */
    /* renamed from: com.smedialink.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoView$DefaultImpls */
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static void showSelectOptionsDialog(WalletHomeCryptoView walletHomeCryptoView, String title, String[] items, DialogInterface.OnClickListener listener) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(items, "items");
            Intrinsics.checkNotNullParameter(listener, "listener");
            WalletCreateManagerView.DefaultImpls.showSelectOptionsDialog(walletHomeCryptoView, title, items, listener);
        }
    }
}
