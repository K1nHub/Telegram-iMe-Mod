package org.orbitmvi.orbit.internal;

import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.flow.StateFlow;
/* compiled from: StateFlowExtensions.kt */
/* loaded from: classes4.dex */
public final class StateFlowExtensionsKt$onSubscribe$1 implements StateFlow<T> {
    final /* synthetic */ Function0<Unit> $block;
    final /* synthetic */ StateFlow<T> $this_onSubscribe;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public StateFlowExtensionsKt$onSubscribe$1(StateFlow<? extends T> stateFlow, Function0<Unit> function0) {
        this.$this_onSubscribe = stateFlow;
        this.$block = function0;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
    @Override // kotlinx.coroutines.flow.StateFlow
    public T getValue() {
        return this.$this_onSubscribe.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector<? super T> r5, kotlin.coroutines.Continuation<?> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof org.orbitmvi.orbit.internal.StateFlowExtensionsKt$onSubscribe$1$collect$1
            if (r0 == 0) goto L13
            r0 = r6
            org.orbitmvi.orbit.internal.StateFlowExtensionsKt$onSubscribe$1$collect$1 r0 = (org.orbitmvi.orbit.internal.StateFlowExtensionsKt$onSubscribe$1$collect$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            org.orbitmvi.orbit.internal.StateFlowExtensionsKt$onSubscribe$1$collect$1 r0 = new org.orbitmvi.orbit.internal.StateFlowExtensionsKt$onSubscribe$1$collect$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 == r3) goto L2d
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L2d:
            kotlin.ResultKt.throwOnFailure(r6)
            goto L44
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.jvm.functions.Function0<kotlin.Unit> r6 = r4.$block
            r6.invoke()
            kotlinx.coroutines.flow.StateFlow<T> r6 = r4.$this_onSubscribe
            r0.label = r3
            java.lang.Object r5 = r6.collect(r5, r0)
            if (r5 != r1) goto L44
            return r1
        L44:
            kotlin.KotlinNothingValueException r5 = new kotlin.KotlinNothingValueException
            r5.<init>()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.orbitmvi.orbit.internal.StateFlowExtensionsKt$onSubscribe$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
