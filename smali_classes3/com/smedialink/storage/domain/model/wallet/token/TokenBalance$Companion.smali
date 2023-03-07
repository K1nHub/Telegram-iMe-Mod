.class public final Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;
.super Ljava/lang/Object;
.source "TokenBalance.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createEmptyBalanceFor(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;)Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;
    .locals 9

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getCode()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v2

    new-instance v7, Lcom/smedialink/storage/domain/model/wallet/PriceRate;

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {v7, v3, v4, v1}, Lcom/smedialink/storage/domain/model/wallet/PriceRate;-><init>(DF)V

    sget-object v8, Lcom/smedialink/storage/domain/model/crypto/NetworkType;->ETHEREUM:Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;-><init>(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;DFLcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/wallet/PriceRate;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-object v0
.end method
