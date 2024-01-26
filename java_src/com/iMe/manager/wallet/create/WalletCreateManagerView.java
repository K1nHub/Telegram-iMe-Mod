package com.iMe.manager.wallet.create;

import android.content.DialogInterface;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.create.WalletCreationType;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import kotlin.jvm.internal.Intrinsics;
import moxy.viewstate.strategy.alias.OneExecution;
/* compiled from: WalletCreateManagerView.kt */
@OneExecution
/* loaded from: classes3.dex */
public interface WalletCreateManagerView extends BaseView {

    /* compiled from: WalletCreateManagerView.kt */
    /* renamed from: com.iMe.manager.wallet.create.WalletCreateManagerView$-CC  reason: invalid class name */
    /* loaded from: classes3.dex */
    public final /* synthetic */ class CC {
        public static void $default$showSelectOptionsDialog(WalletCreateManagerView walletCreateManagerView, String title, String[] items, DialogInterface.OnClickListener listener) {
            Intrinsics.checkNotNullParameter(title, "title");
            Intrinsics.checkNotNullParameter(items, "items");
            Intrinsics.checkNotNullParameter(listener, "listener");
        }
    }

    void openCreateWalletIntroScreen(BlockchainType blockchainType, String str, WalletCreationType.Initial initial);

    void showActivationConfirmationDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback);

    void showSelectOptionsDialog(String str, String[] strArr, DialogInterface.OnClickListener onClickListener);
}
