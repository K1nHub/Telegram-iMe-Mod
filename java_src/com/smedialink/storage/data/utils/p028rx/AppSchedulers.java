package com.smedialink.storage.data.utils.p028rx;

import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Scheduler;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: AppSchedulers.kt */
/* renamed from: com.smedialink.storage.data.utils.rx.AppSchedulers */
/* loaded from: classes3.dex */
public final class AppSchedulers implements SchedulersProvider {
    @Override // com.smedialink.storage.domain.utils.p030rx.SchedulersProvider
    /* renamed from: ui */
    public Scheduler mo706ui() {
        return AndroidSchedulers.mainThread();
    }

    @Override // com.smedialink.storage.domain.utils.p030rx.SchedulersProvider
    /* renamed from: io */
    public Scheduler mo707io() {
        Scheduler m693io = Schedulers.m693io();
        Intrinsics.checkNotNullExpressionValue(m693io, "io()");
        return m693io;
    }
}
