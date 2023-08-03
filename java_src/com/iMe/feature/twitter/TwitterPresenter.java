package com.iMe.feature.twitter;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.feature.socialMedias.SocialNetwork;
import com.iMe.feature.socialMedias.SocialUseCase;
import com.iMe.mapper.twitter.TweetInfoUiMappingKt;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.state.GlobalState;
import com.iMe.model.twitter.TweetItem;
import com.iMe.model.twitter.TweetsDateItem;
import com.iMe.p031ui.base.mvp.base.BasePresenter;
import com.iMe.p031ui.base.mvp.base.BaseView;
import com.iMe.storage.common.AppConfiguration$Twitter;
import com.iMe.storage.domain.interactor.twitter.TwitterInteractor;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.TweetInfo;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.extentions.p032rx.RxExtKt;
import com.iMe.utils.extentions.p032rx.RxExtKt$sam$i$io_reactivex_functions_Consumer$0;
import com.iMe.utils.extentions.p032rx.SchedulersExtKt;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.subjects.PublishSubject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import moxy.InjectViewState;
import okhttp3.internal.Util;
import org.telegram.messenger.C3419R;
import org.telegram.messenger.LocaleController;
import timber.log.Timber;
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

    public final void loadTweets(final boolean z, boolean z2) {
        long longOrDefault = Util.toLongOrDefault(this.socialNetwork.getSocialElementId(), -1L);
        final boolean z3 = (z || z2) ? false : true;
        if (!z3 || this.lastItemId != null) {
            Disposable subscribe = SchedulersExtKt.scheduleIO(this.twitterInteractor.getUserTweets(this.telegramProfileId, longOrDefault, this.lastItemId)).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends List<? extends TweetInfo>>, Unit>() { // from class: com.iMe.feature.twitter.TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends TweetInfo>> result) {
                    m1194invoke(result);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: collision with other method in class */
                public final void m1194invoke(Result<? extends List<? extends TweetInfo>> it) {
                    List list;
                    List list2;
                    List list3;
                    List distinct;
                    List<BaseNode> list4;
                    List<BaseNode> list5;
                    List list6;
                    List list7;
                    List list8;
                    int collectionSizeOrDefault;
                    Intrinsics.checkNotNullExpressionValue(it, "it");
                    Result<? extends List<? extends TweetInfo>> result = it;
                    if (result instanceof Result.Success) {
                        ((TwitterView) TwitterPresenter.this.getViewState()).showRefreshing(false);
                        TwitterPresenter twitterPresenter = TwitterPresenter.this;
                        Result.Success success = (Result.Success) result;
                        TweetInfo tweetInfo = (TweetInfo) CollectionsKt.lastOrNull((List<? extends Object>) success.getData());
                        twitterPresenter.lastItemId = tweetInfo != null ? Long.valueOf(tweetInfo.getId()) : null;
                        if (!((List) success.getData()).isEmpty()) {
                            list = TwitterPresenter.this.items;
                            list.clear();
                            list2 = TwitterPresenter.this.tweets;
                            list2.addAll((Collection) success.getData());
                            list3 = TwitterPresenter.this.tweets;
                            distinct = CollectionsKt___CollectionsKt.distinct(list3);
                            LinkedHashMap linkedHashMap = new LinkedHashMap();
                            for (Object obj : distinct) {
                                String formatDateChat = LocaleController.formatDateChat(((TweetInfo) obj).getCreatedAt());
                                Object obj2 = linkedHashMap.get(formatDateChat);
                                if (obj2 == null) {
                                    obj2 = new ArrayList();
                                    linkedHashMap.put(formatDateChat, obj2);
                                }
                                ((List) obj2).add(obj);
                            }
                            for (Map.Entry entry : linkedHashMap.entrySet()) {
                                String date = (String) entry.getKey();
                                List<TweetInfo> list9 = (List) entry.getValue();
                                list7 = TwitterPresenter.this.items;
                                Intrinsics.checkNotNullExpressionValue(date, "date");
                                list7.add(new TweetsDateItem(date));
                                list8 = TwitterPresenter.this.items;
                                collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list9, 10);
                                ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                                for (TweetInfo tweetInfo2 : list9) {
                                    arrayList.add(TweetInfoUiMappingKt.mapToUi(tweetInfo2));
                                }
                                list8.addAll(arrayList);
                            }
                            if (z3) {
                                list6 = TwitterPresenter.this.items;
                                ((TwitterView) TwitterPresenter.this.getViewState()).onLoadMoreItems(list6);
                                return;
                            } else if (z) {
                                list5 = TwitterPresenter.this.items;
                                ((TwitterView) TwitterPresenter.this.getViewState()).renderInitialItems(list5);
                                return;
                            } else {
                                list4 = TwitterPresenter.this.items;
                                ((TwitterView) TwitterPresenter.this.getViewState()).renderItems(list4);
                                return;
                            }
                        }
                        if (!z3) {
                            TwitterPresenter.this.renderGlobalState(GlobalState.Empty.Twitter.INSTANCE);
                        }
                        ((TwitterView) TwitterPresenter.this.getViewState()).onLoadMoreComplete();
                    } else if (result instanceof Result.Loading) {
                        if (z) {
                            TwitterPresenter.this.renderGlobalState(GlobalState.Progress.INSTANCE);
                        }
                    } else if (result instanceof Result.Error) {
                        ((TwitterView) TwitterPresenter.this.getViewState()).showRefreshing(false);
                        if (z3) {
                            ((TwitterView) TwitterPresenter.this.getViewState()).onLoadMoreError();
                        } else if (((Result.Error) result).getError().isNoConnectionStatus()) {
                            TwitterPresenter.this.renderGlobalState(GlobalState.NoInternet.INSTANCE);
                        } else {
                            TwitterPresenter.this.renderGlobalState(GlobalState.Unexpected.INSTANCE);
                        }
                    }
                }
            }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.feature.twitter.TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$2
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                    Timber.m6e(th);
                    BaseView baseView = BaseView.this;
                    if (baseView != null) {
                        String message = th.getMessage();
                        if (message == null) {
                            message = "";
                        }
                        baseView.showToast(message);
                    }
                }
            }));
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
        ((TwitterView) getViewState()).showResetTwitterDialog(new DialogModel(this.resourceManager.getString(C3419R.string.social_reset_account_title, this.socialNetwork.getSocialName()), this.resourceManager.getString(C3419R.string.social_reset_account_message, this.socialNetwork.getSocialName()), this.resourceManager.getString(C3419R.string.social_reset_account_negative_button), this.resourceManager.getString(C3419R.string.social_reset_account_positive_button)));
    }

    public final void onResetConfirmClicked() {
        Observable scheduleIO = SchedulersExtKt.scheduleIO(this.socialUseCase.logout(this.socialNetwork));
        T viewState = getViewState();
        Intrinsics.checkNotNullExpressionValue(viewState, "viewState");
        Observable withLoadingDialog$default = RxExtKt.withLoadingDialog$default(scheduleIO, (BaseView) viewState, false, 2, (Object) null);
        final BaseView baseView = (BaseView) getViewState();
        Disposable subscribe = withLoadingDialog$default.subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Result<? extends Boolean>, Unit>() { // from class: com.iMe.feature.twitter.TwitterPresenter$onResetConfirmClicked$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
                m1195invoke(result);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1195invoke(Result<? extends Boolean> it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                ((TwitterView) TwitterPresenter.this.getViewState()).finishScreen();
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.feature.twitter.TwitterPresenter$onResetConfirmClicked$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView2 = BaseView.this;
                if (baseView2 != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView2.showToast(message);
                }
            }
        }));
        Intrinsics.checkNotNullExpressionValue(subscribe, "viewState: BaseView? = n…Error.invoke()\n        })");
        BasePresenter.autoDispose$default(this, subscribe, null, 1, null);
    }

    private final void subscribeToLikeToggles() {
        Observable<TweetItem> distinctUntilChanged = this.likeToggleSubject.debounce(200L, TimeUnit.MILLISECONDS).distinctUntilChanged();
        Intrinsics.checkNotNullExpressionValue(distinctUntilChanged, "likeToggleSubject\n      …  .distinctUntilChanged()");
        Disposable subscribe = SchedulersExtKt.scheduleIO(distinctUntilChanged).subscribe(new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<TweetItem, Unit>() { // from class: com.iMe.feature.twitter.TwitterPresenter$subscribeToLikeToggles$$inlined$subscribeWithErrorHandle$default$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(TweetItem tweetItem) {
                m1196invoke(tweetItem);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: collision with other method in class */
            public final void m1196invoke(TweetItem it) {
                Intrinsics.checkNotNullExpressionValue(it, "it");
                TwitterPresenter.this.toggleItemLikeStatus(it);
            }
        }), new RxExtKt$sam$i$io_reactivex_functions_Consumer$0(new Function1<Throwable, Unit>() { // from class: com.iMe.feature.twitter.TwitterPresenter$subscribeToLikeToggles$$inlined$subscribeWithErrorHandle$default$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                Timber.m6e(th);
                BaseView baseView = BaseView.this;
                if (baseView != null) {
                    String message = th.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    baseView.showToast(message);
                }
            }
        }));
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
        copy = tweetInfo.copy((r28 & 1) != 0 ? tweetInfo.f433id : 0L, (r28 & 2) != 0 ? tweetInfo.authorName : null, (r28 & 4) != 0 ? tweetInfo.authorNickname : null, (r28 & 8) != 0 ? tweetInfo.avatarUrl : null, (r28 & 16) != 0 ? tweetInfo.likesCount : tweetInfo.getLikesCount() + (tweetInfo.isLiked() ? -1 : 1), (r28 & 32) != 0 ? tweetInfo.quotesCount : 0, (r28 & 64) != 0 ? tweetInfo.retweetsCount : 0, (r28 & 128) != 0 ? tweetInfo.text : null, (r28 & 256) != 0 ? tweetInfo.createdAt : 0L, (r28 & 512) != 0 ? tweetInfo.isLiked : !tweetInfo.isLiked(), (r28 & 1024) != 0 ? tweetInfo.mediaInfo : null);
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
