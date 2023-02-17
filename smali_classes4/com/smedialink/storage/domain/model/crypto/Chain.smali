.class public abstract Lcom/smedialink/storage/domain/model/crypto/Chain;
.super Ljava/lang/Object;
.source "Chain.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/crypto/Chain$Ethereum;,
        Lcom/smedialink/storage/domain/model/crypto/Chain$BSC;,
        Lcom/smedialink/storage/domain/model/crypto/Chain$Polygon;,
        Lcom/smedialink/storage/domain/model/crypto/Chain$Fantom;,
        Lcom/smedialink/storage/domain/model/crypto/Chain$Unknown;,
        Lcom/smedialink/storage/domain/model/crypto/Chain$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/smedialink/storage/domain/model/crypto/Chain$Companion;

.field private static final UNKNOWN_CHAIN_ID:J = -0x1L

.field private static final supportedChains$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/List<",
            "Lcom/smedialink/storage/domain/model/crypto/Chain;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final id:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/storage/domain/model/crypto/Chain$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/crypto/Chain$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/Chain;->Companion:Lcom/smedialink/storage/domain/model/crypto/Chain$Companion;

    .line 29
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/Chain$Companion$supportedChains$2;->INSTANCE:Lcom/smedialink/storage/domain/model/crypto/Chain$Companion$supportedChains$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/crypto/Chain;->supportedChains$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/smedialink/storage/domain/model/crypto/Chain;->id:J

    return-void
.end method

.method public synthetic constructor <init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/smedialink/storage/domain/model/crypto/Chain;-><init>(J)V

    return-void
.end method

.method public static final synthetic access$getSupportedChains$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 3
    sget-object v0, Lcom/smedialink/storage/domain/model/crypto/Chain;->supportedChains$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/smedialink/storage/domain/model/crypto/Chain;->id:J

    return-wide v0
.end method
