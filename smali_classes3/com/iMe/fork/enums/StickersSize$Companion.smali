.class public final Lcom/iMe/fork/enums/StickersSize$Companion;
.super Ljava/lang/Object;
.source "StickersSize.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/enums/StickersSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStickersSize.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StickersSize.kt\ncom/iMe/fork/enums/StickersSize$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,23:1\n1#2:24\n11335#3:25\n11670#3,3:26\n37#4,2:29\n*S KotlinDebug\n*F\n+ 1 StickersSize.kt\ncom/iMe/fork/enums/StickersSize$Companion\n*L\n21#1:25\n21#1:26,3\n21#1:29,2\n*E\n"
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

    invoke-direct {p0}, Lcom/iMe/fork/enums/StickersSize$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTitles()[Ljava/lang/String;
    .locals 6

    .line 21
    invoke-static {}, Lcom/iMe/fork/enums/StickersSize;->values()[Lcom/iMe/fork/enums/StickersSize;

    move-result-object v0

    .line 11335
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11670
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 21
    invoke-virtual {v5}, Lcom/iMe/fork/enums/StickersSize;->getTitleResId()I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v5

    .line 11671
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    .line 38
    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/StickersSize;
    .locals 5

    .line 17
    invoke-static {}, Lcom/iMe/fork/enums/StickersSize;->values()[Lcom/iMe/fork/enums/StickersSize;

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

    sget-object v3, Lcom/iMe/fork/enums/StickersSize;->MEDIUM:Lcom/iMe/fork/enums/StickersSize;

    :cond_2
    return-object v3
.end method
