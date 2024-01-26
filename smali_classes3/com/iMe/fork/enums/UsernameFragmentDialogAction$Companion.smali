.class public final Lcom/iMe/fork/enums/UsernameFragmentDialogAction$Companion;
.super Ljava/lang/Object;
.source "UsernameFragmentDialogAction.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/enums/UsernameFragmentDialogAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsernameFragmentDialogAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsernameFragmentDialogAction.kt\ncom/iMe/fork/enums/UsernameFragmentDialogAction$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,34:1\n11335#2:35\n11670#2,3:36\n11335#2:41\n11670#2,3:42\n37#3,2:39\n*S KotlinDebug\n*F\n+ 1 UsernameFragmentDialogAction.kt\ncom/iMe/fork/enums/UsernameFragmentDialogAction$Companion\n*L\n23#1:35\n23#1:36,3\n27#1:41\n27#1:42,3\n23#1:39,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/fork/enums/UsernameFragmentDialogAction$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActions()[Ljava/lang/String;
    .locals 6

    .line 23
    invoke-static {}, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->values()[Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

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

    .line 23
    invoke-static {v5}, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->access$getActionText$p(Lcom/iMe/fork/enums/UsernameFragmentDialogAction;)Ljava/lang/String;

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

    .line 27
    invoke-static {}, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->values()[Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

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

    .line 27
    invoke-static {v4}, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->access$getIconResId$p(Lcom/iMe/fork/enums/UsernameFragmentDialogAction;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 11671
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public final mapByOrdinal(I)Lcom/iMe/fork/enums/UsernameFragmentDialogAction;
    .locals 1

    .line 31
    invoke-static {}, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->values()[Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    if-nez p1, :cond_0

    sget-object p1, Lcom/iMe/fork/enums/UsernameFragmentDialogAction;->LINK:Lcom/iMe/fork/enums/UsernameFragmentDialogAction;

    :cond_0
    return-object p1
.end method
