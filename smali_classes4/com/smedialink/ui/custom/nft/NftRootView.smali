.class public final Lcom/smedialink/ui/custom/nft/NftRootView;
.super Landroid/widget/FrameLayout;
.source "NftRootView.kt"


# instance fields
.field private nftToken:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/smedialink/ui/custom/nft/NftRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 8
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/smedialink/ui/custom/nft/NftRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getNftToken()Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/smedialink/ui/custom/nft/NftRootView;->nftToken:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    return-object v0
.end method

.method public final setNftToken(Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/smedialink/ui/custom/nft/NftRootView;->nftToken:Lcom/smedialink/storage/domain/model/crypto/nft/avatar/NftToken;

    return-void
.end method
