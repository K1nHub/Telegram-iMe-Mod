package com.iMe.p031ui.adapter.provider;

import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.twitter.TweetItem;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3242R;
/* compiled from: TweetProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TweetProvider */
/* loaded from: classes3.dex */
public final class TweetProvider extends BaseNodeProvider<TweetItem> {
    private final int itemViewType = IdFabric$ViewTypes.TWEET;
    private final int layoutId = C3242R.layout.fork_recycle_item_tweet;

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (TweetItem) obj, (List<? extends Object>) list);
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getItemViewType() {
        return this.itemViewType;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public int getLayoutId() {
        return this.layoutId;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void convert(BaseViewHolder helper, TweetItem item) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(helper, C3242R.C3245id.view_tweet, "windowBackgroundWhite");
        int i = C3242R.C3245id.text_name;
        int i2 = C3242R.C3245id.text_post;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedBackgroundColor, "windowBackgroundWhiteBlackText", i, i2);
        int i3 = C3242R.C3245id.text_nickname;
        int i4 = C3242R.C3245id.text_time;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, "windowBackgroundWhiteGrayText", i3, i4);
        int i5 = C3242R.C3245id.text_comments_count;
        int i6 = C3242R.C3245id.text_retweets_count;
        int i7 = C3242R.C3245id.text_likes_count;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, "windowBackgroundWhiteGrayText2", i5, i6, i7);
        int i8 = C3242R.C3245id.image_share;
        BaseViewHolder themedImageColor = BaseQuickAdapterExtKt.setThemedImageColor(themedTextColor3, "windowBackgroundWhiteGrayText2", C3242R.C3245id.image_comments, C3242R.C3245id.image_retweets, i8);
        int i9 = C3242R.C3245id.image_like;
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.loadImage(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedImageColor(BaseQuickAdapterExtKt.setAutoSizedCircleRippleBackground(themedImageColor.setImageResource(i9, item.isLiked() ? C3242R.C3244drawable.fork_ic_heart_filled_20 : C3242R.C3244drawable.fork_ic_heart_20), i8), i9, item.isLiked() ? "windowBackgroundWhiteRedText5" : "windowBackgroundWhiteGrayText2"), i), C3242R.C3245id.image_avatar, item.getAvatarUrl(), Integer.valueOf(C3242R.C3244drawable.fork_logo_avatar), true).setText(i, item.getAuthorName()).setText(i3, item.getAuthorNickname()).setText(i2, item.getText()).setText(i5, item.getCommentsCountText()).setText(i6, item.getRetweetsCountText()).setText(i7, item.getLikesCountText()).setText(i4, item.getDate()), i2, TweetProvider$convert$1$1.INSTANCE);
    }

    public void convert(BaseViewHolder helper, TweetItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        int i = C3242R.C3245id.image_like;
        BaseQuickAdapterExtKt.loadImage(BaseQuickAdapterExtKt.setThemedImageColor(helper.setImageResource(i, item.isLiked() ? C3242R.C3244drawable.fork_ic_heart_filled_20 : C3242R.C3244drawable.fork_ic_heart_20), i, item.isLiked() ? "windowBackgroundWhiteRedText5" : "windowBackgroundWhiteGrayText2"), C3242R.C3245id.image_avatar, item.getAvatarUrl(), Integer.valueOf(C3242R.C3244drawable.fork_logo_avatar), true).setText(C3242R.C3245id.text_name, item.getAuthorName()).setText(C3242R.C3245id.text_nickname, item.getAuthorNickname()).setText(C3242R.C3245id.text_post, item.getText()).setText(C3242R.C3245id.text_comments_count, item.getCommentsCountText()).setText(C3242R.C3245id.text_retweets_count, item.getRetweetsCountText()).setText(C3242R.C3245id.text_likes_count, item.getLikesCountText()).setText(C3242R.C3245id.text_time, item.getDate());
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        BaseQuickAdapterExtKt.applyForView(holder, C3242R.C3245id.text_post, TweetProvider$onViewAttachedToWindow$1.INSTANCE);
    }
}
