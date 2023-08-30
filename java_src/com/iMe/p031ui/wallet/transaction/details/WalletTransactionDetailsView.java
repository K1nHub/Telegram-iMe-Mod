package com.iMe.p031ui.wallet.transaction.details;

import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.ActionItem;
import com.iMe.p031ui.base.mvp.base.BaseView;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletTransactionDetailsView.kt */
@OneExecution
/* renamed from: com.iMe.ui.wallet.transaction.details.WalletTransactionDetailsView */
/* loaded from: classes4.dex */
public interface WalletTransactionDetailsView extends BaseView {
    void actionCopyToClipboard(String str);

    void onSuccessBoostTransaction(String str);

    void onSuccessCancelTransaction(String str);

    void openProfileScreen(long j);

    void openUrl(String str);

    @AddToEndSingle
    void setupScreenWithData(int i, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, boolean z, boolean z2, String str10);

    @AddToEndSingle
    void setupTransactionActions(List<ActionItem> list, List<? extends Function0<Unit>> list2);

    void shareTransactionInfo(String str);

    void showConfirmBoostDialog(DialogModel dialogModel, Function0<Unit> function0);

    void showConfirmCancelDialog(DialogModel dialogModel, Function0<Unit> function0);
}
