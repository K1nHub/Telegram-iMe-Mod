package com.smedialink.manager.crypto.recipient;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
import org.fork.utils.Callbacks$Callback;
/* compiled from: CryptoRecipientView.kt */
@OneExecution
/* loaded from: classes3.dex */
public interface CryptoRecipientView extends BaseView {
    void onRecipientSelected(String str, String str2, boolean z);

    void openChatScreen(long j);

    void showRecipientEthWalletNotActivatedError(String str, String str2, String str3);

    void showRecipientWalletNotActivatedError(String str, String str2, String str3);

    void showRequestPermissionDialog(String str, DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    void showRequestPermissionSuccessDialog(String str, String str2, Callbacks$Callback callbacks$Callback);
}
