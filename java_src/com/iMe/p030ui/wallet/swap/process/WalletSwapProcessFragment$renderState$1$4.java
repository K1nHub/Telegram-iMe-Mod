package com.iMe.p030ui.wallet.swap.process;

import android.os.CountDownTimer;
import com.google.android.exoplayer2.C0483C;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.p030ui.custom.TransactionActionButtonsView;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.databinding.ForkFragmentWalletSwapProcessBinding;
/* compiled from: WalletSwapProcessFragment.kt */
/* renamed from: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$renderState$1$4 */
/* loaded from: classes4.dex */
public final class WalletSwapProcessFragment$renderState$1$4 extends CountDownTimer {
    final /* synthetic */ ForkFragmentWalletSwapProcessBinding $this_with;
    final /* synthetic */ WalletSwapProcessFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletSwapProcessFragment$renderState$1$4(ForkFragmentWalletSwapProcessBinding forkFragmentWalletSwapProcessBinding, WalletSwapProcessFragment walletSwapProcessFragment) {
        super(C0483C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS, 1000L);
        this.$this_with = forkFragmentWalletSwapProcessBinding;
        this.this$0 = walletSwapProcessFragment;
    }

    @Override // android.os.CountDownTimer
    public void onTick(long j) {
        ResourceManager resourceManager;
        TransactionActionButtonsView viewActionButtons = this.$this_with.viewActionButtons;
        Intrinsics.checkNotNullExpressionValue(viewActionButtons, "viewActionButtons");
        StringBuilder sb = new StringBuilder();
        resourceManager = this.this$0.getResourceManager();
        sb.append(resourceManager.getString(C3632R.string.wallet_swap_process_button_exchange));
        sb.append(" (");
        sb.append((j + 1000) / 1000);
        sb.append(')');
        String sb2 = sb.toString();
        final WalletSwapProcessFragment walletSwapProcessFragment = this.this$0;
        viewActionButtons.setupViewData(sb2, (r14 & 2) != 0, (r14 & 4) != 0 ? false : false, (r14 & 8) == 0 ? false : false, (r14 & 16) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda1
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TransactionActionButtonsView.setupViewData$lambda$0();
            }
        } : new Callbacks$Callback() { // from class: com.iMe.ui.wallet.swap.process.WalletSwapProcessFragment$renderState$1$4$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                WalletSwapProcessFragment$renderState$1$4.onTick$lambda$0(WalletSwapProcessFragment.this);
            }
        }, (r14 & 32) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda2
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TransactionActionButtonsView.setupViewData$lambda$1();
            }
        } : null, (r14 & 64) != 0 ? new Callbacks$Callback() { // from class: com.iMe.ui.custom.TransactionActionButtonsView$$ExternalSyntheticLambda0
            @Override // com.iMe.fork.utils.Callbacks$Callback
            public final void invoke() {
                TransactionActionButtonsView.setupViewData$lambda$2();
            }
        } : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onTick$lambda$0(WalletSwapProcessFragment this$0) {
        WalletSwapProcessPresenter presenter;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        presenter = this$0.getPresenter();
        presenter.startSwapFlow();
    }

    @Override // android.os.CountDownTimer
    public void onFinish() {
        WalletSwapProcessPresenter presenter;
        presenter = this.this$0.getPresenter();
        presenter.resetStateIfNeeded();
    }
}
