.class public final Lorg/fork/ui/view/KiklikoGifView;
.super Landroid/widget/FrameLayout;
.source "KiklikoGifView.kt"


# instance fields
.field private file:Ljava/io/File;

.field private gif:Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

.field private final gifView$delegate:Lkotlin/Lazy;

.field private final mutedIconView$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance p1, Lorg/fork/ui/view/KiklikoGifView$gifView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/KiklikoGifView$gifView$2;-><init>(Lorg/fork/ui/view/KiklikoGifView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/KiklikoGifView;->gifView$delegate:Lkotlin/Lazy;

    .line 24
    new-instance p1, Lorg/fork/ui/view/KiklikoGifView$mutedIconView$2;

    invoke-direct {p1, p0}, Lorg/fork/ui/view/KiklikoGifView$mutedIconView$2;-><init>(Lorg/fork/ui/view/KiklikoGifView;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lorg/fork/ui/view/KiklikoGifView;->mutedIconView$delegate:Lkotlin/Lazy;

    const-string p1, "chat_emojiSearchBackground"

    .line 29
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 30
    invoke-direct {p0}, Lorg/fork/ui/view/KiklikoGifView;->getGifView()Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    invoke-direct {p0}, Lorg/fork/ui/view/KiklikoGifView;->getMutedIconView()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0xe

    const/16 v1, 0xe

    const/16 v2, 0x33

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static final synthetic access$initGifView(Lorg/fork/ui/view/KiklikoGifView;)Landroid/widget/ImageView;
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/fork/ui/view/KiklikoGifView;->initGifView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initMutedIconView(Lorg/fork/ui/view/KiklikoGifView;)Landroid/widget/ImageView;
    .locals 0

    .line 20
    invoke-direct {p0}, Lorg/fork/ui/view/KiklikoGifView;->initMutedIconView()Landroid/widget/ImageView;

    move-result-object p0

    return-object p0
.end method

.method private final getGifView()Landroid/widget/ImageView;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/fork/ui/view/KiklikoGifView;->gifView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getMutedIconView()Landroid/widget/ImageView;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/fork/ui/view/KiklikoGifView;->mutedIconView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final initGifView()Landroid/widget/ImageView;
    .locals 2

    .line 62
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 63
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-object v0
.end method

.method private final initMutedIconView()Landroid/widget/ImageView;
    .locals 2

    .line 66
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgNoSoundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method


# virtual methods
.method public final getFile()Ljava/io/File;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/fork/ui/view/KiklikoGifView;->file:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, "file"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public final getGif()Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/fork/ui/view/KiklikoGifView;->gif:Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    if-nez v0, :cond_0

    const-string v0, "gif"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 55
    invoke-super {p0, p1, p1}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public final setGif(Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;)V
    .locals 4

    const-string v0, "gif"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lorg/fork/ui/view/KiklikoGifView;->gif:Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;

    .line 42
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x4

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;->getFile()Lcom/smedialink/storage/data/network/model/response/kikliko/GifFileResponse;

    move-result-object v3

    invoke-virtual {v3}, Lcom/smedialink/storage/data/network/model/response/kikliko/GifFileResponse;->getMp4()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/fork/ui/view/KiklikoGifView;->file:Ljava/io/File;

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/kikliko/GifResponse;->getFile()Lcom/smedialink/storage/data/network/model/response/kikliko/GifFileResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smedialink/storage/data/network/model/response/kikliko/GifFileResponse;->getWebp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 45
    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    const-class v0, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawable;

    .line 46
    new-instance v1, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;

    new-instance v2, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v2}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    invoke-direct {v1, v2}, Lcom/bumptech/glide/integration/webp/decoder/WebpDrawableTransformation;-><init>(Lcom/bumptech/glide/load/Transformation;)V

    invoke-virtual {p1, v0, v1}, Lcom/bumptech/glide/request/BaseRequestOptions;->optionalTransform(Ljava/lang/Class;Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 47
    invoke-direct {p0}, Lorg/fork/ui/view/KiklikoGifView;->getGifView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    return-void
.end method
