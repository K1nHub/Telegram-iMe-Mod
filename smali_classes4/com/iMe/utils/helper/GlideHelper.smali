.class public final Lcom/iMe/utils/helper/GlideHelper;
.super Ljava/lang/Object;
.source "GlideHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/iMe/utils/helper/GlideHelper;


# direct methods
.method public static synthetic $r8$lambda$h0427KXBBH1p_2Ze7g8cAJgeuSQ()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/iMe/utils/helper/GlideHelper;->loadBinanceImageAsBitmap$lambda$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/utils/helper/GlideHelper;

    invoke-direct {v0}, Lcom/iMe/utils/helper/GlideHelper;-><init>()V

    sput-object v0, Lcom/iMe/utils/helper/GlideHelper;->INSTANCE:Lcom/iMe/utils/helper/GlideHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final internalLoad(Landroid/content/Context;Lcom/bumptech/glide/load/model/GlideUrl;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .line 42
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 46
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    .line 47
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    if-eqz p4, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 51
    :cond_0
    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 52
    new-instance p2, Lcom/iMe/utils/helper/GlideHelper$internalLoad$2;

    invoke-direct {p2, p3}, Lcom/iMe/utils/helper/GlideHelper$internalLoad$2;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method private final internalLoadDrawable(Landroid/content/Context;Lcom/bumptech/glide/load/model/GlideUrl;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)V"
        }
    .end annotation

    .line 63
    invoke-static {p1}, Lcom/iMe/utils/glide/GlideApp;->with(Landroid/content/Context;)Lcom/iMe/utils/glide/GlideRequests;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/iMe/utils/glide/GlideRequests;->asDrawable()Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p2}, Lcom/iMe/utils/glide/GlideRequest;->load(Ljava/lang/Object;)Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p1

    .line 66
    new-instance p2, Lcom/iMe/utils/glide/SvgSoftwareLayerSetter;

    invoke-direct {p2}, Lcom/iMe/utils/glide/SvgSoftwareLayerSetter;-><init>()V

    invoke-virtual {p1, p2}, Lcom/iMe/utils/glide/GlideRequest;->addListener(Lcom/bumptech/glide/request/RequestListener;)Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/iMe/utils/glide/GlideRequest;->dontAnimate()Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/iMe/utils/glide/GlideRequest;->centerCrop()Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/iMe/utils/glide/GlideRequest;->circleCrop()Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p1

    .line 73
    :cond_0
    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->DATA:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, p2}, Lcom/iMe/utils/glide/GlideRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/iMe/utils/glide/GlideRequest;

    move-result-object p1

    .line 74
    new-instance p2, Lcom/iMe/utils/helper/GlideHelper$internalLoadDrawable$2;

    invoke-direct {p2, p3}, Lcom/iMe/utils/helper/GlideHelper$internalLoadDrawable$2;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static final loadBinanceImageAsBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    sget-object v1, Lcom/iMe/utils/helper/GlideHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/iMe/utils/helper/GlideHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    .line 24
    sget-object p1, Lcom/iMe/utils/helper/GlideHelper;->INSTANCE:Lcom/iMe/utils/helper/GlideHelper;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, p2, v1}, Lcom/iMe/utils/helper/GlideHelper;->internalLoad(Landroid/content/Context;Lcom/bumptech/glide/load/model/GlideUrl;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V

    return-void
.end method

.method private static final loadBinanceImageAsBitmap$lambda$0()Ljava/util/Map;
    .locals 1

    .line 22
    sget-object v0, Lcom/iMe/utils/helper/binancepay/BinancePayHelper;->INSTANCE:Lcom/iMe/utils/helper/binancepay/BinancePayHelper;

    invoke-virtual {v0}, Lcom/iMe/utils/helper/binancepay/BinancePayHelper;->getRefererHeader()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static final loadImageAsBitmap(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v0, Lcom/iMe/utils/helper/GlideHelper;->INSTANCE:Lcom/iMe/utils/helper/GlideHelper;

    new-instance v1, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/iMe/utils/helper/GlideHelper;->internalLoad(Landroid/content/Context;Lcom/bumptech/glide/load/model/GlideUrl;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V

    return-void
.end method

.method public static final loadImageAsDrawable(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/iMe/fork/utils/Callbacks$Callback1<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/iMe/utils/helper/GlideHelper;->INSTANCE:Lcom/iMe/utils/helper/GlideHelper;

    new-instance v1, Lcom/bumptech/glide/load/model/GlideUrl;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/iMe/utils/helper/GlideHelper;->internalLoadDrawable(Landroid/content/Context;Lcom/bumptech/glide/load/model/GlideUrl;Lcom/iMe/fork/utils/Callbacks$Callback1;Z)V

    return-void
.end method
