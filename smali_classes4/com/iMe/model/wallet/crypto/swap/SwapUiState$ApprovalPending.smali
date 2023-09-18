.class public final Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;
.super Lcom/iMe/model/wallet/crypto/swap/SwapUiState;
.source "SwapUiState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/model/wallet/crypto/swap/SwapUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApprovalPending"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;

    invoke-direct {v0}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;-><init>()V

    sput-object v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;->INSTANCE:Lcom/iMe/model/wallet/crypto/swap/SwapUiState$ApprovalPending;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/iMe/model/wallet/crypto/swap/SwapUiState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
