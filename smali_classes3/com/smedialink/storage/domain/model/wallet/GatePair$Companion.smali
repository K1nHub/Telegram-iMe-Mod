.class public final Lcom/smedialink/storage/domain/model/wallet/GatePair$Companion;
.super Ljava/lang/Object;
.source "GatePair.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/model/wallet/GatePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGatePair.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GatePair.kt\ncom/smedialink/storage/domain/model/wallet/GatePair$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,22:1\n11335#2:23\n11670#2,3:24\n37#3,2:27\n*S KotlinDebug\n*F\n+ 1 GatePair.kt\ncom/smedialink/storage/domain/model/wallet/GatePair$Companion\n*L\n19#1:23\n19#1:24,3\n19#1:27,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/storage/domain/model/wallet/GatePair$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTitlesAsArray(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)[Ljava/lang/String;
    .locals 6

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/GatePair;->values()[Lcom/smedialink/storage/domain/model/wallet/GatePair;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 19
    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/GatePair;->getTitle()I

    move-result v5

    invoke-interface {p1, v5}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 11671
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v3, [Ljava/lang/String;

    .line 38
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method
