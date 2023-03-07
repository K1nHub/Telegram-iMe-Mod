.class public final Lcom/smedialink/utils/helper/GlideHelper;
.super Ljava/lang/Object;
.source "GlideHelper.kt"


# static fields
.field public static final INSTANCE:Lcom/smedialink/utils/helper/GlideHelper;


# direct methods
.method public static synthetic $r8$lambda$fL6f6nfxOC_EsV7lR1wj6FJBuzg()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/smedialink/utils/helper/GlideHelper;->loadBinanceImageAsBitmap$lambda-0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/utils/helper/GlideHelper;

    invoke-direct {v0}, Lcom/smedialink/utils/helper/GlideHelper;-><init>()V

    sput-object v0, Lcom/smedialink/utils/helper/GlideHelper;->INSTANCE:Lcom/smedialink/utils/helper/GlideHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final internalLoad(Landroid/content/Context;Lcom/bumptech/glide/load/model/GlideUrl;Lorg/fork/utils/Callbacks$Callback1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/model/GlideUrl;",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .line 35
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 37
    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 39
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    .line 40
    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    if-eqz p4, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->circleCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 43
    :cond_0
    sget-object p2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    .line 44
    new-instance p2, Lcom/smedialink/utils/helper/GlideHelper$internalLoad$2;

    invoke-direct {p2, p3}, Lcom/smedialink/utils/helper/GlideHelper$internalLoad$2;-><init>(Lorg/fork/utils/Callbacks$Callback1;)V

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public static final loadBinanceImageAsBitmap(Landroid/content/Context;Ljava/lang/String;Lorg/fork/utils/Callbacks$Callback1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lorg/fork/utils/Callbacks$Callback1<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/bumptech/glide/load/model/GlideUrl;

    sget-object v1, Lcom/smedialink/utils/helper/GlideHelper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/smedialink/utils/helper/GlideHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, v1}, Lcom/bumptech/glide/load/model/GlideUrl;-><init>(Ljava/lang/String;Lcom/bumptech/glide/load/model/Headers;)V

    .line 22
    sget-object p1, Lcom/smedialink/utils/helper/GlideHelper;->INSTANCE:Lcom/smedialink/utils/helper/GlideHelper;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, p2, v1}, Lcom/smedialink/utils/helper/GlideHelper;->internalLoad(Landroid/content/Context;Lcom/bumptech/glide/load/model/GlideUrl;Lorg/fork/utils/Callbacks$Callback1;Z)V

    return-void
.end method

.method private static final loadBinanceImageAsBitmap$lambda-0()Ljava/util/Map;
    .locals 1

    .line 20
    sget-object v0, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->INSTANCE:Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;

    invoke-virtual {v0}, Lcom/smedialink/utils/helper/binancepay/BinancePayHelper;->getRefererHeader()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method
