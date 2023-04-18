package com.iMe.p031ui.twitter.search.adapter;

import com.chad.library.adapter.base.BaseNodeAdapter;
import com.chad.library.adapter.base.entity.node.BaseNode;
import com.chad.library.adapter.base.module.LoadMoreModule;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.common.GlobalStateItem;
import com.iMe.model.twitter.TwitterInviteItem;
import com.iMe.model.twitter.TwitterUserItem;
import com.iMe.p031ui.adapter.provider.GlobalStateProvider;
import com.iMe.p031ui.adapter.provider.TwitterInviteProvider;
import com.iMe.p031ui.adapter.provider.TwitterUserProvider;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: TwitterUsersRecycleAdapter.kt */
/* renamed from: com.iMe.ui.twitter.search.adapter.TwitterUsersRecycleAdapter */
/* loaded from: classes3.dex */
public final class TwitterUsersRecycleAdapter extends BaseNodeAdapter<BaseNode> implements LoadMoreModule {
    private final GlobalStateProvider globalStateProvider;
    private final TwitterInviteProvider twitterInviteProvider;
    private final TwitterUserProvider twitterUserProvider;

    public final GlobalStateProvider getGlobalStateProvider() {
        return this.globalStateProvider;
    }

    public final TwitterInviteProvider getTwitterInviteProvider() {
        return this.twitterInviteProvider;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TwitterUsersRecycleAdapter(GlobalStateProvider globalStateProvider, TwitterInviteProvider twitterInviteProvider, TwitterUserProvider twitterUserProvider) {
        super(null, 1, null);
        Intrinsics.checkNotNullParameter(globalStateProvider, "globalStateProvider");
        Intrinsics.checkNotNullParameter(twitterInviteProvider, "twitterInviteProvider");
        Intrinsics.checkNotNullParameter(twitterUserProvider, "twitterUserProvider");
        this.globalStateProvider = globalStateProvider;
        this.twitterInviteProvider = twitterInviteProvider;
        this.twitterUserProvider = twitterUserProvider;
        addItemProvider(BaseQuickAdapterExtKt.asItem(globalStateProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(twitterInviteProvider));
        addItemProvider(BaseQuickAdapterExtKt.asItem(twitterUserProvider));
    }

    @Override // com.chad.library.adapter.base.BaseProviderMultiAdapter
    protected int getItemType(List<? extends BaseNode> data, int i) {
        Intrinsics.checkNotNullParameter(data, "data");
        BaseNode baseNode = data.get(i);
        return baseNode instanceof GlobalStateItem ? IdFabric$ViewTypes.GLOBAL_STATE : baseNode instanceof TwitterUserItem ? IdFabric$ViewTypes.TWITTER_USER : baseNode instanceof TwitterInviteItem ? IdFabric$ViewTypes.TWITTER_INVITE : IdFabric$ViewTypes.TWITTER_USER;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewRecycled((TwitterUsersRecycleAdapter) holder);
        int itemViewType = holder.getItemViewType();
        if (itemViewType == this.twitterUserProvider.getItemViewType()) {
            this.twitterUserProvider.onViewRecycled();
        } else if (itemViewType == this.twitterInviteProvider.getItemViewType()) {
            this.twitterInviteProvider.onViewRecycled();
        }
    }
}
