.class public abstract Lcom/iMe/model/wallet/crypto/swap/SwapUiState;
.super Ljava/lang/Object;
.source "SwapUiState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;,
        Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;,
        Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;,
        Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Loading;,
        Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Swap;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState;-><init>()V

    return-void
.end method


# virtual methods
.method public final isApproving()Z
    .locals 1

    .line 33
    instance-of v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Approval;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
