.class public final Lcom/iMe/utils/glide/SvgModule;
.super Lcom/bumptech/glide/module/AppGlideModule;
.source "SvgModule.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/bumptech/glide/module/AppGlideModule;-><init>()V

    return-void
.end method


# virtual methods
.method public isManifestParsingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .locals 2

    const-class v0, Lcom/caverock/androidsvg/SVG;

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "glide"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "registry"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    const-class p1, Landroid/graphics/drawable/PictureDrawable;

    .line 17
    new-instance p2, Lcom/iMe/utils/glide/SvgDrawableTranscoder;

    invoke-direct {p2}, Lcom/iMe/utils/glide/SvgDrawableTranscoder;-><init>()V

    invoke-virtual {p3, v0, p1, p2}, Lcom/bumptech/glide/Registry;->register(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;)Lcom/bumptech/glide/Registry;

    move-result-object p1

    const-class p2, Ljava/io/InputStream;

    .line 18
    new-instance p3, Lcom/iMe/utils/glide/SvgDecoder;

    invoke-direct {p3}, Lcom/iMe/utils/glide/SvgDecoder;-><init>()V

    invoke-virtual {p1, p2, v0, p3}, Lcom/bumptech/glide/Registry;->append(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/ResourceDecoder;)Lcom/bumptech/glide/Registry;

    return-void
.end method
