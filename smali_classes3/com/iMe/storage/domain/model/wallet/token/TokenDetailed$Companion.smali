.class public final Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;
.super Ljava/lang/Object;
.source "TokenDetailed.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getBNB$annotations()V
    .locals 0

    return-void
.end method

.method private final getLIMEAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 66
    sget-object v0, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->INSTANCE:Lcom/iMe/storage/data/manager/common/EnvironmentManager;

    invoke-virtual {v0}, Lcom/iMe/storage/data/manager/common/EnvironmentManager;->getEnvironment()Lcom/iMe/storage/domain/model/common/Environment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/common/Environment;->isStageEnvironment()Z

    move-result v0

    const-string v1, "BINANCE_SMART_CHAIN"

    const-string v2, "POLYGON"

    const-string v3, "ETHEREUM"

    const-string v4, ""

    const v5, 0x3cac2882

    const v6, 0x1319e11a

    const v7, -0x25f3e009

    if-eqz v0, :cond_5

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eq v0, v7, :cond_3

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string v4, "0xbfAaF004504bcc139B354cf8F12f5b830CdD0DE6"

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v4, "0xf7909CBC21E95000E3d0e14004aADdea2bb1796d"

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const-string v4, "0x98B3C321F619d8D87c54a46b7ce9495E43d6F7Ef"

    goto :goto_0

    .line 74
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-eq v0, v7, :cond_9

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string v4, "0x7bC75e291E656E8658D66Be1cc8154A3769A35Dd"

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const-string v4, "0x7f67639ffc8c93dd558d452b8920b28815638c44"

    goto :goto_0

    :cond_9
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const-string v4, "0x9D0B65a76274645B29e4cc41B8f23081fA09f4A3"

    :cond_b
    :goto_0
    return-object v4
.end method

.method private final getLIMELogoUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 83
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x25f3e009

    if-eq v0, v1, :cond_3

    const v1, 0x1319e11a

    if-eq v0, v1, :cond_1

    const v1, 0x3cac2882

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BINANCE_SMART_CHAIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "https://storage.googleapis.com/blockchain-networks/static/lime_bsc.png"

    goto :goto_1

    :cond_1
    const-string v0, "POLYGON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "https://storage.googleapis.com/blockchain-networks/static/lime_polygon.png"

    goto :goto_1

    :cond_3
    const-string v0, "ETHEREUM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    :goto_0
    const-string p1, ""

    goto :goto_1

    :cond_5
    const-string p1, "https://storage.googleapis.com/blockchain-networks/static/lime_ethereum.png"

    :goto_1
    return-object p1
.end method

.method public static synthetic getUSD$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getBNB()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 30
    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->access$getBNB$cp()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    return-object v0
.end method

.method public final getLIME(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 10

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance v0, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    .line 43
    invoke-direct {p0, p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getLIMEAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-direct {p0, p1}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed$Companion;->getLIMELogoUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    const-string v6, "LIME"

    const/4 v7, 0x0

    const-string v8, "iMe Lab"

    const-string v9, "https://imem.app/"

    move-object v1, v0

    move-object v3, p1

    .line 42
    invoke-direct/range {v1 .. v9}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUSD()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 1

    .line 54
    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;->access$getUSD$cp()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    return-object v0
.end method
