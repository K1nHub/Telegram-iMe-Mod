package com.iMe.utils.extentions.p034rx;

import com.iMe.p032ui.base.mvp.base.BaseView;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.utils.extentions.rx.RxExtKt */
/* loaded from: classes4.dex */
public final class RxExtKt {
    public static /* synthetic */ Observable withLoadingDialog$default(Observable observable, BaseView baseView, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return withLoadingDialog(observable, baseView, z);
    }

    public static final <T> Observable<T> withLoadingDialog(Observable<T> observable, final BaseView viewState, final boolean z) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(viewState, "viewState");
        final RxExtKt$withLoadingDialog$1 rxExtKt$withLoadingDialog$1 = new RxExtKt$withLoadingDialog$1(viewState, z);
        Observable<T> doFinally = observable.doOnSubscribe(new Consumer() { // from class: com.iMe.utils.extentions.rx.RxExtKt$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RxExtKt.withLoadingDialog$lambda$0(Function1.this, obj);
            }
        }).doFinally(new Action() { // from class: com.iMe.utils.extentions.rx.RxExtKt$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() {
                RxExtKt.withLoadingDialog$lambda$1(BaseView.this, z);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "viewState: BaseView, can…cellable = cancellable) }");
        return doFinally;
    }

    public static final void withLoadingDialog$lambda$0(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void withLoadingDialog$lambda$1(BaseView viewState, boolean z) {
        Intrinsics.checkNotNullParameter(viewState, "$viewState");
        BaseView.CC.showLoadingDialog$default(viewState, false, z, null, 4, null);
    }

    public static /* synthetic */ Completable withLoadingDialog$default(Completable completable, BaseView baseView, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return withLoadingDialog(completable, baseView, z);
    }

    public static final Completable withLoadingDialog(Completable completable, final BaseView viewState, final boolean z) {
        Intrinsics.checkNotNullParameter(completable, "<this>");
        Intrinsics.checkNotNullParameter(viewState, "viewState");
        final RxExtKt$withLoadingDialog$5 rxExtKt$withLoadingDialog$5 = new RxExtKt$withLoadingDialog$5(viewState, z);
        Completable doFinally = completable.doOnSubscribe(new Consumer() { // from class: com.iMe.utils.extentions.rx.RxExtKt$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RxExtKt.withLoadingDialog$lambda$4(Function1.this, obj);
            }
        }).doFinally(new Action() { // from class: com.iMe.utils.extentions.rx.RxExtKt$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                RxExtKt.withLoadingDialog$lambda$5(BaseView.this, z);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "viewState: BaseView, can…cellable = cancellable) }");
        return doFinally;
    }

    public static final void withLoadingDialog$lambda$4(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void withLoadingDialog$lambda$5(BaseView viewState, boolean z) {
        Intrinsics.checkNotNullParameter(viewState, "$viewState");
        BaseView.CC.showLoadingDialog$default(viewState, false, z, null, 4, null);
    }
}
