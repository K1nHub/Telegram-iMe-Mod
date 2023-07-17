package com.iMe.p031ui.adapter.provider;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.chad.library.adapter.base.provider.BaseNodeProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.iMe.common.IdFabric$ViewTypes;
import com.iMe.model.twitter.TweetItem;
import com.iMe.p031ui.common.LinePagerIndicatorDecoration;
import com.iMe.storage.domain.model.twitter.MediaInfoDomain;
import com.iMe.storage.domain.model.twitter.MediaType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import com.iMe.utils.CornersOutlineProviderKt;
import com.iMe.utils.extentions.common.BaseQuickAdapterExtKt;
import com.iMe.utils.extentions.common.ImageViewExtKt;
import com.iMe.utils.extentions.common.StringExtKt;
import com.iMe.utils.extentions.common.ViewExtKt;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.p042mp.KoinPlatformTools;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.databinding.ForkRecylcerImageItemBinding;
import org.telegram.p043ui.ActionBar.Theme;
/* compiled from: TweetProvider.kt */
/* renamed from: com.iMe.ui.adapter.provider.TweetProvider */
/* loaded from: classes.dex */
public final class TweetProvider extends BaseNodeProvider<TweetItem> implements KoinComponent {
    private final LinePagerIndicatorDecoration itemDecoration = new LinePagerIndicatorDecoration();
    private final int itemViewType;
    private final int layoutId;
    private Function1<? super TweetItem, Unit> onTweetItemClick;
    private final Lazy resource$delegate;

