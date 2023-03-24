package com.smedialink.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.smedialink.common.IdFabric$ViewTypes;
import com.smedialink.model.twitter.TwitterInviteItem;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import com.smedialink.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.fork.utils.Callbacks$Callback;
import org.fork.utils.Callbacks$Callback1;
import org.telegram.messenger.C3301R;
import org.telegram.p048ui.Cells.StickerSetCell;
/* compiled from: TwitterInviteProvider.kt */
/* renamed from: com.smedialink.ui.adapter.provider.TwitterInviteProvider */
/* loaded from: classes3.dex */
public final class TwitterInviteProvider extends BaseNodeProvider<TwitterInviteItem> {
    private final int itemViewType;
    private final int layoutId;
    private Callbacks$Callback1<TwitterInviteItem> onInviteClickAction;
    private final ResourceManager resourceManager;
    private StickerSetCell stickerSetCell;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onInviteClickAction$lambda$0(TwitterInviteItem twitterInviteItem) {
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (TwitterInviteItem) obj, (List<? extends Object>) list);
    }

    public TwitterInviteProvider(ResourceManager resourceManager) {
        Intrinsics.checkNotNullParameter(resourceManager, "resourceManager");
        this.resourceManager = resourceManager;
        this.onInviteClickAction = TwitterInviteProvider$$ExternalSyntheticLambda0.INSTANCE;
        this.itemViewType = IdFabric$ViewTypes.TWITTER_INVITE;
        this.layoutId = C3301R.layout.fork_recycle_item_twitter_user;
    }

    public final Callbacks$Callback1<TwitterInviteItem> getOnInviteClickAction() {
        return this.onInviteClickAction;
    }

    public final void setOnInviteClickAction(Callbacks$Callback1<TwitterInviteItem> callbacks$Callback1) {
        Intrinsics.checkNotNullParameter(callbacks$Callback1, "<set-?>");
        this.onInviteClickAction = callbacks$Callback1;
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
        this.stickerSetCell = null;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, TwitterInviteItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseQuickAdapterExtKt.applyForView(helper, C3301R.C3304id.frame_container, new TwitterInviteProvider$convert$1(item, this));
    }

    public void convert(BaseViewHolder helper, final TwitterInviteItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        StickerSetCell stickerSetCell = this.stickerSetCell;
        if (stickerSetCell != null) {
            stickerSetCell.setText(item.getNickname(), this.resourceManager.getString(C3301R.string.twitter_search_invite_subtitle), C3301R.C3303drawable.fork_drawer_social_twitter, true);
            stickerSetCell.setCustomButtonAction(new Callbacks$Callback() { // from class: com.smedialink.ui.adapter.provider.TwitterInviteProvider$$ExternalSyntheticLambda1
                @Override // org.fork.utils.Callbacks$Callback
                public final void invoke() {
                    TwitterInviteProvider.convert$lambda$2$lambda$1(TwitterInviteProvider.this, item);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void convert$lambda$2$lambda$1(TwitterInviteProvider this$0, TwitterInviteItem item) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(item, "$item");
        this$0.onInviteClickAction.invoke(item);
    }
}
