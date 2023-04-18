package com.iMe.storage.data.utils.extentions;

import io.reactivex.SingleEmitter;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class FirebaseExtKt$asSingleTask$1$2 extends Lambda implements Function1<TResult, Unit> {
    final /* synthetic */ SingleEmitter<TResult> $emitter;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseExtKt$asSingleTask$1$2(SingleEmitter<TResult> singleEmitter) {
        super(1);
        this.$emitter = singleEmitter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
        invoke2((FirebaseExtKt$asSingleTask$1$2) obj);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(TResult tresult) {
        if (tresult != 0) {
            this.$emitter.onSuccess(tresult);
        } else {
            this.$emitter.onError(new IllegalStateException("Observables can't emit null values"));
        }
    }
}
