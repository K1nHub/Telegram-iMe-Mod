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
import org.koin.p043mp.KoinPlatformTools;
import org.telegram.messenger.C3295R;
import org.telegram.messenger.databinding.ForkRecylcerImageItemBinding;
import org.telegram.p044ui.ActionBar.Theme;
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
        this.layoutId = C3295R.layout.fork_recycle_item_tweet;
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
        BaseViewHolder themedBackgroundColor = BaseQuickAdapterExtKt.setThemedBackgroundColor(helper, C3295R.C3298id.view_tweet, Theme.key_windowBackgroundWhite);
        int i = C3295R.C3298id.text_name;
        int i2 = Theme.key_windowBackgroundWhiteBlackText;
        BaseViewHolder themedTextColor = BaseQuickAdapterExtKt.setThemedTextColor(themedBackgroundColor, i, i2);
        int i3 = C3295R.C3298id.text_post;
        BaseViewHolder themedTextColor2 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor, i3, i2);
        int i4 = C3295R.C3298id.text_nickname;
        int i5 = Theme.key_windowBackgroundWhiteGrayText;
        BaseViewHolder themedTextColor3 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor2, i4, i5);
        int i6 = C3295R.C3298id.text_time;
        BaseViewHolder themedTextColor4 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor3, i6, i5);
        int i7 = C3295R.C3298id.text_comments_count;
        int i8 = Theme.key_windowBackgroundWhiteGrayText2;
        BaseViewHolder themedTextColor5 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor4, i7, i8);
        int i9 = C3295R.C3298id.text_retweets_count;
        BaseViewHolder themedTextColor6 = BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor5, i9, i8);
        int i10 = C3295R.C3298id.text_likes_count;
        BaseViewHolder themedImageColor = BaseQuickAdapterExtKt.setThemedImageColor(BaseQuickAdapterExtKt.setThemedImageColor(BaseQuickAdapterExtKt.setThemedTextColor(themedTextColor6, i10, i8), C3295R.C3298id.image_comments, i8), C3295R.C3298id.image_retweets, i8);
        int i11 = C3295R.C3298id.image_share;
        BaseViewHolder themedImageColor2 = BaseQuickAdapterExtKt.setThemedImageColor(BaseQuickAdapterExtKt.setThemedImageColor(themedImageColor, i11, i8), C3295R.C3298id.image_menu, i8);
        int i12 = C3295R.C3298id.image_like;
        BaseViewHolder autoSizedCircleRippleBackground = BaseQuickAdapterExtKt.setAutoSizedCircleRippleBackground(themedImageColor2.setImageResource(i12, item.isLiked() ? C3295R.C3297drawable.fork_ic_heart_filled_20 : C3295R.C3297drawable.fork_ic_heart_20), i11);
        if (item.isLiked()) {
            i8 = Theme.key_text_RedRegular;
        }
        BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.applyForView(BaseQuickAdapterExtKt.loadImage(BaseQuickAdapterExtKt.setMediumTypeface(BaseQuickAdapterExtKt.setThemedImageColor(autoSizedCircleRippleBackground, i12, i8), i), C3295R.C3298id.image_avatar, item.getAvatarUrl(), Integer.valueOf(C3295R.C3297drawable.fork_logo_avatar), true).setText(i, item.getAuthorName()).setText(i4, item.getAuthorNickname()).setText(i3, StringExtKt.addTwitterLinks(item.getText())).setText(i7, item.getCommentsCountText()).setText(i9, item.getRetweetsCountText()).setText(i10, item.getLikesCountText()).setText(i6, item.getDate()), i3, TweetProvider$convert$1$1.INSTANCE), C3295R.C3298id.recycler, new TweetProvider$convert$1$2(url, this, item));
    }

    public void convert(BaseViewHolder helper, TweetItem item, List<? extends Object> payloads) {
        Intrinsics.checkNotNullParameter(helper, "helper");
        Intrinsics.checkNotNullParameter(item, "item");
        Intrinsics.checkNotNullParameter(payloads, "payloads");
        int i = C3295R.C3298id.image_like;
        BaseQuickAdapterExtKt.loadImage(BaseQuickAdapterExtKt.setThemedImageColor(helper.setImageResource(i, item.isLiked() ? C3295R.C3297drawable.fork_ic_heart_filled_20 : C3295R.C3297drawable.fork_ic_heart_20), i, item.isLiked() ? Theme.key_text_RedRegular : Theme.key_windowBackgroundWhiteGrayText2), C3295R.C3298id.image_avatar, item.getAvatarUrl(), Integer.valueOf(C3295R.C3297drawable.fork_logo_avatar), true).setText(C3295R.C3298id.text_name, item.getAuthorName()).setText(C3295R.C3298id.text_nickname, item.getAuthorNickname()).setText(C3295R.C3298id.text_post, item.getText()).setText(C3295R.C3298id.text_comments_count, item.getCommentsCountText()).setText(C3295R.C3298id.text_retweets_count, item.getRetweetsCountText()).setText(C3295R.C3298id.text_likes_count, item.getLikesCountText()).setText(C3295R.C3298id.text_time, item.getDate());
    }

    @Override // com.chad.library.adapter.base.provider.BaseItemProvider
    public void onViewAttachedToWindow(BaseViewHolder holder) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        super.onViewAttachedToWindow(holder);
        BaseQuickAdapterExtKt.applyForView(holder, C3295R.C3298id.text_post, TweetProvider$onViewAttachedToWindow$1.INSTANCE);
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
        bind.errorBlock.textError.setText(getResource().getString(C3295R.string.error_block_failed_to_load_media));
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
