package com.iMe.p032ui.wallet.airdrop.dialog;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: WalletAirdropDialog.kt */
/* renamed from: com.iMe.ui.wallet.airdrop.dialog.WalletAirdropDialog$presenter$2 */
/* loaded from: classes3.dex */
final class WalletAirdropDialog$presenter$2 extends Lambda implements Function0<WalletAirdropDialogPresenter> {
    final /* synthetic */ WalletAirdropDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAirdropDialog$presenter$2(WalletAirdropDialog walletAirdropDialog) {
        super(0);
        this.this$0 = walletAirdropDialog;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final WalletAirdropDialogPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new WalletAirdropDialog$presenter$2$invoke$$inlined$inject$default$1(this.this$0, null, null));
        return (WalletAirdropDialogPresenter) lazy.getValue();
    }
}
