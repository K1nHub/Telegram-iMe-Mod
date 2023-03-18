package com.smedialink.p031ui.catalog.details;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$Chat;
/* compiled from: ChannelDetailsPresenter.kt */
/* renamed from: com.smedialink.ui.catalog.details.ChannelDetailsPresenter$getSubscriptionStatusChangeObservable$1 */
/* loaded from: classes3.dex */
final class ChannelDetailsPresenter$getSubscriptionStatusChangeObservable$1 extends Lambda implements Function1<TLRPC$Chat, Boolean> {
    final /* synthetic */ boolean $isNotSubscribed;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelDetailsPresenter$getSubscriptionStatusChangeObservable$1(boolean z) {
        super(1);
        this.$isNotSubscribed = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(TLRPC$Chat it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Boolean.valueOf(!this.$isNotSubscribed);
    }
}
