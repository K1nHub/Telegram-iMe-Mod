package com.iMe.feature.twitter;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.feature.socialMedias.SocialNetwork;
import com.iMe.feature.socialMedias.SocialUseCase;
import com.iMe.mapper.twitter.TweetInfoUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.state.GlobalState;
import com.iMe.model.twitter.TweetItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Twitter;
import com.iMe.storage.domain.interactor.twitter.TwitterInteractor;
import com.iMe.storage.domain.model.twitter.TweetInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.extentions.p032rx.SchedulersExtKt;
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
import okhttp3.internal.Util;
import org.telegram.messenger.C3417R;
/* compiled from: TwitterPresenter.kt */
@InjectViewState
/* loaded from: classes3.dex */
public final class TwitterPresenter extends BasePresenter<TwitterView> {
    private final List<BaseNode> items;
    private Long lastItemId;
    private final PublishSubject<TweetItem> likeToggleSubject;
    private final ResourceManager resourceManager;
    private final SocialNetwork socialNetwork;
    private final SocialUseCase socialUseCase;
    private final long telegramProfileId;
    private final List<TweetInfo> tweets;
    private final TwitterInteractor twitterInteractor;

    public TwitterPresenter(long j, SocialNetwork socialNetwork, ResourceManager resourceManager, TwitterInteractor twitterInteractor, SocialUseCase socialUseCase) {
        Intrinsics.checkNotNullParameter(socialNetwork, "socialNetwork");
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        Intrinsics.checkNotNullParameter(twitterInteractor, "twitterInteractor");
        Intrinsics.checkNotNullParameter(socialUseCase, "socialUseCase");
        this.telegramProfileId = j;
        this.socialNetwork = socialNetwork;
        this.resourceManager = resourceManager;
        this.twitterInteractor = twitterInteractor;
        this.socialUseCase = socialUseCase;
        this.tweets = new ArrayList();
        this.items = new ArrayList();
        PublishSubject<TweetItem> create = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(create, "create()");
        this.likeToggleSubject = create;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // moxy.MvpPresenter
    public void onFirstViewAttach() {
        subscribeToLikeToggles();
        loadTweets$default(this, true, false, 2, null);
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
        long longOrDefault = Util.toLongOrDefault(this.socialNetwork.getSocialElementId(), -1L);
        boolean z3 = (z || z2) ? false : true;
        if (!z3 || this.lastItemId != null) {
            Disposable subscribe = SchedulersExtKt.scheduleIO(this.twitterInteractor.getUserTweets(this.telegramProfileId, longOrDefault, this.lastItemId)).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1479x586e495a(this, z3, z)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1480x586e495b(null)));
            Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
            BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
            return;
        }
        ((TwitterView) getViewState()).onLoadMoreComplete();
    }

    public final void onOpenInTwitterClick() {
        ((TwitterView) getViewState()).openBrowserUrl(AppConfiguration$Twitter.INSTANCE.getUserUrl(this.socialNetwork.getSocialUserName()));
    }

    public final void onShareClick(TweetItem tweetItem) {
        Intrinsics.checkNotNullParameter(tweetItem, "tweetItem");
        ((TwitterView) getViewState()).shareLink(AppConfiguration$Twitter.INSTANCE.getTweetUrl(this.socialNetwork.getSocialUserName(), tweetItem.getId()));
    }

    public final void onResetMenuClicked() {
        ((TwitterView) getViewState()).showResetTwitterDialog(new DialogModel(this.resourceManager.getString(C3417R.string.social_reset_account_title, this.socialNetwork.getSocialName()), this.resourceManager.getString(C3417R.string.social_reset_account_message, this.socialNetwork.getSocialName()), this.resourceManager.getString(C3417R.string.social_reset_account_negative_button), this.resourceManager.getString(C3417R.string.social_reset_account_positive_button)));
    }

    public final void onResetConfirmClicked() {
        Observable scheduleIO = SchedulersExtKt.scheduleIO(this.socialUseCase.logout(this.socialNetwork));
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Disposable subscribe = RxExtKt.withLoadingDialog$default(scheduleIO, (BaseView) viewState, false, 2, (Object) null).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1481xc9d68b0b(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1482xc9d68b0c((BaseView) getViewState())));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void subscribeToLikeToggles() {
        Observable<TweetItem> distinctUntilChanged = this.likeToggleSubject.debounce(200L, TimeUnit.MILLISECONDS).distinctUntilChanged();
        Intrinsics.checkNotNullExpressionValue(distinctUntilChanged, "likeToggleSubject\n      …  .distinctUntilChanged()");
        Disposable subscribe = SchedulersExtKt.scheduleIO(distinctUntilChanged).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1483xbd4bb315(this)), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new C1484xbd4bb316(null)));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
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
        copy = tweetInfo.copy((r28 & 1) != 0 ? tweetInfo.f430id : 0L, (r28 & 2) != 0 ? tweetInfo.authorName : null, (r28 & 4) != 0 ? tweetInfo.authorNickname : null, (r28 & 8) != 0 ? tweetInfo.avatarUrl : null, (r28 & 16) != 0 ? tweetInfo.likesCount : tweetInfo.getLikesCount() + (tweetInfo.isLiked() ? -1 : 1), (r28 & 32) != 0 ? tweetInfo.quotesCount : 0, (r28 & 64) != 0 ? tweetInfo.retweetsCount : 0, (r28 & 128) != 0 ? tweetInfo.text : null, (r28 & 256) != 0 ? tweetInfo.createdAt : 0L, (r28 & 512) != 0 ? tweetInfo.isLiked : !tweetInfo.isLiked(), (r28 & 1024) != 0 ? tweetInfo.mediaInfo : null);
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
