package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.twitter.TwitterUserItem;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3301R;
import org.telegram.p048ui.Cells.UserCell;
/* compiled from: TwitterUserProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.TwitterUserProvider */
/* loaded from: classes3.dex */
public final class TwitterUserProvider extends BaseNodeProvider<TwitterUserItem> {
    private final int itemViewType = IdFabric$ViewTypes.TWITTER_USER;
    private final int layoutId = C3301R.layout.fork_recycle_item_twitter_user;
    private UserCell userCell;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (TwitterUserItem) obj, (List<? extends Object>) list);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    public final void onViewRecycled() {
        this.userCell = null;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, TwitterUserItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3301R.C3304id.frame_container;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setRippleBackground(helper, i, true), i, new TwitterUserProvider$convert$1(item, this));
    }

    public void convert(BaseViewHolder helper, TwitterUserItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        UserCell userCell = this.userCell;
        if (userCell != null) {
            userCell.setData(null, item.getName(), item.getNickname(), 0, true);
            userCell.hideNameDrawable();
            userCell.setAvatar(item.getAvatarUrl());
        }
    }
}
