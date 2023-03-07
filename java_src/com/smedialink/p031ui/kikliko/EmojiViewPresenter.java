package com.smedialink.p031ui.kikliko;

import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.p031ui.base.mvp.base.BaseView;
import com.smedialink.storage.data.network.model.response.kikliko.SearchResponse;
import com.smedialink.storage.data.network.model.response.kikliko.TagResponse;
import com.smedialink.storage.domain.interactor.kikliko.KiklikoInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
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
        Observable<Result<List<TagResponse>>> observeOn = this.kiklikoInteractor.getTags().observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.getTag…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.kikliko.EmojiViewPresenter$loadKiklikoTags$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    ((EmojiViewView) EmojiViewPresenter.this.getViewState()).onKiklikoTagsLoaded((List) ((Result.Success) result).getData());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.kikliko.EmojiViewPresenter$loadKiklikoTags$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void searchByKeyword(final String keyword, final String page) {
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        Intrinsics.checkNotNullParameter(page, "page");
        Disposable disposable = this.lastSearchDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        Observable<Result<SearchResponse>> observeOn = this.kiklikoInteractor.searchByKeyword(keyword, page).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.search…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.kikliko.EmojiViewPresenter$searchByKeyword$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    ((EmojiViewView) EmojiViewPresenter.this.getViewState()).onKiklikoSearchResultsLoaded(keyword, page, false, (SearchResponse) ((Result.Success) result).getData());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.kikliko.EmojiViewPresenter$searchByKeyword$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        this.lastSearchDisposable = subscribe;
        Unit unit = Unit.INSTANCE;
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void searchByTag(final String tag, final String page) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(page, "page");
        Disposable disposable = this.lastSearchDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        Observable<Result<SearchResponse>> observeOn = this.kiklikoInteractor.searchByTag(tag, page).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.search…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.kikliko.EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    ((EmojiViewView) EmojiViewPresenter.this.getViewState()).onKiklikoSearchResultsLoaded(tag, page, true, (SearchResponse) ((Result.Success) result).getData());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.kikliko.EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        this.lastSearchDisposable = subscribe;
        Unit unit = Unit.INSTANCE;
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void getTrending(final String page) {
        Intrinsics.checkNotNullParameter(page, "page");
        Observable<Result<SearchResponse>> observeOn = this.kiklikoInteractor.getTrending(page).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.getTre…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.kikliko.EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
                if (result instanceof Result.Success) {
                    ((EmojiViewView) EmojiViewPresenter.this.getViewState()).onKiklikoSearchResultsLoaded("", page, false, (SearchResponse) ((Result.Success) result).getData());
                }
            }
        }, new Consumer() { // from class: com.smedialink.ui.kikliko.EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        this.lastSearchDisposable = subscribe;
        Unit unit = Unit.INSTANCE;
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onGifWasSent(String slug) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Observable<Result<Boolean>> observeOn = this.kiklikoInteractor.share(slug).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.share(…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.kikliko.EmojiViewPresenter$onGifWasSent$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
            }
        }, new Consumer() { // from class: com.smedialink.ui.kikliko.EmojiViewPresenter$onGifWasSent$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onGifPreviewAsOpened(String slug) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Observable<Result<Boolean>> observeOn = this.kiklikoInteractor.view(slug).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.view(s…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.kikliko.EmojiViewPresenter$onGifPreviewAsOpened$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
            }
        }, new Consumer() { // from class: com.smedialink.ui.kikliko.EmojiViewPresenter$onGifPreviewAsOpened$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void report(String slug, String reason) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Observable<Result<Boolean>> observeOn = this.kiklikoInteractor.report(slug, reason).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.report…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new Consumer() { // from class: com.smedialink.ui.kikliko.EmojiViewPresenter$report$$inlined$subscribeWithErrorHandle$default$1
            @Override // io.reactivex.functions.Consumer
            public final void accept(T it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result result = (Result) it;
            }
        }, new Consumer() { // from class: com.smedialink.ui.kikliko.EmojiViewPresenter$report$$inlined$subscribeWithErrorHandle$default$2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Throwable th) {
                Timber.m4e(th);
                BaseView baseView = BaseView.this;
                if (baseView == null) {
                    return;
                }
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                baseView.showToast(message);
            }
        });
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }
}
