.class public final Lorg/fork/enums/ServiceMessageType$Companion;
.super Ljava/lang/Object;
.source "ServiceMessageType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/enums/ServiceMessageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nServiceMessageType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ServiceMessageType.kt\norg/fork/enums/ServiceMessageType$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,46:1\n3792#2:47\n4307#2,2:48\n37#3,2:50\n*S KotlinDebug\n*F\n+ 1 ServiceMessageType.kt\norg/fork/enums/ServiceMessageType$Companion\n*L\n42#1:47\n42#1:48,2\n44#1:50,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/fork/enums/ServiceMessageType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getByCode(IZ)Lorg/fork/enums/ServiceMessageType;
    .locals 6

    .line 36
    invoke-static {}, Lorg/fork/enums/ServiceMessageType;->values()[Lorg/fork/enums/ServiceMessageType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    if-eqz p2, :cond_1

    .line 37
    invoke-virtual {v4}, Lorg/fork/enums/ServiceMessageType;->getChannelCode()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, p1, :cond_3

    :cond_1
    :goto_1
    if-nez p2, :cond_4

    invoke-virtual {v4}, Lorg/fork/enums/ServiceMessageType;->getGroupCode()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_4

    :cond_3
    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    :goto_2
    move v5, v2

    :goto_3
    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_7

    .line 38
    sget-object v4, Lorg/fork/enums/ServiceMessageType;->PHOTO_DELETED:Lorg/fork/enums/ServiceMessageType;

    :cond_7
    return-object v4
.end method

.method public final getValues(Z)[Lorg/fork/enums/ServiceMessageType;
    .locals 7

    .line 42
    invoke-static {}, Lorg/fork/enums/ServiceMessageType;->values()[Lorg/fork/enums/ServiceMessageType;

    move-result-object v0

    .line 3792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4307
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v0, v4

    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {v5}, Lorg/fork/enums/ServiceMessageType;->getChannelCode()Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {v5}, Lorg/fork/enums/ServiceMessageType;->getGroupCode()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_2

    :cond_1
    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    if-eqz v6, :cond_3

    .line 4307
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-array p1, v3, [Lorg/fork/enums/ServiceMessageType;

    .line 38
    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/fork/enums/ServiceMessageType;

    return-object p1
.end method
