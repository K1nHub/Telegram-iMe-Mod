.class public final Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;
.super Lcom/iMe/model/wallet/crypto/swap/SwapUiState;
.source "SwapUiState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/swap/SwapUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Approval"
.end annotation


# instance fields
.field private final feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

.field private final token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V
    .locals 1

    const-string v0, "feeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;->feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    iput-object p2, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-void
.end method


# virtual methods
.method public final getFeeType()Lcom/iMe/model/wallet/crypto/send/fee/FeeType;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;->feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    return-object v0
.end method

.method public final getToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;->token:Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    return-object v0
.end method
