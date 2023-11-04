.class public final Lcom/iMe/ui/adapter/provider/TweetProvider;
.super Lcom/chad/library/adapter/base/provider/BaseNodeProvider;
.source "TweetProvider.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/provider/BaseNodeProvider<",
        "Lcom/iMe/model/twitter/TweetItem;",
        ">;",
        "Lorg/koin/core/component/KoinComponent;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTweetProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TweetProvider.kt\ncom/iMe/ui/adapter/provider/TweetProvider\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n56#2,6:160\n1#3:166\n*S KotlinDebug\n*F\n+ 1 TweetProvider.kt\ncom/iMe/ui/adapter/provider/TweetProvider\n*L\n40#1:160,6\n*E\n"
.end annotation


# instance fields
.field private final itemDecoration:Lcom/iMe/ui/common/LinePagerIndicatorDecoration;

.field private final itemViewType:I

.field private final layoutId:I

.field private onTweetItemClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/model/twitter/TweetItem;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final resource$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$jSMMRzm7ysXg2bsTv00OqmBQgPs(Lcom/iMe/ui/adapter/provider/TweetProvider;Lcom/iMe/model/twitter/TweetItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/TweetProvider;->onBindImage$lambda$4$lambda$3(Lcom/iMe/ui/adapter/provider/TweetProvider;Lcom/iMe/model/twitter/TweetItem;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Lcom/chad/library/adapter/base/provider/BaseNodeProvider;-><init>()V

    .line 39
    new-instance v0, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;

    invoke-direct {v0}, Lcom/iMe/ui/common/LinePagerIndicatorDecoration;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider;->itemDecoration:Lcom/iMe/ui/common/LinePagerIndicatorDecoration;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/adapter/provider/TweetProvider$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/adapter/provider/TweetProvider$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider;->resource$delegate:Lkotlin/Lazy;

    .line 43
    sget v0, Lcom/iMe/common/IdFabric$ViewTypes;->TWEET:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider;->itemViewType:I

    .line 44
    sget v0, Lorg/telegram/messenger/R$layout;->fork_recycle_item_tweet:I

    iput v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider;->layoutId:I

    return-void
.end method

.method public static final synthetic access$getItemDecoration$p(Lcom/iMe/ui/adapter/provider/TweetProvider;)Lcom/iMe/ui/common/LinePagerIndicatorDecoration;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider;->itemDecoration:Lcom/iMe/ui/common/LinePagerIndicatorDecoration;

    return-object p0
.end method

.method public static final synthetic access$onBindImage(Lcom/iMe/ui/adapter/provider/TweetProvider;Landroid/view/View;Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;Lcom/iMe/model/twitter/TweetItem;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/TweetProvider;->onBindImage(Landroid/view/View;Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;Lcom/iMe/model/twitter/TweetItem;)V

    return-void
.end method

.method private final getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider;->resource$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final onBindImage(Landroid/view/View;Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;Lcom/iMe/model/twitter/TweetItem;)V
    .locals 4

    .line 146
    invoke-static {p1}, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->bind(Landroid/view/View;)Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    const-string v1, "root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Lcom/iMe/utils/CornersOutlineProviderKt;->roundCorners(Landroid/view/View;F)V

    .line 148
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string v1, "progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 149
    iget-object v0, p1, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->imageView:Landroid/widget/ImageView;

    const-string v1, "imageView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->getUrl()Ljava/lang/String;

    move-result-object p2

    .line 149
    new-instance v1, Lcom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$1;

    invoke-direct {v1, p1}, Lcom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$1;-><init>(Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;)V

    new-instance v2, Lcom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$2;

    invoke-direct {v2, p1}, Lcom/iMe/ui/adapter/provider/TweetProvider$onBindImage$1$2;-><init>(Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;)V

    invoke-static {v0, p2, v1, v2}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->withGlide(Landroid/widget/ImageView;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 154
    iget-object p2, p1, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->errorBlock:Lorg/telegram/messenger/databinding/ForkRecylcerErrorBlockBinding;

    iget-object p2, p2, Lorg/telegram/messenger/databinding/ForkRecylcerErrorBlockBinding;->textError:Landroid/widget/TextView;

    .line 155
    invoke-direct {p0}, Lcom/iMe/ui/adapter/provider/TweetProvider;->getResource()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->error_block_failed_to_load_media:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p1, Lorg/telegram/messenger/databinding/ForkRecylcerImageItemBinding;->imageView:Landroid/widget/ImageView;

    new-instance p2, Lcom/iMe/ui/adapter/provider/TweetProvider$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lcom/iMe/ui/adapter/provider/TweetProvider$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/adapter/provider/TweetProvider;Lcom/iMe/model/twitter/TweetItem;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final onBindImage$lambda$4$lambda$3(Lcom/iMe/ui/adapter/provider/TweetProvider;Lcom/iMe/model/twitter/TweetItem;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$tweet"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object p0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider;->onTweetItemClick:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TweetItem;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "helper"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "item"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/twitter/TweetItem;->getMediaInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;

    invoke-virtual {v7}, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->getType()Lcom/iMe/storage/domain/model/twitter/MediaType;

    move-result-object v7

    sget-object v8, Lcom/iMe/storage/domain/model/twitter/MediaType;->PHOTO:Lcom/iMe/storage/domain/model/twitter/MediaType;

    if-ne v7, v8, :cond_1

    move v7, v5

    goto :goto_0

    :cond_1
    move v7, v6

    :goto_0
    if-eqz v7, :cond_0

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    check-cast v3, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/iMe/storage/domain/model/twitter/MediaInfoDomain;->getUrl()Ljava/lang/String;

    move-result-object v4

    :cond_3
    if-nez v4, :cond_4

    const-string v4, ""

    .line 51
    :cond_4
    sget v2, Lorg/telegram/messenger/R$id;->view_tweet:I

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v0, v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedBackgroundColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 53
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v3, 0x2

    new-array v7, v3, [I

    .line 54
    sget v8, Lorg/telegram/messenger/R$id;->text_name:I

    aput v8, v7, v6

    .line 55
    sget v9, Lorg/telegram/messenger/R$id;->text_post:I

    aput v9, v7, v5

    .line 52
    invoke-static {v0, v2, v7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 58
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    new-array v7, v3, [I

    .line 59
    sget v10, Lorg/telegram/messenger/R$id;->text_nickname:I

    aput v10, v7, v6

    .line 60
    sget v11, Lorg/telegram/messenger/R$id;->text_time:I

    aput v11, v7, v5

    .line 57
    invoke-static {v0, v2, v7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 63
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    const/4 v7, 0x3

    new-array v12, v7, [I

    .line 64
    sget v13, Lorg/telegram/messenger/R$id;->text_comments_count:I

    aput v13, v12, v6

    .line 65
    sget v14, Lorg/telegram/messenger/R$id;->text_retweets_count:I

    aput v14, v12, v5

    .line 66
    sget v15, Lorg/telegram/messenger/R$id;->text_likes_count:I

    aput v15, v12, v3

    .line 62
    invoke-static {v0, v2, v12}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedTextColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    const/4 v12, 0x4

    new-array v12, v12, [I

    .line 70
    sget v16, Lorg/telegram/messenger/R$id;->image_comments:I

    aput v16, v12, v6

    .line 71
    sget v16, Lorg/telegram/messenger/R$id;->image_retweets:I

    aput v16, v12, v5

    .line 72
    sget v6, Lorg/telegram/messenger/R$id;->image_share:I

    aput v6, v12, v3

    .line 73
    sget v3, Lorg/telegram/messenger/R$id;->image_menu:I

    aput v3, v12, v7

    .line 68
    invoke-static {v0, v2, v12}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 76
    sget v3, Lorg/telegram/messenger/R$id;->image_like:I

    .line 77
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/twitter/TweetItem;->isLiked()Z

    move-result v7

    if-eqz v7, :cond_5

    sget v7, Lorg/telegram/messenger/R$drawable;->fork_ic_heart_filled_20:I

    goto :goto_2

    :cond_5
    sget v7, Lorg/telegram/messenger/R$drawable;->fork_ic_heart_20:I

    .line 75
    :goto_2
    invoke-virtual {v0, v3, v7}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 79
    invoke-static {v0, v6}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setAutoSizedCircleRippleBackground(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 82
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/twitter/TweetItem;->isLiked()Z

    move-result v6

    if-eqz v6, :cond_6

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    .line 80
    :cond_6
    invoke-static {v0, v3, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    new-array v2, v5, [I

    const/4 v3, 0x0

    aput v8, v2, v3

    .line 84
    invoke-static {v0, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setMediumTypeface(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;[I)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v16

    .line 85
    sget v17, Lorg/telegram/messenger/R$id;->image_avatar:I

    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/twitter/TweetItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object v18

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_logo_avatar:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x8

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/twitter/TweetItem;->getAuthorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 87
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/twitter/TweetItem;->getAuthorNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 88
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/twitter/TweetItem;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iMe/utils/extentions/common/StringExtKt;->addTwitterLinks(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 89
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/twitter/TweetItem;->getCommentsCountText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v13, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 90
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/twitter/TweetItem;->getRetweetsCountText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 91
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/twitter/TweetItem;->getLikesCountText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 92
    invoke-virtual/range {p2 .. p2}, Lcom/iMe/model/twitter/TweetItem;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v11, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 93
    sget-object v2, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$1;->INSTANCE:Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$1;

    invoke-static {v0, v9, v2}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v0

    .line 97
    sget v2, Lorg/telegram/messenger/R$id;->recycler:I

    new-instance v3, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2;

    move-object/from16 v5, p0

    invoke-direct {v3, v4, v5, v1}, Lcom/iMe/ui/adapter/provider/TweetProvider$convert$1$2;-><init>(Ljava/lang/String;Lcom/iMe/ui/adapter/provider/TweetProvider;Lcom/iMe/model/twitter/TweetItem;)V

    invoke-static {v0, v2, v3}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TweetItem;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/iMe/model/twitter/TweetItem;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "helper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    sget p3, Lorg/telegram/messenger/R$id;->image_like:I

    .line 119
    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->isLiked()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_heart_filled_20:I

    goto :goto_0

    :cond_0
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_heart_20:I

    .line 117
    :goto_0
    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 123
    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->isLiked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedRegular:I

    goto :goto_1

    :cond_1
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    .line 121
    :goto_1
    invoke-static {p1, p3, v0}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->setThemedImageColor(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object v1

    .line 125
    sget v2, Lorg/telegram/messenger/R$id;->image_avatar:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    sget p1, Lorg/telegram/messenger/R$drawable;->fork_logo_avatar:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->loadImage$default(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILjava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 126
    sget p3, Lorg/telegram/messenger/R$id;->text_name:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getAuthorName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 127
    sget p3, Lorg/telegram/messenger/R$id;->text_nickname:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getAuthorNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 128
    sget p3, Lorg/telegram/messenger/R$id;->text_post:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 129
    sget p3, Lorg/telegram/messenger/R$id;->text_comments_count:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getCommentsCountText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 130
    sget p3, Lorg/telegram/messenger/R$id;->text_retweets_count:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getRetweetsCountText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 131
    sget p3, Lorg/telegram/messenger/R$id;->text_likes_count:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getLikesCountText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    move-result-object p1

    .line 132
    sget p3, Lorg/telegram/messenger/R$id;->text_time:I

    invoke-virtual {p2}, Lcom/iMe/model/twitter/TweetItem;->getDate()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Lcom/iMe/model/twitter/TweetItem;

    invoke-virtual {p0, p1, p2}, Lcom/iMe/ui/adapter/provider/TweetProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TweetItem;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 37
    check-cast p2, Lcom/iMe/model/twitter/TweetItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/iMe/ui/adapter/provider/TweetProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/twitter/TweetItem;Ljava/util/List;)V

    return-void
.end method

.method public getItemViewType()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider;->itemViewType:I

    return v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 37
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/iMe/ui/adapter/provider/TweetProvider;->layoutId:I

    return v0
.end method

.method public onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/provider/BaseItemProvider;->onViewAttachedToWindow(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 138
    sget v0, Lorg/telegram/messenger/R$id;->text_post:I

    sget-object v1, Lcom/iMe/ui/adapter/provider/TweetProvider$onViewAttachedToWindow$1;->INSTANCE:Lcom/iMe/ui/adapter/provider/TweetProvider$onViewAttachedToWindow$1;

    invoke-static {p1, v0, v1}, Lcom/iMe/utils/extentions/common/BaseQuickAdapterExtKt;->applyForView(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;ILkotlin/jvm/functions/Function1;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    return-void
.end method

.method public final setOnTweetItemClick(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/iMe/model/twitter/TweetItem;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/TweetProvider;->onTweetItemClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method
