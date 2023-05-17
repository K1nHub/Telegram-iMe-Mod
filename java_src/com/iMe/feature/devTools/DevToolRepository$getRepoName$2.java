package com.iMe.feature.devTools;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: DevToolRepository.kt */
@DebugMetadata(m84c = "com.iMe.feature.devTools.DevToolRepository$getRepoName$2", m83f = "DevToolRepository.kt", m82l = {}, m81m = "invokeSuspend")
/* loaded from: classes3.dex */
final class DevToolRepository$getRepoName$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DevToolRepository$getRepoName$2(Continuation<? super DevToolRepository$getRepoName$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DevToolRepository$getRepoName$2(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return ((DevToolRepository$getRepoName$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            return "DevToolRepository";
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
