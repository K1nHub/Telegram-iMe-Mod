package com.iMe.p031ui.wallet.crypto.wallet_connect;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.wallet_connect.WalletConnectFragment$setupListeners$1$3 */
/* loaded from: classes4.dex */
public final class WalletConnectFragment$setupListeners$1$3 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ WalletConnectFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectFragment$setupListeners$1$3(WalletConnectFragment walletConnectFragment) {
        super(1);
        this.this$0 = walletConnectFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.this$0.onImageHeaderClick();
    }
}
