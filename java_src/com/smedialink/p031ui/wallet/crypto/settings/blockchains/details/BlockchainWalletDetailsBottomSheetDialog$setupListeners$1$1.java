package com.smedialink.p031ui.wallet.crypto.settings.blockchains.details;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BlockchainWalletDetailsBottomSheetDialog.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$setupListeners$1$1 */
/* loaded from: classes3.dex */
public final class BlockchainWalletDetailsBottomSheetDialog$setupListeners$1$1 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ BlockchainWalletDetailsBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockchainWalletDetailsBottomSheetDialog$setupListeners$1$1(BlockchainWalletDetailsBottomSheetDialog blockchainWalletDetailsBottomSheetDialog) {
        super(1);
        this.this$0 = blockchainWalletDetailsBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.this$0.showWalletBackup();
    }
}
