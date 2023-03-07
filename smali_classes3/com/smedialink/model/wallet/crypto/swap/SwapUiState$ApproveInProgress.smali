.class public final Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;
.super Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;
.source "SwapUiState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApproveInProgress"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;

    invoke-direct {v0}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;-><init>()V

    sput-object v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;->INSTANCE:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$ApproveInProgress;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
