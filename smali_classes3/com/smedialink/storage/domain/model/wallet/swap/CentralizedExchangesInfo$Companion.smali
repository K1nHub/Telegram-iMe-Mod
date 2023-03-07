.class public final Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion;
.super Ljava/lang/Object;
.source "CentralizedExchangesInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCentralizedExchangesInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CentralizedExchangesInfo.kt\ncom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,52:1\n1#2:53\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSupportedExchanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->access$getSupportedExchanges$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final map(Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchange;)Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;
    .locals 3

    const-string v0, "exchange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion;->getSupportedExchanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->getExchange()Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchange;

    move-result-object v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;

    if-nez v1, :cond_3

    .line 49
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Unknown;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Unknown;

    :cond_3
    return-object v1
.end method

.method public final map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;
    .locals 3

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Companion;->getSupportedExchanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;

    invoke-virtual {v2}, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;->getExchange()Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchange;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo;

    if-nez v1, :cond_2

    .line 46
    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Unknown;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/swap/CentralizedExchangesInfo$Unknown;

    :cond_2
    return-object v1
.end method
