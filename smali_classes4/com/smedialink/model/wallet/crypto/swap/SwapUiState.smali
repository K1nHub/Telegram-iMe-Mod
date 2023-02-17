.class public abstract Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;
.super Ljava/lang/Object;
.source "SwapUiState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Idle;,
        Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$NeedApprove;,
        Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;,
        Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$PrepareSwap;,
        Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Swap;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;-><init>()V

    return-void
.end method
