.class public final Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;
.super Lcom/iMe/model/wallet/crypto/swap/SwapUiState;
.source "SwapUiState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/swap/SwapUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NeedApprove"
.end annotation


# instance fields
.field private final chooseFeeType:Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/custom/FeeView$ChooseFeeType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    const-string v0, "chooseFeeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;->chooseFeeType:Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

    iput-object p2, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-void
.end method


# virtual methods
.method public final getChooseFeeType()Lcom/iMe/ui/custom/FeeView$ChooseFeeType;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;->chooseFeeType:Lcom/iMe/ui/custom/FeeView$ChooseFeeType;

    return-object v0
.end method

.method public final getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$NeedApprove;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method
