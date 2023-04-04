.class public final Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;
.super Lcom/iMe/model/wallet/crypto/swap/SwapUiState;
.source "SwapUiState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/swap/SwapUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrepareSwap"
.end annotation


# instance fields
.field private final token:Lcom/iMe/model/wallet/select/SelectableToken;


# direct methods
.method public constructor <init>(Lcom/iMe/model/wallet/select/SelectableToken;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;->token:Lcom/iMe/model/wallet/select/SelectableToken;

    return-void
.end method


# virtual methods
.method public final getToken()Lcom/iMe/model/wallet/select/SelectableToken;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$PrepareSwap;->token:Lcom/iMe/model/wallet/select/SelectableToken;

    return-object v0
.end method
