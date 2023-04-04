package com.iMe.utils.extentions.p032rx;

import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
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
        Observable<T> observeOn = observable.subscribeOn(Schedulers.m679io()).observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkNotNullExpressionValue(observeOn, "this\n                .su…dSchedulers.mainThread())");
        return observeOn;
    }

    public static final <T> Observable<T> scheduleIO(Observable<T> observable, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(observable, "<this>");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Observable<T> scheduleIO = observable.subscribeOn(schedulersProvider.mo699io()).observeOn(schedulersProvider.mo698ui());
        Intrinsics.checkNotNullExpressionValue(scheduleIO, "scheduleIO");
        return scheduleIO;
    }
}