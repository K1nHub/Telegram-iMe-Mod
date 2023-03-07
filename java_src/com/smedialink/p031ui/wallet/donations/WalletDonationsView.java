package com.smedialink.p031ui.wallet.donations;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.model.wallet.transaction.TransactionItem;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import org.fork.utils.Callbacks$Callback;
/* compiled from: WalletDonationsView.kt */
@AddToEndSingle
/* renamed from: com.smedialink.ui.wallet.donations.WalletDonationsView */
/* loaded from: classes3.dex */
public interface WalletDonationsView extends BaseView {
    void onDonationsAddressLoaded(String str);

    void onDonationsTransactionsLoaded(List<TransactionItem> list);

    void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    void updateScreenAfterLoad();
}
