package com.iMe.manager.wallet.create;

import android.content.DialogInterface;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.AnimatedSpannableDialogModel;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.Wallet;
import kotlin.jvm.internal.Intrinsics;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletCreateManagerView.kt */
@OneExecution
/* loaded from: classes3.dex */
public interface WalletCreateManagerView extends BaseView {
    void openCreateWalletScreen(Wallet wallet2, String str);

    void openImportWalletScreen(String str, String str2);

    void showActivationConfirmationDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    void showAlreadyCreatedWalletWarningDialog(DialogModel dialogModel, String str, Callbacks$Callback callbacks$Callback);

    void showAnimatedDialog(AnimatedSpannableDialogModel animatedSpannableDialogModel, Callbacks$Callback callbacks$Callback);

    void showSelectOptionsDialog(String str, String[] strArr, DialogInterface.OnClickListener onClickListener);

    /* compiled from: WalletCreateManagerView.kt */
    /* renamed from: com.iMe.manager.wallet.create.WalletCreateManagerView$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        public static void $default$showSelectOptionsDialog(WalletCreateManagerView walletCreateManagerView, String title, String[] items, DialogInterface.OnClickListener listener) {
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
