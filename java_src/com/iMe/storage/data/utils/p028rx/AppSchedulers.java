package com.iMe.storage.data.utils.p028rx;

import com.iMe.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Scheduler;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppSchedulers.kt */
/* renamed from: com.iMe.storage.data.utils.rx.AppSchedulers */
/* loaded from: classes3.dex */
public final class AppSchedulers implements SchedulersProvider {
    @Override // com.iMe.storage.domain.utils.p030rx.SchedulersProvider
    /* renamed from: ui */
    public Scheduler mo698ui() {
        return AndroidSchedulers.mainThread();
    }

    @Override // com.iMe.storage.domain.utils.p030rx.SchedulersProvider
    /* renamed from: io */
    public Scheduler mo699io() {
        Scheduler m679io = Schedulers.m679io();
        Intrinsics.checkNotNullExpressionValue(m679io, "io()");
        return m679io;
    }
}
