.class final Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$1;
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
        "Lcom/iMe/ui/custom/nft/NftRootView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNftTokenProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NftTokenProvider.kt\ncom/iMe/ui/adapter/provider/NftTokenProvider$convert$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,64:1\n162#2,8:65\n*S KotlinDebug\n*F\n+ 1 NftTokenProvider.kt\ncom/iMe/ui/adapter/provider/NftTokenProvider$convert$1\n*L\n43#1:65,8\n*E\n"
.end annotation


# instance fields
.field final synthetic $item:Lcom/iMe/model/wallet/home/nft/NftTokenItem;

.field final synthetic $leftPadding:I

.field final synthetic $rightPadding:I


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/home/nft/NftTokenItem;II)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    iput p2, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$1;->$leftPadding:I

    iput p3, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$1;->$rightPadding:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 40
    check-cast p1, Lcom/iMe/ui/custom/nft/NftRootView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$1;->invoke(Lcom/iMe/ui/custom/nft/NftRootView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/ui/custom/nft/NftRootView;)V
    .locals 4

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->getToken()Lcom/iMe/storage/domain/model/crypto/nft/NftToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/custom/nft/NftRootView;->setNftToken(Lcom/iMe/storage/domain/model/crypto/nft/NftToken;)V

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$1;->$item:Lcom/iMe/model/wallet/home/nft/NftTokenItem;

    invoke-virtual {v0}, Lcom/iMe/model/wallet/home/nft/NftTokenItem;->getNftType()Lcom/iMe/model/wallet/home/nft/NftType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/iMe/ui/custom/nft/NftRootView;->setNftTokenType(Lcom/iMe/model/wallet/home/nft/NftType;)V

    .line 44
    iget v0, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$1;->$leftPadding:I

    .line 45
    iget v1, p0, Lcom/iMe/ui/adapter/provider/NftTokenProvider$convert$1;->$rightPadding:I

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    .line 168
    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
