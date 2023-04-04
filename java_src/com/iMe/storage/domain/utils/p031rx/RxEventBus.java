package com.iMe.storage.domain.utils.p031rx;

import com.iMe.storage.domain.utils.p031rx.event.RxEvent;
import io.reactivex.subjects.PublishSubject;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RxEventBus.kt */
/* renamed from: com.iMe.storage.domain.utils.rx.RxEventBus */
/* loaded from: classes3.dex */
public final class RxEventBus {
    private final PublishSubject<Object> publisher;
    private final SchedulersProvider schedulersProvider;

    public RxEventBus(SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.schedulersProvider = schedulersProvider;
        PublishSubject<Object> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create<Any>()");
        this.publisher = create;
    }

    public final SchedulersProvider getSchedulersProvider() {
        return this.schedulersProvider;
    }

    public final PublishSubject<Object> getPublisher() {
        return this.publisher;
    }

    public final void publish(RxEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.publisher.onNext(event);
    }
}
