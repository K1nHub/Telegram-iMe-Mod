.class final Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NftCollectionProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/nft/NftCollectionItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/telegram/ui/Components/BackupImageView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/NftCollectionProvider;


# direct methods
.method public static synthetic $r8$lambda$CVxEBYBJajNGRg5JxMQXlkSuOsk(Lorg/telegram/ui/Components/BackupImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;->invoke$lambda$2(Lorg/telegram/ui/Components/BackupImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method constructor <init>(Lcom/iMe/ui/adapter/provider/NftCollectionProvider;Lcom/iMe/model/wallet/home/nft/NftCollectionItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/NftCollectionProvider;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$2(Lorg/telegram/ui/Components/BackupImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const-string v0, "$this_applyForView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawable"

    .line 82
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;IILandroid/graphics/Bitmap$Config;ILjava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 61
    check-cast p1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;->invoke(Lorg/telegram/ui/Components/BackupImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 11

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 63
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 64
    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/NftCollectionProvider;

    invoke-static {v1}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->access$getImageCornerRadius(Lcom/iMe/ui/adapter/provider/NftCollectionProvider;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 65
    new-instance v1, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    iget-object v2, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/NftCollectionProvider;

    .line 67
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v3

    const/4 v4, -0x1

    const v5, 0x3e19999a    # 0.15f

    .line 68
    invoke-static {v4, v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(IF)I

    move-result v4

    .line 66
    invoke-virtual {v1, v3, v4}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(II)V

    .line 70
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    .line 71
    invoke-static {v2}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->access$getImageCornerRadius(Lcom/iMe/ui/adapter/provider/NftCollectionProvider;)F

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LoadingDrawable;->setRadiiDp(F)V

    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iput-boolean v0, p1, Lorg/telegram/ui/Components/BackupImageView;->shouldResetBackGroundOnLoaded:Z

    .line 75
    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->getCollection()Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iMe/storage/domain/model/crypto/nft/NftCollection;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 76
    invoke-virtual {v2}, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->getTokens()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->getToken()Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    :goto_1
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    move-object v1, v0

    :cond_3
    move-object v6, v1

    const/4 v0, 0x2

    const-string v1, "svg"

    .line 78
    invoke-static {v6, v1, v4, v0, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v0, "context"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v7, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1$$ExternalSyntheticLambda0;

    invoke-direct {v7, p1}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/BackupImageView;)V

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/iMe/utils/helper/GlideHelper;->loadImageAsDrawable$default(Landroid/content/Context;Ljava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;ZILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const-string v0, "50_50"

    .line 85
    invoke-virtual {p1, v6, v0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method
