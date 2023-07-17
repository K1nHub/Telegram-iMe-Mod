.class public final Lcom/iMe/utils/extentions/common/ImageViewExtKt;
.super Ljava/lang/Object;
.source "ImageViewExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageViewExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageViewExt.kt\ncom/iMe/utils/extentions/common/ImageViewExtKt\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,111:1\n68#2,4:112\n40#2:116\n56#2:117\n75#2:118\n*S KotlinDebug\n*F\n+ 1 ImageViewExt.kt\ncom/iMe/utils/extentions/common/ImageViewExtKt\n*L\n77#1:112,4\n77#1:116\n77#1:117\n77#1:118\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$loadFrom(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public static final loadFrom(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final loadFrom(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1

    .line 89
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 90
    invoke-static {p2}, Lcom/iMe/utils/glide/GlideApp;->with(Landroid/content/Context;)Lcom/iMe/utils/glide/GlideRequests;

    move-result-object p2

    .line 91
    invoke-virtual {p2}, Lcom/iMe/utils/glide/GlideRequests;->asDrawable()Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p2

    .line 92
    invoke-virtual {p2, p1}, Lcom/iMe/utils/glide/GlideRequest;->load(Ljava/lang/String;)Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p1

    .line 93
    new-instance p2, Lcom/iMe/utils/glide/SvgSoftwareLayerSetter;

    invoke-direct {p2}, Lcom/iMe/utils/glide/SvgSoftwareLayerSetter;-><init>()V

    invoke-virtual {p1, p2}, Lcom/iMe/utils/glide/GlideRequest;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p1

    if-eqz p3, :cond_1

    .line 96
    invoke-virtual {p1, p3}, Lcom/iMe/utils/glide/GlideRequest;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/iMe/utils/glide/GlideRequest;->error(Landroid/graphics/drawable/Drawable;)Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p1

    :cond_1
    if-eqz p4, :cond_2

    .line 103
    invoke-virtual {p1}, Lcom/iMe/utils/glide/GlideRequest;->circleCrop()Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p1

    goto :goto_1

    .line 105
    :cond_2
    invoke-virtual {p1}, Lcom/iMe/utils/glide/GlideRequest;->fitCenter()Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p1

    .line 108
    :goto_1
    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, p2}, Lcom/iMe/utils/glide/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p1

    .line 109
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    :cond_3
    return-void
.end method

.method public static final loadFrom(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p1, v1, p2, p3}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 68
    :cond_0
    new-instance p2, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {p2}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    .line 70
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    const/4 v2, -0x1

    const v3, 0x3e19999a    # 0.15f

    .line 71
    invoke-static {v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(IF)I

    move-result v2

    .line 69
    invoke-virtual {p2, v1, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(II)V

    const/4 v1, 0x1

    .line 73
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    .line 76
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    .line 79
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, p2, p3}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->access$loadFrom(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lcom/iMe/utils/extentions/common/ImageViewExtKt$loadFrom$$inlined$doOnLayout$1;

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/iMe/utils/extentions/common/ImageViewExtKt$loadFrom$$inlined$doOnLayout$1;-><init>(Lorg/telegram/ui/Components/LoadingDrawable;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    .line 83
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v1, p2, p3}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    :goto_0
    return-void
.end method

.method public static synthetic loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 64
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;Z)V

    return-void
.end method

.method public static final setTint(Landroid/widget/ImageView;I)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/widget/ImageViewCompat;->setImageTintList(Landroid/widget/ImageView;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static final withGlide(Landroid/widget/ImageView;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Image:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/widget/ImageView;",
            "TImage;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 33
    new-instance v0, Lcom/iMe/utils/extentions/common/ImageViewExtKt$withGlide$1;

    invoke-direct {v0, p2, p3}, Lcom/iMe/utils/extentions/common/ImageViewExtKt$withGlide$1;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 56
    invoke-virtual {p1, p0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method

.method public static synthetic withGlide$default(Landroid/widget/ImageView;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 26
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->withGlide(Landroid/widget/ImageView;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
