package com.smedialink.p031ui.wallet.home.p032v2.tabs.binancepay;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.manager.crypto.pay.BinancePayProcessView;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.home.pay.BinanceAccountItem;
import com.smedialink.p031ui.base.mvp.AdapterNotifyView;
import com.smedialink.p031ui.base.mvp.SwipeRefreshView;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.domain.model.crypto.NetworkType;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletHomeBinancePayView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.binancepay.WalletHomeBinancePayView */
/* loaded from: classes3.dex */
public interface WalletHomeBinancePayView extends BaseView, SwipeRefreshView, BinancePayProcessView, AdapterNotifyView {
    void openConvertScreen();

    void openHistoryScreen();

    void openPayScreen();

    void openReplenishScreen(NetworkType networkType);

    @AddToEndSingle
    void render(List<BaseNode> list);

    void showConfirmLogOutDialog(DialogModel dialogModel, Function0<Unit> function0);

    void showLoginGuideDialog(DialogModel dialogModel, Function0<Unit> function0);

    void showRequiredVerifyDialog();

    void showRequiredWalletCreatedDialog();

    @AddToEndSingle
    void showUserInfo(BinanceAccountItem binanceAccountItem);
}
