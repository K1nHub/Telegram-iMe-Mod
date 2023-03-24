package com.smedialink.bots.data.model.bot;

import com.google.firebase.p021ml.custom.FirebaseModelOutputs;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: NeuroBot.kt */
/* loaded from: classes3.dex */
final class NeuroBot$getOutputsFromModel$2$1 extends Lambda implements Function1<FirebaseModelOutputs, Unit> {
    final /* synthetic */ Continuation<Object> $continuation;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NeuroBot$getOutputsFromModel$2$1(Continuation<Object> continuation) {
        super(1);
        this.$continuation = continuation;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(FirebaseModelOutputs firebaseModelOutputs) {
        invoke2(firebaseModelOutputs);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(FirebaseModelOutputs result) {
        Intrinsics.checkNotNullParameter(result, "result");
        Continuation<Object> continuation = this.$continuation;
        Result.Companion companion = Result.Companion;
        continuation.resumeWith(Result.m1479constructorimpl(result.getOutput(0)));
    }
}
