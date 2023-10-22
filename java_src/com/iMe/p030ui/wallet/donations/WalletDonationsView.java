package com.iMe.p030ui.wallet.donations;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.transaction.TransactionItem;
import com.iMe.p030ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
/* compiled from: WalletDonationsView.kt */
@AddToEndSingle
/* renamed from: com.iMe.ui.wallet.donations.WalletDonationsView */
/* loaded from: classes3.dex */
public interface WalletDonationsView extends BaseView {
    void onDonationsAddressLoaded(String str);

    void onDonationsTransactionsLoaded(List<TransactionItem> list);

    void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    void updateScreenAfterLoad();
}
