package com.iMe.feature.twitter;

import com.iMe.storage.domain.model.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.feature.twitter.TwitterPresenter$onResetConfirmClicked$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1481xc9d68b0b extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ TwitterPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1481xc9d68b0b(TwitterPresenter twitterPresenter) {
        super(1);
        this.this$0 = twitterPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1178invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1178invoke(Result<? extends Boolean> it) {
        Intrinsics.checkNotNullExpressionValue(it, "it");
        ((TwitterView) this.this$0.getViewState()).finishScreen();
    }
}
