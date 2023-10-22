package com.iMe.p030ui.wallet.home.tabs.binancepay;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.manager.crypto.pay.BinancePayProcessView;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.ItemOptionsModel;
import com.iMe.model.wallet.home.TokenSortingData;
import com.iMe.model.wallet.home.pay.BinanceAccountItem;
import com.iMe.p030ui.base.mvp.SwipeRefreshView;
import com.iMe.p030ui.base.mvp.base.BaseView;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import moxy.MvpView;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletHomeBinancePayView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.home.tabs.binancepay.WalletHomeBinancePayView */
/* loaded from: classes4.dex */
public interface WalletHomeBinancePayView extends BaseView, SwipeRefreshView, BinancePayProcessView, MvpView {
    void openConvertScreen();

    void openHistoryScreen();

    void openPayScreen();

    void openReplenishScreen(String str);

    @AddToEndSingle
    void render(List<BaseNode> list);

    void showConfirmLogOutDialog(DialogModel dialogModel, Function0<Unit> function0);

    void showLoginGuideDialog(DialogModel dialogModel, Function0<Unit> function0);

    void showMenuItems(List<ItemOptionsModel> list);

    void showRequiredVerifyDialog();

    void showRequiredWalletCreatedDialog();

    void showSelectTokensSortingDialog(TokenSortingData tokenSortingData);

    @AddToEndSingle
    void showUserInfo(BinanceAccountItem binanceAccountItem);
}
