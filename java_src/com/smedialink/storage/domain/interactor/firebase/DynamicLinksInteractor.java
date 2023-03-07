package com.smedialink.storage.domain.interactor.firebase;

import com.smedialink.storage.data.utils.system.AndroidActivityHolder;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.google.DynamicLinkData;
import com.smedialink.storage.domain.repository.firebase.DynamicLinksRepository;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import io.reactivex.Observable;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: DynamicLinksInteractor.kt */
/* loaded from: classes3.dex */
public final class DynamicLinksInteractor {
    private final DynamicLinksRepository dynamicLinksRepository;
    private final SchedulersProvider schedulersProvider;

    public DynamicLinksInteractor(DynamicLinksRepository dynamicLinksRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(dynamicLinksRepository, "dynamicLinksRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.dynamicLinksRepository = dynamicLinksRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<DynamicLinkData>> getLink(AndroidActivityHolder holder, String url) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Intrinsics.checkNotNullParameter(url, "url");
        Observable<Result<DynamicLinkData>> subscribeOn = this.dynamicLinksRepository.getLink(holder, url).subscribeOn(this.schedulersProvider.mo708io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "dynamicLinksRepository\n …(schedulersProvider.io())");
        return subscribeOn;
    }
}
