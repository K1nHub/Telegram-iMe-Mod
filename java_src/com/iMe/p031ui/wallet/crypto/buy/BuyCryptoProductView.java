package com.iMe.p031ui.wallet.crypto.buy;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.buy.CryptoBuyItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: BuyCryptoProductView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.crypto.buy.BuyCryptoProductView */
/* loaded from: classes3.dex */
public interface BuyCryptoProductView extends BaseView {
    void openCustomPriceDialog(CryptoBuyItem cryptoBuyItem);

    void showConfirmDialog(CryptoBuyItem cryptoBuyItem, DialogModel dialogModel);

    void showErrorPurchase(String str);

    @AddToEndSingle
    void showProcessingUrl(String str);

    void showRefreshLoading(boolean z);

    void showSuccessPurchase();

    @AddToEndSingle
    void showUiItems(List<BaseNode> list);
}
