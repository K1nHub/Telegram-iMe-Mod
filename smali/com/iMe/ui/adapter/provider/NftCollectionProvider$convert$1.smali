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
.method constructor <init>(Lcom/iMe/ui/adapter/provider/NftCollectionProvider;Lcom/iMe/model/wallet/home/nft/NftCollectionItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/NftCollectionProvider;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 54
    check-cast p1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;->invoke(Lorg/telegram/ui/Components/BackupImageView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/telegram/ui/Components/BackupImageView;)V
    .locals 2

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 56
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setLayerNum(I)V

    .line 58
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;->this$0:Lcom/iMe/ui/adapter/provider/NftCollectionProvider;

    invoke-static {v0}, Lcom/iMe/ui/adapter/provider/NftCollectionProvider;->access$getResourceManager$p(Lcom/iMe/ui/adapter/provider/NftCollectionProvider;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$dimen;->telegram_avatar_size_medium:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getDimens(I)F

    move-result v0

    float-to-int v0, v0

    .line 57
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/BackupImageView;->setRoundRadius(I)V

    .line 61
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/NftCollectionProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/nft/NftCollectionItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/nft/NftCollectionItem;->getTokens()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->getToken()Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/nft/avatar/NftToken;->getImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    const-string v1, "50_50"

    .line 62
    invoke-virtual {p1, v0, v1, v0, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