    public TweetProvider() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new TweetProvider$special$$inlined$inject$default$1(this, null, null));
        this.resource$delegate = lazy;
        this.itemViewType = IdFabric$ViewTypes.TWEET;
        this.layoutId = C3417R.layout.fork_recycle_item_tweet;
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public /* bridge */ /* synthetic */ void convert(BaseViewHolder baseViewHolder, Object obj, List list) {
        convert(baseViewHolder, (TweetItem) obj, (List<? extends Object>) list);
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final ResourceManager getResource() {
        return (ResourceManager) this.resource$delegate.getValue();
    }

    public final void setOnTweetItemClick(Function1<? super TweetItem, Unit> function1) {
        this.onTweetItemClick = function1;
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
        Object obj;
        boolean z;
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Iterator<T> it = item.getMediaInfo().iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((MediaInfoDomain) obj).getType() == MediaType.PHOTO) {
                z = true;
                continue;
            } else {
                z = false;
                continue;
            }
            if (z) {
                break;
            }
        }
        MediaInfoDomain mediaInfoDomain = (MediaInfoDomain) obj;
        String url = mediaInfoDomain != null ? mediaInfoDomain.getUrl() : null;
        if (url == null) {
            url = "";
        }
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(helper, C3417R.C3420id.view_tweet, Theme.key_windowBackgroundWhite);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        int i2 = C3417R.C3420id.text_name;
        int i3 = C3417R.C3420id.text_post;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedBackgroundColor, i, i2, i3);
        int i4 = Theme.key_windowBackgroundWhiteGrayText;
        int i5 = C3417R.C3420id.text_nickname;
        int i6 = C3417R.C3420id.text_time;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i4, i5, i6);
        int i7 = Theme.key_windowBackgroundWhiteGrayText2;
        int i8 = C3417R.C3420id.text_comments_count;
        int i9 = C3417R.C3420id.text_retweets_count;
        int i10 = C3417R.C3420id.text_likes_count;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i7, i8, i9, i10);
        int i11 = C3417R.C3420id.image_share;
        BaseViewHolder themedImageColor = BaseQuickAdapterExtKt.setThemedImageColor(themedTextColor3, i7, C3417R.C3420id.image_comments, C3417R.C3420id.image_retweets, i11, C3417R.C3420id.image_menu);
        int i12 = C3417R.C3420id.image_like;
        BaseViewHolder autoSizedCircleRippleBackground = BaseQuickAdapterExtKt.setAutoSizedCircleRippleBackground(themedImageColor.setImageResource(i12, item.isLiked() ? C3417R.C3419drawable.fork_ic_heart_filled_20 : C3417R.C3419drawable.fork_ic_heart_20), i11);
        if (item.isLiked()) {
            i7 = Theme.key_text_RedRegular;
        }
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedImageColor(autoSizedCircleRippleBackground, i12, i7), i2), C3417R.C3420id.image_avatar, item.getAvatarUrl(), Integer.valueOf(C3417R.C3419drawable.fork_logo_avatar), false, 8, null).setText(i2, item.getAuthorName()).setText(i5, item.getAuthorNickname()).setText(i3, StringExtKt.addTwitterLinks(item.getText())).setText(i8, item.getCommentsCountText()).setText(i9, item.getRetweetsCountText()).setText(i10, item.getLikesCountText()).setText(i6, item.getDate()), i3, TweetProvider$convert$1$1.INSTANCE), C3417R.C3420id.recycler, new TweetProvider$convert$1$2(url, this, item));
    }

    public void convert(BaseViewHolder helper, TweetItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        int i = C3417R.C3420id.image_like;
        BaseQuickAdapterExtKt.loadImage$default(BaseQuickAdapterExtKt.setThemedImageColor(helper.setImageResource(i, item.isLiked() ? C3417R.C3419drawable.fork_ic_heart_filled_20 : C3417R.C3419drawable.fork_ic_heart_20), i, item.isLiked() ? Theme.key_text_RedRegular : Theme.key_windowBackgroundWhiteGrayText2), C3417R.C3420id.image_avatar, item.getAvatarUrl(), Integer.valueOf(C3417R.C3419drawable.fork_logo_avatar), false, 8, null).setText(C3417R.C3420id.text_name, item.getAuthorName()).setText(C3417R.C3420id.text_nickname, item.getAuthorNickname()).setText(C3417R.C3420id.text_post, item.getText()).setText(C3417R.C3420id.text_comments_count, item.getCommentsCountText()).setText(C3417R.C3420id.text_retweets_count, item.getRetweetsCountText()).setText(C3417R.C3420id.text_likes_count, item.getLikesCountText()).setText(C3417R.C3420id.text_time, item.getDate());
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        BaseQuickAdapterExtKt.applyForView(holder, C3417R.C3420id.text_post, TweetProvider$onViewAttachedToWindow$1.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onBindImage(View view, MediaInfoDomain mediaInfoDomain, final TweetItem tweetItem) {
        ForkRecylcerImageItemBinding bind = ForkRecylcerImageItemBinding.bind(view);
        FrameLayout root = bind.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "root");
        CornersOutlineProviderKt.roundCorners(root, 8.0f);
        ProgressBar progressBar = bind.progressBar;
        Intrinsics.checkNotNullExpressionValue(progressBar, "progressBar");
        ViewExtKt.visible$default(progressBar, false, 1, null);
        ImageView imageView = bind.imageView;
        Intrinsics.checkNotNullExpressionValue(imageView, "imageView");
        ImageViewExtKt.withGlide(imageView, mediaInfoDomain.getUrl(), new TweetProvider$onBindImage$1$1(bind), new TweetProvider$onBindImage$1$2(bind));
        bind.errorBlock.textError.setText(getResource().getString(C3417R.string.error_block_failed_to_load_media));
        bind.imageView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.adapter.provider.TweetProvider$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                TweetProvider.onBindImage$lambda$4$lambda$3(TweetProvider.this, tweetItem, view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBindImage$lambda$4$lambda$3(TweetProvider this$0, TweetItem tweet, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(tweet, "$tweet");
        Function1<? super TweetItem, Unit> function1 = this$0.onTweetItemClick;
        if (function1 != null) {
            function1.invoke(tweet);
        }
    }
}
