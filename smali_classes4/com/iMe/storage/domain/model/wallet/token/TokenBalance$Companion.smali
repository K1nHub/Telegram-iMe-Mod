.class public final Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;
.super Ljava/lang/Object;
.source "TokenBalance.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createEmptyBalanceFor(Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;
    .locals 9

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    .line 16
    sget-object v1, Lcom/iMe/storage/domain/model/wallet/token/FiatValue;->Companion:Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;->createUSDValue$default(Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;DILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v6

    .line 17
    invoke-static {v1, v2, v3, v4, v5}, Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;->createUSDValue$default(Lcom/iMe/storage/domain/model/wallet/token/FiatValue$Companion;DILjava/lang/Object;)Lcom/iMe/storage/domain/model/wallet/token/FiatValue;

    move-result-object v5

    const-wide/16 v7, 0x0

    move-object v1, v0

    move-object v4, v6

    move-wide v6, v7

    move-object v8, p1

    .line 14
    invoke-direct/range {v1 .. v8}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;-><init>(DLcom/iMe/storage/domain/model/wallet/token/FiatValue;Lcom/iMe/storage/domain/model/wallet/token/FiatValue;DLcom/iMe/storage/domain/model/wallet/token/TokenDetailed;)V

    return-object v0
.end method
