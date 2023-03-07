package com.smedialink.p031ui.wallet.crypto.settings.privacy;

import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import java.util.List;
import moxy.viewstate.strategy.alias.AddToEndSingle;
import moxy.viewstate.strategy.alias.OneExecution;
import org.fork.utils.Callbacks$Callback;
/* compiled from: WalletPrivacySettingsView.kt */
@OneExecution
/* renamed from: com.smedialink.ui.wallet.crypto.settings.privacy.WalletPrivacySettingsView */
/* loaded from: classes3.dex */
public interface WalletPrivacySettingsView extends BaseView {
    @AddToEndSingle
    void onSuccessLoadPrivacySettings(List<Long> list, int i, int i2);

    void onSuccessSaveCryptoSettings();

    void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);
}
