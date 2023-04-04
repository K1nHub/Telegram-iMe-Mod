package com.iMe.p032ui.twitter;

import com.chad.library.adapter.base.entity.node.BaseNode;
import com.iMe.mapper.twitter.TweetInfoUiMappingKt;
import com.iMe.model.state.GlobalState;
import com.iMe.model.twitter.TweetsDateItem;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.twitter.TweetInfo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.LocaleController;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.twitter.TwitterPresenter$loadTweets$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2038x586e495a extends Lambda implements Function1<Result<? extends List<? extends TweetInfo>>, Unit> {
    final /* synthetic */ boolean $isInitialLoad$inlined;
    final /* synthetic */ boolean $isLoadMore$inlined;
    final /* synthetic */ TwitterPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2038x586e495a(TwitterPresenter twitterPresenter, boolean z, boolean z2) {
        super(1);
        this.this$0 = twitterPresenter;
        this.$isLoadMore$inlined = z;
        this.$isInitialLoad$inlined = z2;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends List<? extends TweetInfo>> result) {
        m1370invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1370invoke(Result<? extends List<? extends TweetInfo>> it) {
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
            ((TwitterView) this.this$0.getViewState()).showRefreshing(false);
            TwitterPresenter twitterPresenter = this.this$0;
            Result.Success success = (Result.Success) result;
            TweetInfo tweetInfo = (TweetInfo) CollectionsKt.lastOrNull((List) success.getData());
            twitterPresenter.lastItemId = tweetInfo != null ? Long.valueOf(tweetInfo.getId()) : null;
            if (!((List) success.getData()).isEmpty()) {
                list = this.this$0.items;
                list.clear();
                list2 = this.this$0.tweets;
                list2.addAll((Collection) success.getData());
                list3 = this.this$0.tweets;
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
                    list7 = this.this$0.items;
                    Intrinsics.checkNotNullExpressionValue(date, "date");
                    list7.add(new TweetsDateItem(date));
                    list8 = this.this$0.items;
                    collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(list9, 10);
                    ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
                    for (TweetInfo tweetInfo2 : list9) {
                        arrayList.add(TweetInfoUiMappingKt.mapToUi(tweetInfo2));
                    }
                    list8.addAll(arrayList);
                }
                if (this.$isLoadMore$inlined) {
                    list6 = this.this$0.items;
                    ((TwitterView) this.this$0.getViewState()).onLoadMoreItems(list6);
                    return;
                } else if (this.$isInitialLoad$inlined) {
                    list5 = this.this$0.items;
                    ((TwitterView) this.this$0.getViewState()).renderInitialItems(list5);
                    return;
                } else {
                    list4 = this.this$0.items;
                    ((TwitterView) this.this$0.getViewState()).renderItems(list4);
                    return;
                }
            }
            if (!this.$isLoadMore$inlined) {
                this.this$0.renderGlobalState(GlobalState.Empty.Twitter.INSTANCE);
            }
            ((TwitterView) this.this$0.getViewState()).onLoadMoreComplete();
        } else if (result instanceof Result.Loading) {
            if (this.$isInitialLoad$inlined) {
                this.this$0.renderGlobalState(GlobalState.Progress.INSTANCE);
            }
        } else if (result instanceof Result.Error) {
            ((TwitterView) this.this$0.getViewState()).showRefreshing(false);
            if (this.$isLoadMore$inlined) {
                ((TwitterView) this.this$0.getViewState()).onLoadMoreError();
            } else if (((Result.Error) result).getError().isNoConnectionStatus()) {
                this.this$0.renderGlobalState(GlobalState.NoInternet.INSTANCE);
            } else {
                this.this$0.renderGlobalState(GlobalState.Unexpected.INSTANCE);
            }
        }
    }
}
