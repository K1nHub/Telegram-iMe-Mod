package com.smedialink.manager.wallet.create;

import android.content.DialogInterface;
import com.smedialink.model.dialog.AnimatedSpannableDialogModel;
import com.smedialink.model.dialog.DialogModel;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import moxy.viewstate.strategy.alias.OneExecution;
import org.fork.utils.Callbacks$Callback;
/* compiled from: WalletCreateManagerView.kt */
@OneExecution
/* loaded from: classes3.dex */
public interface WalletCreateManagerView extends BaseView {
    void openCreateWalletScreen(List<String> list, String str);

    void openImportWalletScreen(String str, String str2);

    void showActivationConfirmationDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    void showAlreadyCreatedWalletWarningDialog(DialogModel dialogModel, String str, Callbacks$Callback callbacks$Callback);

    void showAnimatedDialog(AnimatedSpannableDialogModel animatedSpannableDialogModel, Callbacks$Callback callbacks$Callback);

    void showSelectOptionsDialog(String str, String[] strArr, DialogInterface.OnClickListener onClickListener);

    /* compiled from: WalletCreateManagerView.kt */
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static void showSelectOptionsDialog(WalletCreateManagerView walletCreateManagerView, String title, String[] items, DialogInterface.OnClickListener listener) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(items, "items");
            Intrinsics.checkNotNullParameter(listener, "listener");
        }

        public static /* synthetic */ void openImportWalletScreen$default(WalletCreateManagerView walletCreateManagerView, String str, String str2, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openImportWalletScreen");
            }
            if ((i & 2) != 0) {
                str2 = null;
            }
            walletCreateManagerView.openImportWalletScreen(str, str2);
        }
    }
}
