package com.iMe.storage.data.utils.p029rx;

import com.iMe.storage.domain.utils.p031rx.SchedulersProvider;
import io.reactivex.Scheduler;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppSchedulers.kt */
/* renamed from: com.iMe.storage.data.utils.rx.AppSchedulers */
/* loaded from: classes3.dex */
public final class AppSchedulers implements SchedulersProvider {
    @Override // com.iMe.storage.domain.utils.p031rx.SchedulersProvider
    /* renamed from: ui */
    public Scheduler mo707ui() {
        return AndroidSchedulers.mainThread();
    }

    @Override // com.iMe.storage.domain.utils.p031rx.SchedulersProvider
    /* renamed from: io */
    public Scheduler mo708io() {
        Scheduler m688io = Schedulers.m688io();
        Intrinsics.checkNotNullExpressionValue(m688io, "io()");
        return m688io;
    }
}
