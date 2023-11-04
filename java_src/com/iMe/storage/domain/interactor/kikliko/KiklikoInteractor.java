package com.iMe.storage.domain.interactor.kikliko;

import com.iMe.storage.data.network.model.response.kikliko.SearchResponse;
import com.iMe.storage.data.network.model.response.kikliko.TagResponse;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.repository.kikliko.KiklikoRepository;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import io.reactivex.Observable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: KiklikoInteractor.kt */
/* loaded from: classes3.dex */
public final class KiklikoInteractor {
    private final KiklikoRepository kiklikoRepository;
    private final SchedulersProvider schedulersProvider;

    public KiklikoInteractor(KiklikoRepository kiklikoRepository, SchedulersProvider schedulersProvider) {
        Intrinsics.checkNotNullParameter(kiklikoRepository, "kiklikoRepository");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        this.kiklikoRepository = kiklikoRepository;
        this.schedulersProvider = schedulersProvider;
    }

    public final Observable<Result<List<TagResponse>>> getTags() {
        Observable<Result<List<TagResponse>>> subscribeOn = this.kiklikoRepository.getTags().subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "kiklikoRepository.getTag…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<SearchResponse>> searchByKeyword(String keyword, String offset) {
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        Intrinsics.checkNotNullParameter(offset, "offset");
        Observable<Result<SearchResponse>> subscribeOn = this.kiklikoRepository.searchByKeyword(keyword, offset.length() == 0 ? 0 : Integer.parseInt(offset)).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "kiklikoRepository.search…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<SearchResponse>> searchByTag(String tag, String offset) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(offset, "offset");
        Observable<Result<SearchResponse>> subscribeOn = this.kiklikoRepository.searchByTag(tag, offset.length() == 0 ? 0 : Integer.parseInt(offset)).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "kiklikoRepository.search…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<SearchResponse>> getTrending(String offset) {
        Intrinsics.checkNotNullParameter(offset, "offset");
        Observable<Result<SearchResponse>> subscribeOn = this.kiklikoRepository.getTrending(offset.length() == 0 ? 0 : Integer.parseInt(offset)).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "kiklikoRepository.getTre…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> share(String slug) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Observable<Result<Boolean>> subscribeOn = this.kiklikoRepository.share(slug).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "kiklikoRepository.share(…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> view(String slug) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Observable<Result<Boolean>> subscribeOn = this.kiklikoRepository.view(slug).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "kiklikoRepository.view(s…(schedulersProvider.io())");
        return subscribeOn;
    }

    public final Observable<Result<Boolean>> report(String slug, String reason) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Observable<Result<Boolean>> subscribeOn = this.kiklikoRepository.report(slug, reason).subscribeOn(this.schedulersProvider.mo1011io());
        Intrinsics.checkNotNullExpressionValue(subscribeOn, "kiklikoRepository.report…(schedulersProvider.io())");
        return subscribeOn;
    }
}
