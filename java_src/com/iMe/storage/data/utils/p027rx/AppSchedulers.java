package com.iMe.storage.data.utils.p027rx;

import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Scheduler;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppSchedulers.kt */
/* renamed from: com.iMe.storage.data.utils.rx.AppSchedulers */
/* loaded from: classes3.dex */
public final class AppSchedulers implements SchedulersProvider {
    @Override // com.iMe.storage.domain.utils.p029rx.SchedulersProvider
    /* renamed from: ui */
    public Scheduler mo1013ui() {
        return AndroidSchedulers.mainThread();
    }

    @Override // com.iMe.storage.domain.utils.p029rx.SchedulersProvider
    /* renamed from: io */
    public Scheduler mo1014io() {
        Scheduler m996io = Schedulers.m996io();
        Intrinsics.checkNotNullExpressionValue(m996io, "io()");
        return m996io;
    }
}
