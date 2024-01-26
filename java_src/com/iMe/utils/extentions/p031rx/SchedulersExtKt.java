package com.iMe.utils.extentions.p031rx;

import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: SchedulersExt.kt */
/* renamed from: com.iMe.utils.extentions.rx.SchedulersExtKt */
/* loaded from: classes4.dex */
public final class SchedulersExtKt {
    public static final <T> Observable<T> scheduleIO(Observable<T> observable) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Observable<T> observeOn = observable.subscribeOn(Schedulers.m996io()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "this\n        .subscribeO…dSchedulers.mainThread())");
        return observeOn;
    }

    public static final <T> Observable<T> scheduleIO(Observable<T> observable, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Observable<T> scheduleIO = observable.subscribeOn(schedulersProvider.mo1014io()).observeOn(schedulersProvider.mo1013ui());
        Intrinsics.checkNotNullExpressionValue(scheduleIO, "scheduleIO");
        return scheduleIO;
    }
}
