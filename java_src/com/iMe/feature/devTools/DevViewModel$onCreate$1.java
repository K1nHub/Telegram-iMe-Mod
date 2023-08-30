package com.iMe.feature.devTools;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.orbitmvi.orbit.syntax.simple.SimpleSyntax;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DevViewModel.kt */
@DebugMetadata(m102c = "com.iMe.feature.devTools.DevViewModel$onCreate$1", m101f = "DevViewModel.kt", m100l = {21, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33}, m99m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class DevViewModel$onCreate$1 extends SuspendLambda implements Function2<SimpleSyntax<DevState, DevSideEffects>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ DevViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DevViewModel$onCreate$1(DevViewModel devViewModel, Continuation<? super DevViewModel$onCreate$1> continuation) {
        super(2, continuation);
        this.this$0 = devViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        DevViewModel$onCreate$1 devViewModel$onCreate$1 = new DevViewModel$onCreate$1(this.this$0, continuation);
        devViewModel$onCreate$1.L$0 = obj;
        return devViewModel$onCreate$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(SimpleSyntax<DevState, DevSideEffects> simpleSyntax, Continuation<? super Unit> continuation) {
        return ((DevViewModel$onCreate$1) create(simpleSyntax, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00b9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x010a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0117 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0126 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0135 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0142 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0151 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.feature.devTools.DevViewModel$onCreate$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
