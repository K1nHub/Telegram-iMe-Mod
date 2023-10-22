package com.iMe.utils.extentions.p031rx;

import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.p030ui.base.mvp.base.BaseView;
import io.reactivex.Completable;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import kotlin.Unit;
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
        final Function1<Disposable, Unit> function1 = new Function1<Disposable, Unit>() { // from class: com.iMe.utils.extentions.rx.RxExtKt$withLoadingDialog$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Disposable disposable) {
                invoke2(disposable);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Disposable disposable) {
                BaseView.this.showLoadingDialog(true, z, disposable);
            }
        };
        Observable<T> doFinally = observable.doOnSubscribe(new Consumer() { // from class: com.iMe.utils.extentions.rx.RxExtKt$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RxExtKt.withLoadingDialog$lambda$0(Function1.this, obj);
            }
        }).doFinally(new Action() { // from class: com.iMe.utils.extentions.rx.RxExtKt$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Action
            public final void run() {
                RxExtKt.withLoadingDialog$lambda$1(BaseView.this, z);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "viewState: BaseView,\n   …cellable = cancellable) }");
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
        final Function1<Disposable, Unit> function1 = new Function1<Disposable, Unit>() { // from class: com.iMe.utils.extentions.rx.RxExtKt$withLoadingDialog$5
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Disposable disposable) {
                invoke2(disposable);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Disposable disposable) {
                BaseView.this.showLoadingDialog(true, z, disposable);
            }
        };
        Completable doFinally = completable.doOnSubscribe(new Consumer() { // from class: com.iMe.utils.extentions.rx.RxExtKt$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RxExtKt.withLoadingDialog$lambda$4(Function1.this, obj);
            }
        }).doFinally(new Action() { // from class: com.iMe.utils.extentions.rx.RxExtKt$$ExternalSyntheticLambda1
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

    public static final <T> Observable<T> withLoadingUpdate(Observable<T> observable, final Callbacks$Callback1<Boolean> loadingUpdateAction) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(loadingUpdateAction, "loadingUpdateAction");
        final Function1<Disposable, Unit> function1 = new Function1<Disposable, Unit>() { // from class: com.iMe.utils.extentions.rx.RxExtKt$withLoadingUpdate$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Disposable disposable) {
                invoke2(disposable);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Disposable disposable) {
                loadingUpdateAction.invoke(Boolean.TRUE);
            }
        };
        Observable<T> doFinally = observable.doOnSubscribe(new Consumer() { // from class: com.iMe.utils.extentions.rx.RxExtKt$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RxExtKt.withLoadingUpdate$lambda$6(Function1.this, obj);
            }
        }).doFinally(new Action() { // from class: com.iMe.utils.extentions.rx.RxExtKt$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                RxExtKt.withLoadingUpdate$lambda$7(Callbacks$Callback1.this);
            }
        });
        Intrinsics.checkNotNullExpressionValue(doFinally, "loadingUpdateAction: Cal…dingUpdateAction(false) }");
        return doFinally;
    }

    public static final void withLoadingUpdate$lambda$6(Function1 tmp0, Object obj) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }

    public static final void withLoadingUpdate$lambda$7(Callbacks$Callback1 loadingUpdateAction) {
        Intrinsics.checkNotNullParameter(loadingUpdateAction, "$loadingUpdateAction");
        loadingUpdateAction.invoke(Boolean.FALSE);
    }
}
