.class public final Lcom/iMe/utils/extentions/common/ViewExtKt;
.super Ljava/lang/Object;
.source "ViewExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewExt.kt\ncom/iMe/utils/extentions/common/ViewExtKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,401:1\n1855#2,2:402\n262#3,2:404\n341#3:408\n350#3:409\n359#3:410\n368#3:411\n13579#4,2:406\n*S KotlinDebug\n*F\n+ 1 ViewExt.kt\ncom/iMe/utils/extentions/common/ViewExtKt\n*L\n85#1:402,2\n108#1:404,2\n392#1:408\n393#1:409\n394#1:410\n395#1:411\n386#1:406,2\n*E\n"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$ALHGZVhJZ9727xSOY7duE_OeABA(ILcom/iMe/fork/utils/Callbacks$Callback;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->onAction$lambda$5(ILcom/iMe/fork/utils/Callbacks$Callback;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JcyRg-Umj4GOIz7PfIgfV8ljlhc(Lkotlin/jvm/internal/Ref$LongRef;JLkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$lambda$3(Lkotlin/jvm/internal/Ref$LongRef;JLkotlin/jvm/functions/Function1;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tsSxDemaXrep121qvnzLyNZ7lUI(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->loadImage$lambda$0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uQ0gPNc1kiAAMGiKzVnPG9HhSNs(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMixedClickListener$lambda$4(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static final applyDefaultProperties(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 315
    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const/4 v0, 0x0

    .line 316
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    const/high16 v1, 0x41c00000    # 24.0f

    .line 317
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 318
    invoke-virtual {p0, v1, v0, v1, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public static final clearText(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 289
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final disable(Landroid/view/View;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 264
    invoke-static {p0, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method public static final getDpToPx(F)I
    .locals 0

    .line 46
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p0

    return p0
.end method

.method public static final getDpToPx(I)I
    .locals 0

    int-to-float p0, p0

    .line 43
    invoke-static {p0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(F)I

    move-result p0

    return p0
.end method

.method public static final gone(Landroid/view/View;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 112
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic gone$default(Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 111
    :cond_0
    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone(Landroid/view/View;Z)V

    return-void
.end method

.method public static final inflate(Landroid/view/ViewGroup;IZ)Landroid/view/View;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string p1, "from(context).inflate(la\u2026tRes, this, attachToRoot)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic inflate$default(Landroid/view/ViewGroup;IZILjava/lang/Object;)Landroid/view/View;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 48
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->inflate(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static final invisible(Landroid/view/View;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 116
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic invisible$default(Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 115
    :cond_0
    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->invisible(Landroid/view/View;Z)V

    return-void
.end method

.method public static final limitInputLength(Landroid/widget/EditText;II)V
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/iMe/utils/common/DigitsInputFilter;

    .line 339
    new-instance v8, Lcom/iMe/utils/common/DigitsInputFilter;

    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, v8

    move v2, p2

    move v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/iMe/utils/common/DigitsInputFilter;-><init>(IIDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x0

    aput-object v8, v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public static synthetic limitInputLength$default(Landroid/widget/EditText;IIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0xf

    .line 335
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->limitInputLength(Landroid/widget/EditText;II)V

    return-void
.end method

.method public static final loadImage(Landroid/widget/ImageView;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->getAvatarUrl()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/iMe/utils/helper/binancepay/BinancePayHelper;->INSTANCE:Lcom/iMe/utils/helper/binancepay/BinancePayHelper;

    invoke-virtual {v0}, Lcom/iMe/utils/helper/binancepay/BinancePayHelper;->getRefererHeader()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static final loadImage(Landroid/widget/ImageView;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    new-instance v1, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    .line 72
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 73
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 75
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 76
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 77
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 78
    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 79
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method private static final loadImage$lambda$0(Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    const-string v0, "$headers"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final nextPage(Landroidx/viewpager/widget/ViewPager;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 284
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_1
    return-void
.end method

.method public static final onAction(Landroid/widget/EditText;ILcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "runAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance v0, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda2;-><init>(ILcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private static final onAction$lambda$5(ILcom/iMe/fork/utils/Callbacks$Callback;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const-string p2, "$runAction"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p3, p0, :cond_0

    .line 249
    invoke-interface {p1}, Lcom/iMe/fork/utils/Callbacks$Callback;->invoke()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final removeSelfFromParent(Landroid/view/View;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 355
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 357
    invoke-static {p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public static final safeThrottledClick(Landroid/view/View;JLkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v0, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 151
    new-instance v1, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1, p2, p3}, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/internal/Ref$LongRef;JLkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    const-wide/16 p1, 0x1f4

    .line 149
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick(Landroid/view/View;JLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final safeThrottledClick$lambda$3(Lkotlin/jvm/internal/Ref$LongRef;JLkotlin/jvm/functions/Function1;Landroid/view/View;)V
    .locals 4

    const-string v0, "$lastClickTime"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    add-long/2addr v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const-string/jumbo p1, "view"

    .line 153
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    :cond_0
    return-void
.end method

.method public static final scale(Landroid/view/ViewPropertyAnimator;F)Landroid/view/ViewPropertyAnimator;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-string/jumbo p1, "scaleX(value).scaleY(value)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final setAllowDecimals(Landroid/widget/EditText;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/16 p1, 0x2002

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 343
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public static final setAutoSizedCircleRippleBackground(Landroid/view/View;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSelector:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/4 v1, 0x5

    .line 139
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final setBoundedCircleRippleBackground(Landroid/view/View;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSelector:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/4 v1, 0x3

    .line 132
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final setCircleRippleBackground(Landroid/view/View;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_player_actionBarSelector:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/4 v1, 0x1

    .line 125
    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/Theme;->createSelectorDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final setCompoundDrawablesColor(Landroid/widget/TextView;I)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v0, "compoundDrawables"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 1855
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 86
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final setEnabledWithAlpha(Landroid/view/View;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 259
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 260
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public static final setHorizontalPadding(Landroid/view/View;Ljava/lang/Number;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "horizontalPadding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    .line 61
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    .line 59
    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static final setMargins(Landroid/view/View;IIII)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 398
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 397
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic setMargins$default(Landroid/view/View;IIIIILjava/lang/Object;)V
    .locals 2

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p6, :cond_2

    .line 341
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p6, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p6, :cond_0

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_1
    move p1, v0

    :cond_2
    :goto_1
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of p6, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p6, :cond_3

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_2

    :cond_3
    move-object p2, v1

    :goto_2
    if-eqz p2, :cond_4

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_3

    :cond_4
    move p2, v0

    :cond_5
    :goto_3
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_8

    .line 359
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of p6, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p6, :cond_6

    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_4

    :cond_6
    move-object p3, v1

    :goto_4
    if-eqz p3, :cond_7

    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_5

    :cond_7
    move p3, v0

    :cond_8
    :goto_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_b

    .line 368
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p5, p4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p5, :cond_9

    move-object v1, p4

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_9
    if-eqz v1, :cond_a

    iget p4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_6

    :cond_a
    move p4, v0

    .line 391
    :cond_b
    :goto_6
    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public static final setMixedClickListener(Landroid/view/View;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    new-instance v4, Lcom/iMe/utils/extentions/common/ViewExtKt$setMixedClickListener$1;

    invoke-direct {v4, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt$setMixedClickListener$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 168
    new-instance p1, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 169
    new-instance v0, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/iMe/utils/extentions/common/ViewExtKt$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private static final setMixedClickListener$lambda$4(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/View;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p2, "$isPressedDown"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_setMixedClickListener"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iget-boolean p2, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p2, :cond_1

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 176
    :cond_1
    iput-boolean p3, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_0

    .line 171
    :cond_2
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :goto_0
    return p3
.end method

.method public static final setRippleBackground(Landroid/view/View;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 120
    :cond_0
    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground(Landroid/view/View;Z)V

    return-void
.end method

.method public static final setRippleForeground(Landroid/view/View;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic setRippleForeground$default(Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 145
    :cond_0
    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleForeground(Landroid/view/View;Z)V

    return-void
.end method

.method public static final setScale(Landroid/view/View;F)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 375
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method public static final setSelectionEnd(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public static final setSubstringClickListener(Landroid/widget/TextView;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string/jumbo v0, "text"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 196
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    .line 198
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    .line 199
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 200
    new-instance v2, Lcom/iMe/utils/extentions/common/ViewExtKt$setSubstringClickListener$clickSpan$1;

    invoke-direct {v2, p3}, Lcom/iMe/utils/extentions/common/ViewExtKt$setSubstringClickListener$clickSpan$1;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    const/16 p3, 0x21

    .line 212
    invoke-virtual {v1, v2, v0, p1, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    if-eqz p2, :cond_0

    .line 215
    new-instance p2, Lorg/telegram/ui/Components/TypefaceSpan;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p2, v2}, Lorg/telegram/ui/Components/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    .line 214
    invoke-virtual {v1, p2, v0, p1, p3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    const/4 p1, 0x1

    .line 221
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 222
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 223
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 224
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static synthetic setSubstringClickListener$default(Landroid/widget/TextView;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 187
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setSubstringClickListener(Landroid/widget/TextView;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public static final varargs setTextsColor(I[Landroid/widget/TextView;)V
    .locals 3

    const-string/jumbo v0, "textViews"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13579
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 387
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final varargs setTextsColorKey(I[Landroid/widget/TextView;)V
    .locals 1

    const-string/jumbo v0, "textViews"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/widget/TextView;

    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    return-void
.end method

.method public static final setVerticalPadding(Landroid/view/View;Ljava/lang/Number;)V
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "verticalPadding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    .line 52
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public static final shake(Landroid/view/View;Z)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->shakeView(Landroid/view/View;)V

    if-eqz p1, :cond_1

    .line 296
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo p1, "vibrator"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/os/Vibrator;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/os/Vibrator;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method

.method public static synthetic shake$default(Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 293
    :cond_0
    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->shake(Landroid/view/View;Z)V

    return-void
.end method

.method public static final showKeyboard(Landroid/view/View;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 232
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->showKeyboard(Landroid/view/View;)Z

    return-void
.end method

.method public static final singleLine(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 330
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 331
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 332
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    return-void
.end method

.method public static final tintIndeterminateProgress(Landroid/widget/ProgressBar;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static final visible(Landroid/view/View;Z)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 262
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static synthetic visible$default(Landroid/view/View;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 107
    :cond_0
    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;Z)V

    return-void
.end method

.method public static final withAlpha(IF)I
    .locals 1

    const/16 v0, 0xff

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 308
    invoke-static {p0, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(II)I

    move-result p0

    return p0
.end method

.method public static final withAlpha(II)I
    .locals 0

    .line 312
    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method public static final withMediumTypeface(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fonts/rmedium.ttf"

    .line 322
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public static final withMonoTypeface(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fonts/rmono.ttf"

    .line 326
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
