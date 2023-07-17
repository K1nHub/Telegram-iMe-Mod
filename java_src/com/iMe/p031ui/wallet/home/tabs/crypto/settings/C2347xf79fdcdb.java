package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import com.iMe.model.state.GlobalState;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletHomeCryptoTokensSettingsPresenter.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToQueryChanges$1 */
/* loaded from: classes4.dex */
public final class C2347xf79fdcdb extends Lambda implements Function1<String, Boolean> {
    final /* synthetic */ WalletHomeCryptoTokensSettingsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2347xf79fdcdb(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoTokensSettingsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(String rawQuery) {
        boolean z;
        Intrinsics.checkNotNullParameter(rawQuery, "rawQuery");
        if (rawQuery.length() < 2) {
            this.this$0.renderSearchState(GlobalState.Empty.TokenSearchStart.INSTANCE);
            z = false;
        } else {
            z = true;
        }
        return Boolean.valueOf(z);
    }
}
