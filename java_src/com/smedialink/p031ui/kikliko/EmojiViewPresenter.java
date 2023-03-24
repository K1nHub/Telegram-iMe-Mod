package com.smedialink.p031ui.kikliko;

import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.data.network.model.response.kikliko.SearchResponse;
import com.smedialink.storage.data.network.model.response.kikliko.TagResponse;
import com.smedialink.storage.domain.interactor.kikliko.KiklikoInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: EmojiViewPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.kikliko.EmojiViewPresenter */
/* loaded from: classes3.dex */
public final class EmojiViewPresenter extends BasePresenter<EmojiViewView> {
    private final KiklikoInteractor kiklikoInteractor;
    private Disposable lastSearchDisposable;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;

    public EmojiViewPresenter(KiklikoInteractor kiklikoInteractor, SchedulersProvider schedulersProvider, ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(kiklikoInteractor, "kiklikoInteractor");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.kiklikoInteractor = kiklikoInteractor;
        this.schedulersProvider = schedulersProvider;
        this.resourceManager = resourceManager;
    }

    public final void loadKiklikoTags() {
        Observable<Result<List<TagResponse>>> observeOn = this.kiklikoInteractor.getTags().observeOn(this.schedulersProvider.mo706ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.getTag…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1926x8b56867d(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1927x8b56867e(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void searchByKeyword(String keyword, String page) {
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        Intrinsics.checkNotNullParameter(page, "page");
        Disposable disposable = this.lastSearchDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        Observable<Result<SearchResponse>> observeOn = this.kiklikoInteractor.searchByKeyword(keyword, page).observeOn(this.schedulersProvider.mo706ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.search…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1934xae9d3566(this, keyword, page)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1935xae9d3567(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        this.lastSearchDisposable = subscribe;
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void searchByTag(String tag, String page) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(page, "page");
        Disposable disposable = this.lastSearchDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        Observable<Result<SearchResponse>> observeOn = this.kiklikoInteractor.searchByTag(tag, page).observeOn(this.schedulersProvider.mo706ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.search…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1936xbea5fe97(this, tag, page)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1937xbea5fe98(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        this.lastSearchDisposable = subscribe;
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void getTrending(String page) {
        Intrinsics.checkNotNullParameter(page, "page");
        Observable<Result<SearchResponse>> observeOn = this.kiklikoInteractor.getTrending(page).observeOn(this.schedulersProvider.mo706ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.getTre…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1924x46f36637(this, page)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1925x46f36638(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        this.lastSearchDisposable = subscribe;
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onGifWasSent(String slug) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Observable<Result<Boolean>> observeOn = this.kiklikoInteractor.share(slug).observeOn(this.schedulersProvider.mo706ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.share(…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1930x605e6f86()), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1931x605e6f87(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onGifPreviewAsOpened(String slug) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Observable<Result<Boolean>> observeOn = this.kiklikoInteractor.view(slug).observeOn(this.schedulersProvider.mo706ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.view(s…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1928x1baa1388()), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1929x1baa1389(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void report(String slug, String reason) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Observable<Result<Boolean>> observeOn = this.kiklikoInteractor.report(slug, reason).observeOn(this.schedulersProvider.mo706ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.report…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1932xb31cfe()), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1933xb31cff(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }
}
