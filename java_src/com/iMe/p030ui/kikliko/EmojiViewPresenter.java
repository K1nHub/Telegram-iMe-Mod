package com.iMe.p030ui.kikliko;

import com.iMe.p030ui.base.mvp.base.BasePresenter;
import com.iMe.p030ui.base.mvp.base.BaseView;
import com.iMe.storage.data.manager.analytics.AnalyticsManager;
import com.iMe.storage.data.manager.analytics.AnalyticsManagerKt;
import com.iMe.storage.data.network.model.response.kikliko.SearchResponse;
import com.iMe.storage.data.network.model.response.kikliko.TagResponse;
import com.iMe.storage.domain.interactor.kikliko.KiklikoInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.analytics.AnalyticsEvent;
import com.iMe.storage.domain.utils.p029rx.SchedulersProvider;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p031rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import timber.log.Timber;
/* compiled from: EmojiViewPresenter.kt */
@InjectViewState
/* renamed from: com.iMe.ui.kikliko.EmojiViewPresenter */
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
        Observable<Result<List<TagResponse>>> observeOn = this.kiklikoInteractor.getTags().observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.getTag…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends TagResponse>>, Unit>() { // from class: com.iMe.ui.kikliko.EmojiViewPresenter$loadKiklikoTags$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends TagResponse>> result) {
                m1598invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1598invoke(Result<? extends List<? extends TagResponse>> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends List<? extends TagResponse>> result = it;
                if (result instanceof Result.Success) {
                    ((EmojiViewView) EmojiViewPresenter.this.getViewState()).onKiklikoTagsLoaded((List) ((Result.Success) result).getData());
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.kikliko.EmojiViewPresenter$loadKiklikoTags$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void searchByKeyword(final String keyword, final String page) {
        Intrinsics.checkNotNullParameter(keyword, "keyword");
        Intrinsics.checkNotNullParameter(page, "page");
        Disposable disposable = this.lastSearchDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        AnalyticsManagerKt.getAnalytics();
        AnalyticsManager.trackEvent(AnalyticsEvent.SearchClip.INSTANCE);
        Observable<Result<SearchResponse>> observeOn = this.kiklikoInteractor.searchByKeyword(keyword, page).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.search…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends SearchResponse>, Unit>() { // from class: com.iMe.ui.kikliko.EmojiViewPresenter$searchByKeyword$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SearchResponse> result) {
                m1602invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1602invoke(Result<? extends SearchResponse> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends SearchResponse> result = it;
                if (result instanceof Result.Success) {
                    ((EmojiViewView) EmojiViewPresenter.this.getViewState()).onKiklikoSearchResultsLoaded(keyword, page, false, (SearchResponse) ((Result.Success) result).getData());
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.kikliko.EmojiViewPresenter$searchByKeyword$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        this.lastSearchDisposable = subscribe;
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void searchByTag(final String tag, final String page) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(page, "page");
        Disposable disposable = this.lastSearchDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
        AnalyticsManagerKt.getAnalytics();
        AnalyticsManager.trackEvent(new AnalyticsEvent.SelectClipCategory(tag));
        Observable<Result<SearchResponse>> observeOn = this.kiklikoInteractor.searchByTag(tag, page).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.search…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends SearchResponse>, Unit>() { // from class: com.iMe.ui.kikliko.EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SearchResponse> result) {
                m1603invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1603invoke(Result<? extends SearchResponse> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends SearchResponse> result = it;
                if (result instanceof Result.Success) {
                    ((EmojiViewView) EmojiViewPresenter.this.getViewState()).onKiklikoSearchResultsLoaded(tag, page, true, (SearchResponse) ((Result.Success) result).getData());
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.kikliko.EmojiViewPresenter$searchByTag$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        this.lastSearchDisposable = subscribe;
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void getTrending(final String page) {
        Intrinsics.checkNotNullParameter(page, "page");
        AnalyticsManagerKt.getAnalytics();
        AnalyticsManager.trackEvent(new AnalyticsEvent.SelectClipCategory(AnalyticsEvent.SelectClipCategory.categoryTrending));
        Observable<Result<SearchResponse>> observeOn = this.kiklikoInteractor.getTrending(page).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.getTre…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends SearchResponse>, Unit>() { // from class: com.iMe.ui.kikliko.EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends SearchResponse> result) {
                m1597invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1597invoke(Result<? extends SearchResponse> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                Result<? extends SearchResponse> result = it;
                if (result instanceof Result.Success) {
                    ((EmojiViewView) EmojiViewPresenter.this.getViewState()).onKiklikoSearchResultsLoaded("", page, false, (SearchResponse) ((Result.Success) result).getData());
                }
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.kikliko.EmojiViewPresenter$getTrending$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        this.lastSearchDisposable = subscribe;
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onGifWasSent(String slug) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Observable<Result<Boolean>> observeOn = this.kiklikoInteractor.share(slug).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.share(…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.kikliko.EmojiViewPresenter$onGifWasSent$$inlined$subscribeWithErrorHandle$default$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1600invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1600invoke(Result<? extends Boolean> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.kikliko.EmojiViewPresenter$onGifWasSent$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onGifPreviewAsOpened(String slug) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        AnalyticsManagerKt.getAnalytics();
        AnalyticsManager.trackEvent(AnalyticsEvent.PreviewClip.INSTANCE);
        Observable<Result<Boolean>> observeOn = this.kiklikoInteractor.view(slug).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.view(s…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.kikliko.EmojiViewPresenter$onGifPreviewAsOpened$$inlined$subscribeWithErrorHandle$default$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1599invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1599invoke(Result<? extends Boolean> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.kikliko.EmojiViewPresenter$onGifPreviewAsOpened$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void report(String slug, String reason) {
        Intrinsics.checkNotNullParameter(slug, "slug");
        Intrinsics.checkNotNullParameter(reason, "reason");
        Observable<Result<Boolean>> observeOn = this.kiklikoInteractor.report(slug, reason).observeOn(this.schedulersProvider.mo1010ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "kiklikoInteractor.report…(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.ui.kikliko.EmojiViewPresenter$report$$inlined$subscribeWithErrorHandle$default$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1601invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1601invoke(Result<? extends Boolean> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.ui.kikliko.EmojiViewPresenter$report$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable error) {
                Timber.m6e(error);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = error.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
                Intrinsics.checkNotNullExpressionValue(error, "error");
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…rror.invoke(error)\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }
}
