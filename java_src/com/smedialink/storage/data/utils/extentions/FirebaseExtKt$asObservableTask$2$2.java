package com.smedialink.storage.data.utils.extentions;

import io.reactivex.ObservableEmitter;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FirebaseExt.kt */
/* loaded from: classes3.dex */
public final class FirebaseExtKt$asObservableTask$2$2 extends Lambda implements Function1<TResult, Unit> {
    final /* synthetic */ ObservableEmitter<TResult> $emitter;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseExtKt$asObservableTask$2$2(ObservableEmitter<TResult> observableEmitter) {
        super(1);
        this.$emitter = observableEmitter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Object obj) {
        invoke2((FirebaseExtKt$asObservableTask$2$2) obj);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(TResult tresult) {
        if (tresult != 0) {
            this.$emitter.onNext(tresult);
        } else {
            this.$emitter.onError(new IllegalStateException("Observables can't emit null values"));
        }
    }
}
