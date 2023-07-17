package com.iMe.utils.extentions.p032rx;

import com.iMe.fork.utils.Callbacks$Callback1;
import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.utils.extentions.rx.RxExtKt$withLoadingUpdate$1 */
/* loaded from: classes4.dex */
final class RxExtKt$withLoadingUpdate$1 extends Lambda implements Function1<Disposable, Unit> {
    final /* synthetic */ Callbacks$Callback1<Boolean> $loadingUpdateAction;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RxExtKt$withLoadingUpdate$1(Callbacks$Callback1<Boolean> callbacks$Callback1) {
        super(1);
        this.$loadingUpdateAction = callbacks$Callback1;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Disposable disposable) {
        invoke2(disposable);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Disposable disposable) {
        this.$loadingUpdateAction.invoke(Boolean.TRUE);
    }
}
