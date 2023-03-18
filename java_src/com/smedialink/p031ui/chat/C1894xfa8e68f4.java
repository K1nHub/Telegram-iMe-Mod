package com.smedialink.p031ui.chat;

import com.smedialink.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.chat.ChatPresenter$checkIsDonationEnabled$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1894xfa8e68f4 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ ChatPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1894xfa8e68f4(ChatPresenter chatPresenter) {
        super(1);
        this.this$0 = chatPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1216invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1216invoke(Result<? extends Boolean> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            ((ChatView) this.this$0.getViewState()).showDonationMenuItem(((Boolean) ((Result.Success) result).getData()).booleanValue());
        }
    }
}
