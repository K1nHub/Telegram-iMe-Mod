package com.iMe.p030ui.adapter.provider;

import android.widget.FrameLayout;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.twitter.TwitterUserItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.p043ui.Cells.UserCell;
/* compiled from: TwitterUserProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TwitterUserProvider */
/* loaded from: classes3.dex */
public final class TwitterUserProvider extends BaseNodeProvider<TwitterUserItem> {
    private final int itemViewType = IdFabric$ViewTypes.TWITTER_USER;
    private final int layoutId = C3632R.layout.fork_recycle_item_twitter_user;
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
    public void convert(BaseViewHolder helper, final TwitterUserItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        int i = C3632R.C3635id.frame_container;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.setRippleBackground(helper, i, true), i, new Function1<FrameLayout, Unit>() { // from class: com.iMe.ui.adapter.provider.TwitterUserProvider$convert$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(FrameLayout frameLayout) {
                invoke2(frameLayout);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(FrameLayout applyForView) {
                Intrinsics.checkNotNullParameter(applyForView, "$this$applyForView");
                applyForView.removeAllViews();
                UserCell userCell = new UserCell(applyForView.getContext(), 0, 0, false);
                TwitterUserItem twitterUserItem = TwitterUserItem.this;
                userCell.setData(null, twitterUserItem.getName(), twitterUserItem.getNickname(), 0, true);
                userCell.hideNameDrawable();
                userCell.setAvatar(twitterUserItem.getAvatarUrl());
                this.userCell = userCell;
                applyForView.addView(userCell);
            }
        });
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
