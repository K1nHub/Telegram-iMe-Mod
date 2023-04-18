package com.iMe.manager.crypto.recipient;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.base.BaseView;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: CryptoRecipientView.kt */
@OneExecution
/* loaded from: classes3.dex */
public interface CryptoRecipientView extends BaseView {
    void onRecipientSelected(String str, String str2, boolean z);

    void openChatScreen(long j);

    void showErrorDialog(String str, String str2, String str3);

    void showRequestPermissionDialog(String str, DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    void showRequestPermissionSuccessDialog(String str, String str2, Callbacks$Callback callbacks$Callback);
}
