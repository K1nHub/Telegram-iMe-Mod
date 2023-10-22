package com.iMe.storage.data.manager.ton;

import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
/* compiled from: TonControllerImpl.kt */
/* loaded from: classes3.dex */
/* synthetic */ class TonControllerImpl$fetchConfig$2$disposable$3 extends FunctionReferenceImpl implements Function1<String, Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public TonControllerImpl$fetchConfig$2$disposable$3(Object obj) {
        super(1, obj, ContinuationKt.class, "resume", "resume(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V", 1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(String str) {
        invoke2(str);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(String str) {
        Result.Companion companion = Result.Companion;
        ((Continuation) this.receiver).resumeWith(Result.m1935constructorimpl(str));
    }
}
