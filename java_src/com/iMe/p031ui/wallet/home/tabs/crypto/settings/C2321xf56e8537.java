package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import android.view.View;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoTokensSettingsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsFragment$ListAdapter$onCreateViewHolder$1$1 */
/* loaded from: classes4.dex */
public final class C2321xf56e8537 extends Lambda implements Function1<View, Unit> {
    final /* synthetic */ WalletHomeCryptoTokensSettingsFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2321xf56e8537(WalletHomeCryptoTokensSettingsFragment walletHomeCryptoTokensSettingsFragment) {
        super(1);
        this.this$0 = walletHomeCryptoTokensSettingsFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(View view) {
        invoke2(view);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(View it) {
        Intrinsics.checkNotNullParameter(it, "it");
        this.this$0.openAddTokenScreen();
    }
}
