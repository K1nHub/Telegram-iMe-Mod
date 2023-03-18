package com.smedialink.p031ui.twitter;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.smedialink.mapper.twitter.TweetInfoUiMappingKt;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.model.state.GlobalState;
import com.smedialink.model.twitter.TweetItem;
import com.smedialink.p031ui.base.mvp.base.BasePresenter;
import com.smedialink.storage.common.AppConfiguration$Twitter;
import com.smedialink.storage.domain.interactor.twitter.TwitterInteractor;
import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.model.twitter.TweetInfo;
import com.smedialink.storage.domain.utils.p030rx.SchedulersProvider;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.p033rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
/* compiled from: TwitterPresenter.kt */
@InjectViewState
/* renamed from: com.smedialink.ui.twitter.TwitterPresenter */
/* loaded from: classes3.dex */
public final class TwitterPresenter extends BasePresenter<TwitterView> {
    private final List<BaseNode> items;
    private Long lastItemId;
    private final PublishSubject<TweetItem> likeToggleSubject;
    private final ResourceManager resourceManager;
    private final SchedulersProvider schedulersProvider;
    private final long telegramProfileId;
    private final List<TweetInfo> tweets;
    private final TwitterInteractor twitterInteractor;
    private final long twitterUserId;
    private final String twitterUserNickname;

    public TwitterPresenter(long j, long j2, String twitterUserNickname, ResourceManager resourceManager, SchedulersProvider schedulersProvider, TwitterInteractor twitterInteractor) {
        Intrinsics.checkNotNullParameter(twitterUserNickname, "twitterUserNickname");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(schedulersProvider, "schedulersProvider");
        Intrinsics.checkNotNullParameter(twitterInteractor, "twitterInteractor");
        this.telegramProfileId = j;
        this.twitterUserId = j2;
        this.twitterUserNickname = twitterUserNickname;
        this.resourceManager = resourceManager;
        this.schedulersProvider = schedulersProvider;
        this.twitterInteractor = twitterInteractor;
        this.tweets = new ArrayList();
        this.items = new ArrayList();
        PublishSubject<TweetItem> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.likeToggleSubject = create;
    }

    public final void reload() {
        this.lastItemId = null;
        this.tweets.clear();
        this.items.clear();
        loadTweets$default(this, false, true, 1, null);
    }

    public static /* synthetic */ void loadTweets$default(TwitterPresenter twitterPresenter, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        twitterPresenter.loadTweets(z, z2);
    }

    public final void loadTweets(boolean z, boolean z2) {
        boolean z3 = (z || z2) ? false : true;
        if (z3 && this.lastItemId == null) {
            ((TwitterView) getViewState()).onLoadMoreComplete();
            return;
        }
        Observable<Result<List<TweetInfo>>> observeOn = this.twitterInteractor.getUserTweets(this.telegramProfileId, this.twitterUserId, this.lastItemId).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "twitterInteractor\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1966x586e495a(this, z3, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1967x586e495b(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    public final void onOpenInTwitterClick() {
        ((TwitterView) getViewState()).openBrowserUrl(AppConfiguration$Twitter.INSTANCE.getUserUrl(this.twitterUserNickname));
    }

    public final void onShareClick(TweetItem tweetItem) {
        Intrinsics.checkNotNullParameter(tweetItem, "tweetItem");
        ((TwitterView) getViewState()).shareLink(AppConfiguration$Twitter.INSTANCE.getTweetUrl(this.twitterUserNickname, tweetItem.getId()));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        subscribeToLikeToggles();
        loadTweets$default(this, true, false, 2, null);
    }

    private final void subscribeToLikeToggles() {
        Observable<TweetItem> observeOn = this.likeToggleSubject.debounce(200L, TimeUnit.MILLISECONDS).distinctUntilChanged().subscribeOn(this.schedulersProvider.mo708io()).observeOn(this.schedulersProvider.mo707ui());
        Intrinsics.checkNotNullExpressionValue(observeOn, "likeToggleSubject\n      …(schedulersProvider.ui())");
        Disposable subscribe = observeOn.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1968xbd4bb315(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1969xbd4bb316(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…  onError.invoke()\n    })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void toggleItemLikeStatus(TweetItem tweetItem) {
        int indexOf;
        TweetInfo copy;
        Iterator<TweetInfo> it = this.tweets.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            if (it.next().getId() == tweetItem.getId()) {
                break;
            }
            i++;
        }
        if (i == -1 || this.tweets.get(i).isLiked() == tweetItem.isLiked() || (indexOf = this.items.indexOf(tweetItem)) == -1) {
            return;
        }
        List<TweetInfo> list = this.tweets;
        TweetInfo tweetInfo = list.get(i);
        copy = tweetInfo.copy((r26 & 1) != 0 ? tweetInfo.f352id : 0L, (r26 & 2) != 0 ? tweetInfo.authorName : null, (r26 & 4) != 0 ? tweetInfo.authorNickname : null, (r26 & 8) != 0 ? tweetInfo.avatarUrl : null, (r26 & 16) != 0 ? tweetInfo.likesCount : tweetInfo.getLikesCount() + (tweetInfo.isLiked() ? -1 : 1), (r26 & 32) != 0 ? tweetInfo.quotesCount : 0, (r26 & 64) != 0 ? tweetInfo.retweetsCount : 0, (r26 & 128) != 0 ? tweetInfo.text : null, (r26 & 256) != 0 ? tweetInfo.createdAt : 0L, (r26 & 512) != 0 ? tweetInfo.isLiked : !tweetInfo.isLiked());
        list.set(i, copy);
        this.items.set(indexOf, TweetInfoUiMappingKt.mapToUi(this.tweets.get(i)));
        ((TwitterView) getViewState()).renderItems(this.items);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void renderGlobalState(GlobalState globalState) {
        List<BaseNode> mutableListOf;
        mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(new GlobalStateItem(globalState));
        ((TwitterView) getViewState()).renderItems(mutableListOf);
    }
}
