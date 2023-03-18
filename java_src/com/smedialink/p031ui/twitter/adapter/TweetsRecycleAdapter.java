package com.smedialink.p031ui.twitter.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.common.GlobalStateItem;
import com.smedialink.model.twitter.TweetItem;
import com.smedialink.model.twitter.TweetsDateItem;
import com.smedialink.p031ui.adapter.provider.GlobalStateProvider;
import com.smedialink.p031ui.adapter.provider.TweetDatesProvider;
import com.smedialink.p031ui.adapter.provider.TweetProvider;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
/* compiled from: TweetsRecycleAdapter.kt */
/* renamed from: com.smedialink.ui.twitter.adapter.TweetsRecycleAdapter */
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
        addChildClickViewIds(C3286R.C3289id.image_share);
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
