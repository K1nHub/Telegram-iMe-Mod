.class public final Lcom/iMe/storage/domain/model/crypto/Chain$Companion;
.super Ljava/lang/Object;
.source "Chain.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/crypto/Chain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChain.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Chain.kt\ncom/iMe/storage/domain/model/crypto/Chain$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,41:1\n288#2,2:42\n*S KotlinDebug\n*F\n+ 1 Chain.kt\ncom/iMe/storage/domain/model/crypto/Chain$Companion\n*L\n38#1:42,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/crypto/Chain$Companion;-><init>()V

    return-void
.end method

.method private final getSupportedChains()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/storage/domain/model/crypto/Chain;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/iMe/storage/domain/model/crypto/Chain;->access$getSupportedChains$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final getChainById(J)Lcom/iMe/storage/domain/model/crypto/Chain;
    .locals 4

    .line 38
    invoke-direct {p0}, Lcom/iMe/storage/domain/model/crypto/Chain$Companion;->getSupportedChains()Ljava/util/List;

    move-result-object v0

    .line 288
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/iMe/storage/domain/model/crypto/Chain;

    .line 38
    invoke-virtual {v2}, Lcom/iMe/storage/domain/model/crypto/Chain;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

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
    check-cast v1, Lcom/iMe/storage/domain/model/crypto/Chain;

    if-nez v1, :cond_3

    .line 39
    new-instance v1, Lcom/iMe/storage/domain/model/crypto/Chain$Unknown;

    invoke-direct {v1, p1, p2}, Lcom/iMe/storage/domain/model/crypto/Chain$Unknown;-><init>(J)V

    :cond_3
    return-object v1
.end method
