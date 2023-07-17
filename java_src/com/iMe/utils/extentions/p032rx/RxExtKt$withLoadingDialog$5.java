package com.iMe.utils.extentions.p032rx;

import com.iMe.p031ui.base.mvp.base.BaseView;
import io.reactivex.disposables.Disposable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.utils.extentions.rx.RxExtKt$withLoadingDialog$5 */
/* loaded from: classes4.dex */
final class RxExtKt$withLoadingDialog$5 extends Lambda implements Function1<Disposable, Unit> {
    final /* synthetic */ boolean $cancellable;
    final /* synthetic */ BaseView $viewState;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RxExtKt$withLoadingDialog$5(BaseView baseView, boolean z) {
        super(1);
        this.$viewState = baseView;
        this.$cancellable = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Disposable disposable) {
        invoke2(disposable);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Disposable disposable) {
        this.$viewState.showLoadingDialog(true, this.$cancellable, disposable);
    }
}
