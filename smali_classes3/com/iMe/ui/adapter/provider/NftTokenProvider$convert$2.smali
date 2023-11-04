.class final Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NftTokenProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/NftTokenProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/wallet/home/nft/NftTokenItem;)V
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
.field final synthetic $item:Lcom/iMe/model/wallet/home/nft/NftTokenItem;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/home/nft/NftTokenItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$2;->$item:Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$2;->invoke(Lorg/telegram/ui/Components/BackupImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 5

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 50
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 51
    new-instance v1, Lorg/telegram/ui/Components/LoadingDrawable;

    invoke-direct {v1}, Lorg/telegram/ui/Components/LoadingDrawable;-><init>()V

    .line 53
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarActionModeDefaultSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/4 v3, -0x1

    const v4, 0x3e19999a    # 0.15f

    .line 54
    invoke-static {v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(IF)I

    move-result v3

    .line 52
    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/LoadingDrawable;->setColors(II)V

    .line 56
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/LoadingDrawable;->setAppearByGradient(Z)V

    .line 51
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 58
    iput-boolean v0, p1, Lorg/telegram/ui/Components/BackupImageView;->shouldResetBackGroundOnLoaded:Z

    .line 59
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$2;->$item:Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->getToken()Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/nft/NftToken;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "50_50"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
