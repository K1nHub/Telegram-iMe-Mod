package com.iMe.p032ui.wallet.airdrop.dialog;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkAirdropContentAlertBinding;
/* compiled from: WalletAirdropDialog.kt */
/* renamed from: com.iMe.ui.wallet.airdrop.dialog.WalletAirdropDialog$binding$2 */
/* loaded from: classes3.dex */
final class WalletAirdropDialog$binding$2 extends Lambda implements Function0<ForkAirdropContentAlertBinding> {
    final /* synthetic */ WalletAirdropDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAirdropDialog$binding$2(WalletAirdropDialog walletAirdropDialog) {
        super(0);
        this.this$0 = walletAirdropDialog;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkAirdropContentAlertBinding invoke() {
        ForkAirdropContentAlertBinding inflate = ForkAirdropContentAlertBinding.inflate(LayoutInflater.from(this.this$0.getContext()));
        Intrinsics.checkNotNullExpressionValue(inflate, "inflate(LayoutInflater.from(context))");
        return inflate;
    }
}
