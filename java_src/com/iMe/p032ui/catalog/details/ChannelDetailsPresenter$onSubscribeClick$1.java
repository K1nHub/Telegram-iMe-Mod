package com.iMe.p032ui.catalog.details;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.tgnet.TLRPC$Chat;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ChannelDetailsPresenter.kt */
/* renamed from: com.iMe.ui.catalog.details.ChannelDetailsPresenter$onSubscribeClick$1 */
/* loaded from: classes3.dex */
public final class ChannelDetailsPresenter$onSubscribeClick$1 extends Lambda implements Function1<TLRPC$Chat, ObservableSource<? extends Boolean>> {
    final /* synthetic */ ChannelDetailsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ChannelDetailsPresenter$onSubscribeClick$1(ChannelDetailsPresenter channelDetailsPresenter) {
        super(1);
        this.this$0 = channelDetailsPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public final ObservableSource<? extends Boolean> invoke(TLRPC$Chat it) {
        Observable subscriptionStatusChangeObservable;
        Intrinsics.checkNotNullParameter(it, "it");
        subscriptionStatusChangeObservable = this.this$0.getSubscriptionStatusChangeObservable(it);
        return subscriptionStatusChangeObservable;
    }
}
