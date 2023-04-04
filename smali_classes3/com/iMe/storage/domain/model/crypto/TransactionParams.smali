.class public abstract Lcom/iMe/storage/domain/model/crypto/TransactionParams;
.super Ljava/lang/Object;
.source "TransactionParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;,
        Lcom/iMe/storage/domain/model/crypto/TransactionParams$Tron;,
        Lcom/iMe/storage/domain/model/crypto/TransactionParams$WhenMappings;
    }
.end annotation


# instance fields
.field private final fastest:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

.field private final low:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

.field private final medium:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;


# direct methods
.method private constructor <init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->fastest:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 9
    iput-object p2, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->medium:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    .line 10
    iput-object p3, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->low:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;-><init>(Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;)V

    return-void
.end method


# virtual methods
.method public getFastest()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->fastest:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public final getFeeByLevel(Lcom/iMe/storage/domain/model/crypto/send/TransactionSpeedLevel;)Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    const-string v0, "speedLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    instance-of v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getFastest()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getLow()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    goto :goto_0

    .line 39
    :cond_3
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object p1

    :cond_4
    :goto_0
    return-object p1
.end method

.method public final getFees()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;",
            ">;"
        }
    .end annotation

    .line 44
    instance-of v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams$Ether;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getLow()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getFastest()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLow()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->low:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method

.method public getMedium()Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/iMe/storage/domain/model/crypto/TransactionParams;->medium:Lcom/iMe/storage/domain/model/crypto/send/GasPriceInfo;

    return-object v0
.end method
