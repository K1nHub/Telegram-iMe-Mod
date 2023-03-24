.class public final Lorg/fork/enums/ContactsActionType$Companion;
.super Ljava/lang/Object;
.source "ContactsActionType.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fork/enums/ContactsActionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nContactsActionType.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContactsActionType.kt\norg/fork/enums/ContactsActionType$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,32:1\n1#2:33\n11335#3:34\n11670#3,3:35\n11335#3:38\n11670#3,3:39\n37#4,2:42\n*S KotlinDebug\n*F\n+ 1 ContactsActionType.kt\norg/fork/enums/ContactsActionType$Companion\n*L\n26#1:34\n26#1:35,3\n30#1:38\n30#1:39,3\n30#1:42,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/fork/enums/ContactsActionType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getByPosition(I)Lorg/fork/enums/ContactsActionType;
    .locals 6

    .line 22
    invoke-static {}, Lorg/fork/enums/ContactsActionType;->values()[Lorg/fork/enums/ContactsActionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    sget-object v4, Lorg/fork/enums/ContactsActionType;->defaultValue:Lorg/fork/enums/ContactsActionType;

    :cond_3
    return-object v4
.end method

.method public final getIconsArray()[I
    .locals 5

    .line 26
    invoke-static {}, Lorg/fork/enums/ContactsActionType;->values()[Lorg/fork/enums/ContactsActionType;

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

    .line 26
    invoke-virtual {v4}, Lorg/fork/enums/ContactsActionType;->getIconResId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 11671
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public final getTextsArray()[Ljava/lang/String;
    .locals 7

    .line 30
    invoke-static {}, Lorg/fork/enums/ContactsActionType;->values()[Lorg/fork/enums/ContactsActionType;

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

    .line 30
    invoke-virtual {v5}, Lorg/fork/enums/ContactsActionType;->getTextKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/fork/enums/ContactsActionType;->getTextResId()I

    move-result v5

    invoke-static {v6, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

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
