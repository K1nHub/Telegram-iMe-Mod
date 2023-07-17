package com.iMe.p031ui.wallet.airdrop.dialog;

import android.view.View;
import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.p031ui.wallet.crypto.create.CreateWalletFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.p043ui.ActionBar.BaseFragment;
/* compiled from: WalletAirdropDialog.kt */
/* renamed from: com.iMe.ui.wallet.airdrop.dialog.WalletAirdropDialog$configureDialogState$1$4$1 */
/* loaded from: classes3.dex */
final class WalletAirdropDialog$configureDialogState$1$4$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ WalletAirdropDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletAirdropDialog$configureDialogState$1$4$1(WalletAirdropDialog walletAirdropDialog) {
        super(1);
        this.this$0 = walletAirdropDialog;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        BaseFragment baseFragment;
        Intrinsics.checkNotNullParameter(it, "it");
        baseFragment = this.this$0.fragment;
        baseFragment.presentFragment(CreateWalletFragment.Companion.newInstance(new CreateWalletScreenType.Import(null, null, 3, null)));
        this.this$0.finishScreen();
    }
}
