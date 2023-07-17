package com.iMe.p031ui.wallet.crypto.settings.custom_tokens;

import com.iMe.storage.domain.utils.p030rx.event.DomainRxEvents;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.custom_tokens.CustomTokensPresenter$subscribeToEvents$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes4.dex */
public final class C2186xbcd14e9a extends Lambda implements Function1<DomainRxEvents.TokensSettingsChanged, Unit> {
    final /* synthetic */ CustomTokensPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2186xbcd14e9a(CustomTokensPresenter customTokensPresenter) {
        super(1);
        this.this$0 = customTokensPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(DomainRxEvents.TokensSettingsChanged tokensSettingsChanged) {
        m1440invoke(tokensSettingsChanged);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1440invoke(DomainRxEvents.TokensSettingsChanged it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        this.this$0.reload();
    }
}
