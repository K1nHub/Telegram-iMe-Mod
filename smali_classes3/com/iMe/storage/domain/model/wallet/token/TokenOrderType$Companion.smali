.class public final Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;
.super Ljava/lang/Object;
.source "TokenOrderType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenOrderType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenOrderType.kt\ncom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,19:1\n1#2:20\n11335#3:21\n11670#3,3:22\n*S KotlinDebug\n*F\n+ 1 TokenOrderType.kt\ncom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion\n*L\n17#1:21\n17#1:22,3\n*E\n"
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

    invoke-direct {p0}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTitles(Lcom/iMe/storage/domain/utils/system/ResourceManager;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "resourceManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->values()[Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 17
    invoke-virtual {v4}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->getTitle()I

    move-result v4

    invoke-interface {p1, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 11671
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final map(Ljava/lang/String;)Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;
    .locals 5

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {}, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->values()[Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_2

    sget-object v3, Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;->DEFAULT:Lcom/iMe/storage/domain/model/wallet/token/TokenOrderType;

    :cond_2
    return-object v3
.end method
