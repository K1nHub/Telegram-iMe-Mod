.class final Lcom/smedialink/storage/domain/model/crypto/Chain$Companion$supportedChains$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Chain.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/storage/domain/model/crypto/Chain;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/smedialink/storage/domain/model/crypto/Chain;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/storage/domain/model/crypto/Chain$Companion$supportedChains$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/Chain$Companion$supportedChains$2;

    invoke-direct {v0}, Lcom/smedialink/storage/domain/model/crypto/Chain$Companion$supportedChains$2;-><init>()V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/Chain$Companion$supportedChains$2;->INSTANCE:Lcom/smedialink/storage/domain/model/crypto/Chain$Companion$supportedChains$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/crypto/Chain$Companion$supportedChains$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/Chain;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/crypto/Chain;

    .line 31
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/Chain$Ethereum$Main;->INSTANCE:Lcom/smedialink/storage/domain/model/crypto/Chain$Ethereum$Main;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/Chain$Ethereum$Ropsten;->INSTANCE:Lcom/smedialink/storage/domain/model/crypto/Chain$Ethereum$Ropsten;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 32
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/Chain$BSC$Main;->INSTANCE:Lcom/smedialink/storage/domain/model/crypto/Chain$BSC$Main;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/Chain$BSC$Testnet;->INSTANCE:Lcom/smedialink/storage/domain/model/crypto/Chain$BSC$Testnet;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 33
    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/Chain$Polygon$Main;->INSTANCE:Lcom/smedialink/storage/domain/model/crypto/Chain$Polygon$Main;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lcom/smedialink/storage/domain/model/crypto/Chain$Polygon$Testnet;->INSTANCE:Lcom/smedialink/storage/domain/model/crypto/Chain$Polygon$Testnet;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 34
    new-instance v1, Lcom/smedialink/storage/domain/model/crypto/Chain$Unknown;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v2, v5}, Lcom/smedialink/storage/domain/model/crypto/Chain$Unknown;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 30
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
