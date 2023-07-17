package com.iMe.p031ui.wallet.home.tabs.crypto.settings;

import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.WalletHomeCryptoTokensSettingsPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2337x92dd90f extends Lambda implements Function1<DomainRxEvents.TokensSettingsChanged, Unit> {
    final /* synthetic */ WalletHomeCryptoTokensSettingsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2337x92dd90f(WalletHomeCryptoTokensSettingsPresenter walletHomeCryptoTokensSettingsPresenter) {
        super(1);
        this.this$0 = walletHomeCryptoTokensSettingsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.TokensSettingsChanged tokensSettingsChanged) {
        m1503invoke(tokensSettingsChanged);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1503invoke(DomainRxEvents.TokensSettingsChanged it) {
        String str;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        DomainRxEvents.TokensSettingsChanged tokensSettingsChanged = it;
        String sourceClassName = tokensSettingsChanged.getSourceClassName();
        String simpleName = Reflection.getOrCreateKotlinClass(WalletHomeCryptoTokensSettingsPresenter.class).getSimpleName();
        if (simpleName == null) {
            simpleName = WalletHomeCryptoTokensSettingsPresenter.class.getSimpleName();
            Intrinsics.checkNotNullExpressionValue(simpleName, "T::class.java.simpleName");
        }
        if (!Intrinsics.areEqual(sourceClassName, simpleName)) {
            this.this$0.reloadSettings();
            str = this.this$0.query;
            if (str.length() > 0) {
                this.this$0.reloadSearchResults(true);
            }
        } else if (tokensSettingsChanged.isFromSearch()) {
            this.this$0.reloadSettings();
        }
    }
}
