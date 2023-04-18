package com.iMe.p031ui.twitter.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.twitter.TweetItem;
import com.iMe.model.twitter.TweetsDateItem;
import com.iMe.p031ui.adapter.provider.GlobalStateProvider;
import com.iMe.p031ui.adapter.provider.TweetDatesProvider;
import com.iMe.p031ui.adapter.provider.TweetProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
/* compiled from: TweetsRecycleAdapter.kt */
/* renamed from: com.iMe.ui.twitter.adapter.TweetsRecycleAdapter */
/* loaded from: classes3.dex */
public final class TweetsRecycleAdapter extends BaseNodeAdapter<BaseNode> implements LoadMoreModule {
    private final GlobalStateProvider globalStateProvider;

    public final GlobalStateProvider getGlobalStateProvider() {
        return this.globalStateProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TweetsRecycleAdapter(TweetProvider tweetProvider, TweetDatesProvider tweetsDateProvider, GlobalStateProvider globalStateProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(tweetProvider, "tweetProvider");
        Intrinsics.checkNotNullParameter(tweetsDateProvider, "tweetsDateProvider");
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        this.globalStateProvider = globalStateProvider;
        addChildClickViewIds(C3242R.C3245id.image_share);
        addItemProvider(BaseQuickAdapterExtKt.asItem(globalStateProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(tweetProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(tweetsDateProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : baseNode instanceof TweetItem ? IdFabric$ViewTypes.TWEET : baseNode instanceof TweetsDateItem ? IdFabric$ViewTypes.TWEETS_DATE : IdFabric$ViewTypes.TWEET;
    }
}
