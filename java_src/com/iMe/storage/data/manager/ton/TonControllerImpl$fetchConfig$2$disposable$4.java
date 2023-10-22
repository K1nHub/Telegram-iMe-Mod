package com.iMe.storage.data.manager.ton;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TonControllerImpl.kt */
/* loaded from: classes3.dex */
/* synthetic */ class TonControllerImpl$fetchConfig$2$disposable$4 extends FunctionReferenceImpl implements Function1<Throwable, Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public TonControllerImpl$fetchConfig$2$disposable$4(Object obj) {
        super(1, obj, ContinuationKt.class, "resumeWithException", "resumeWithException(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;)V", 1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
        invoke2(th);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        Result.Companion companion = Result.Companion;
        ((Continuation) this.receiver).resumeWith(Result.m1935constructorimpl(ResultKt.createFailure(p0)));
    }
}
