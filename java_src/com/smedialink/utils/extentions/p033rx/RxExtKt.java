package com.smedialink.utils.extentions.p033rx;

import com.smedialink.p031ui.base.mvp.base.BaseView;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.utils.extentions.rx.RxExtKt */
/* loaded from: classes3.dex */
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
        Observable<T> doFinally = observable.doOnSubscribe(new Consumer() { // from class: com.smedialink.utils.extentions.rx.RxExtKt$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RxExtKt.m1839withLoadingDialog$lambda0(BaseView.this, z, (Disposable) obj);
            }
        }).doFinally(new Action() { // from class: com.smedialink.utils.extentions.rx.RxExtKt$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                RxExtKt.m1840withLoadingDialog$lambda1(BaseView.this, z);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doOnSubscribe { disposab…cellable = cancellable) }");
        return doFinally;
    }

    /* renamed from: withLoadingDialog$lambda-0 */
    public static final void m1839withLoadingDialog$lambda0(BaseView viewState, boolean z, Disposable disposable) {
        Intrinsics.checkNotNullParameter(viewState, "$viewState");
        viewState.showLoadingDialog(true, z, disposable);
    }

    /* renamed from: withLoadingDialog$lambda-1 */
    public static final void m1840withLoadingDialog$lambda1(BaseView viewState, boolean z) {
        Intrinsics.checkNotNullParameter(viewState, "$viewState");
        BaseView.DefaultImpls.showLoadingDialog$default(viewState, false, z, null, 4, null);
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
        Completable doFinally = completable.doOnSubscribe(new Consumer() { // from class: com.smedialink.utils.extentions.rx.RxExtKt$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RxExtKt.m1841withLoadingDialog$lambda4(BaseView.this, z, (Disposable) obj);
            }
        }).doFinally(new Action() { // from class: com.smedialink.utils.extentions.rx.RxExtKt$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() {
                RxExtKt.m1842withLoadingDialog$lambda5(BaseView.this, z);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "doOnSubscribe { disposab…cellable = cancellable) }");
        return doFinally;
    }

    /* renamed from: withLoadingDialog$lambda-4 */
    public static final void m1841withLoadingDialog$lambda4(BaseView viewState, boolean z, Disposable disposable) {
        Intrinsics.checkNotNullParameter(viewState, "$viewState");
        viewState.showLoadingDialog(true, z, disposable);
    }

    /* renamed from: withLoadingDialog$lambda-5 */
    public static final void m1842withLoadingDialog$lambda5(BaseView viewState, boolean z) {
        Intrinsics.checkNotNullParameter(viewState, "$viewState");
        BaseView.DefaultImpls.showLoadingDialog$default(viewState, false, z, null, 4, null);
    }
}
