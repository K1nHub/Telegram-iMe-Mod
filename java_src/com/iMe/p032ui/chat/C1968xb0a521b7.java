package com.iMe.p032ui.chat;

import com.iMe.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.chat.ChatPresenter$getMultiReplyMessage$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1968xb0a521b7 extends Lambda implements Function1<Result<? extends CharSequence>, Unit> {
    final /* synthetic */ ChatPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1968xb0a521b7(ChatPresenter chatPresenter) {
        super(1);
        this.this$0 = chatPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends CharSequence> result) {
        m1314invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1314invoke(Result<? extends CharSequence> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends CharSequence> result = it;
        if (result instanceof Result.Success) {
            ((ChatView) this.this$0.getViewState()).onMultiReplyMessageBuilt((CharSequence) ((Result.Success) result).getData());
        }
    }
}
