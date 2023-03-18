.class public final Lorg/fork/enums/ProfileTwitterAction$Companion;
.super Ljava/lang/Object;
.source "ProfileTwitterAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/enums/ProfileTwitterAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileTwitterAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileTwitterAction.kt\norg/fork/enums/ProfileTwitterAction$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,24:1\n11335#2:25\n11670#2,3:26\n11335#2:31\n11670#2,3:32\n37#3,2:29\n*S KotlinDebug\n*F\n+ 1 ProfileTwitterAction.kt\norg/fork/enums/ProfileTwitterAction$Companion\n*L\n16#1:25\n16#1:26,3\n19#1:31\n19#1:32,3\n16#1:29,2\n*E\n"
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

    invoke-direct {p0}, Lorg/fork/enums/ProfileTwitterAction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActions()[Ljava/lang/String;
    .locals 6

    .line 16
    invoke-static {}, Lorg/fork/enums/ProfileTwitterAction;->values()[Lorg/fork/enums/ProfileTwitterAction;

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

    .line 16
    invoke-static {v5}, Lorg/fork/enums/ProfileTwitterAction;->access$getActionText$p(Lorg/fork/enums/ProfileTwitterAction;)Ljava/lang/String;

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

.method public final getIcons()[I
    .locals 5

    .line 19
    invoke-static {}, Lorg/fork/enums/ProfileTwitterAction;->values()[Lorg/fork/enums/ProfileTwitterAction;

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

    .line 19
    invoke-static {v4}, Lorg/fork/enums/ProfileTwitterAction;->access$getIconResId$p(Lorg/fork/enums/ProfileTwitterAction;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 11671
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public final mapByOrdinal(I)Lorg/fork/enums/ProfileTwitterAction;
    .locals 1

    .line 22
    invoke-static {}, Lorg/fork/enums/ProfileTwitterAction;->values()[Lorg/fork/enums/ProfileTwitterAction;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/fork/enums/ProfileTwitterAction;

    if-nez p1, :cond_0

    sget-object p1, Lorg/fork/enums/ProfileTwitterAction;->OPEN:Lorg/fork/enums/ProfileTwitterAction;

    :cond_0
    return-object p1
.end method
