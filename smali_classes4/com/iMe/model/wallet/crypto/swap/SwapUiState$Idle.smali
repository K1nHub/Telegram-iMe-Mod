.class public final Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;
.super Lcom/iMe/model/wallet/crypto/swap/SwapUiState;
.source "SwapUiState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/swap/SwapUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Idle"
.end annotation


# instance fields
.field private final isReset:Z

.field private final keepSide:Lcom/iMe/model/wallet/swap/SwapSide;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2, v1}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLcom/iMe/model/wallet/swap/SwapSide;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iput-boolean p1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;->isReset:Z

    .line 19
    iput-object p2, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;->keepSide:Lcom/iMe/model/wallet/swap/SwapSide;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/iMe/model/wallet/swap/SwapSide;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 17
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;-><init>(ZLcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method


# virtual methods
.method public final getKeepSide()Lcom/iMe/model/wallet/swap/SwapSide;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;->keepSide:Lcom/iMe/model/wallet/swap/SwapSide;

    return-object v0
.end method

.method public final isReset()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;->isReset:Z

    return v0
.end method
