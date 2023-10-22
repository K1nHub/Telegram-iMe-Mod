.class public final enum Lcom/iMe/ui/drawer/DrawerItem;
.super Ljava/lang/Enum;
.source "DrawerItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/drawer/DrawerItem$Companion;,
        Lcom/iMe/ui/drawer/DrawerItem$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/ui/drawer/DrawerItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/ui/drawer/DrawerItem;

.field public static final enum ALBUMS:Lcom/iMe/ui/drawer/DrawerItem;

.field public static final enum CALLS:Lcom/iMe/ui/drawer/DrawerItem;

.field public static final enum CATALOG:Lcom/iMe/ui/drawer/DrawerItem;

.field public static final enum CLOUD:Lcom/iMe/ui/drawer/DrawerItem;

.field public static final enum CONTACTS:Lcom/iMe/ui/drawer/DrawerItem;

.field public static final Companion:Lcom/iMe/ui/drawer/DrawerItem$Companion;

.field public static final enum MUSIC:Lcom/iMe/ui/drawer/DrawerItem;

.field public static final enum PEOPLE_NEARBY:Lcom/iMe/ui/drawer/DrawerItem;

.field public static final enum WALLET:Lcom/iMe/ui/drawer/DrawerItem;

.field public static final enum WALLET_BOT:Lcom/iMe/ui/drawer/DrawerItem;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/ui/drawer/DrawerItem;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/iMe/ui/drawer/DrawerItem;

    sget-object v1, Lcom/iMe/ui/drawer/DrawerItem;->WALLET:Lcom/iMe/ui/drawer/DrawerItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/ui/drawer/DrawerItem;->CATALOG:Lcom/iMe/ui/drawer/DrawerItem;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/ui/drawer/DrawerItem;->MUSIC:Lcom/iMe/ui/drawer/DrawerItem;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/ui/drawer/DrawerItem;->CONTACTS:Lcom/iMe/ui/drawer/DrawerItem;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/ui/drawer/DrawerItem;->CALLS:Lcom/iMe/ui/drawer/DrawerItem;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/ui/drawer/DrawerItem;->PEOPLE_NEARBY:Lcom/iMe/ui/drawer/DrawerItem;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/ui/drawer/DrawerItem;->CLOUD:Lcom/iMe/ui/drawer/DrawerItem;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/ui/drawer/DrawerItem;->ALBUMS:Lcom/iMe/ui/drawer/DrawerItem;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/ui/drawer/DrawerItem;->WALLET_BOT:Lcom/iMe/ui/drawer/DrawerItem;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/iMe/ui/drawer/DrawerItem;

    const-string v1, "WALLET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/drawer/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/drawer/DrawerItem;->WALLET:Lcom/iMe/ui/drawer/DrawerItem;

    .line 13
    new-instance v0, Lcom/iMe/ui/drawer/DrawerItem;

    const-string v1, "CATALOG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/drawer/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/drawer/DrawerItem;->CATALOG:Lcom/iMe/ui/drawer/DrawerItem;

    .line 14
    new-instance v0, Lcom/iMe/ui/drawer/DrawerItem;

    const-string v1, "MUSIC"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/drawer/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/drawer/DrawerItem;->MUSIC:Lcom/iMe/ui/drawer/DrawerItem;

    .line 15
    new-instance v0, Lcom/iMe/ui/drawer/DrawerItem;

    const-string v1, "CONTACTS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/drawer/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/drawer/DrawerItem;->CONTACTS:Lcom/iMe/ui/drawer/DrawerItem;

    .line 16
    new-instance v0, Lcom/iMe/ui/drawer/DrawerItem;

    const-string v1, "CALLS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/drawer/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/drawer/DrawerItem;->CALLS:Lcom/iMe/ui/drawer/DrawerItem;

    .line 17
    new-instance v0, Lcom/iMe/ui/drawer/DrawerItem;

    const-string v1, "PEOPLE_NEARBY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/drawer/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/drawer/DrawerItem;->PEOPLE_NEARBY:Lcom/iMe/ui/drawer/DrawerItem;

    .line 18
    new-instance v0, Lcom/iMe/ui/drawer/DrawerItem;

    const-string v1, "CLOUD"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/drawer/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/drawer/DrawerItem;->CLOUD:Lcom/iMe/ui/drawer/DrawerItem;

    .line 19
    new-instance v0, Lcom/iMe/ui/drawer/DrawerItem;

    const-string v1, "ALBUMS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/drawer/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/drawer/DrawerItem;->ALBUMS:Lcom/iMe/ui/drawer/DrawerItem;

    .line 20
    new-instance v0, Lcom/iMe/ui/drawer/DrawerItem;

    const-string v1, "WALLET_BOT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iMe/ui/drawer/DrawerItem;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/ui/drawer/DrawerItem;->WALLET_BOT:Lcom/iMe/ui/drawer/DrawerItem;

    invoke-static {}, Lcom/iMe/ui/drawer/DrawerItem;->$values()[Lcom/iMe/ui/drawer/DrawerItem;

    move-result-object v0

    sput-object v0, Lcom/iMe/ui/drawer/DrawerItem;->$VALUES:[Lcom/iMe/ui/drawer/DrawerItem;

    new-instance v0, Lcom/iMe/ui/drawer/DrawerItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/drawer/DrawerItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/drawer/DrawerItem;->Companion:Lcom/iMe/ui/drawer/DrawerItem$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final getDefaultItems()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/ui/drawer/DrawerItem;->Companion:Lcom/iMe/ui/drawer/DrawerItem$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/drawer/DrawerItem$Companion;->getDefaultItems()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static final getSupportedItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/ui/drawer/DrawerItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/ui/drawer/DrawerItem;->Companion:Lcom/iMe/ui/drawer/DrawerItem$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/drawer/DrawerItem$Companion;->getSupportedItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/iMe/ui/drawer/DrawerItem;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/ui/drawer/DrawerItem;->Companion:Lcom/iMe/ui/drawer/DrawerItem$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/ui/drawer/DrawerItem$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/iMe/ui/drawer/DrawerItem;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/ui/drawer/DrawerItem;->Companion:Lcom/iMe/ui/drawer/DrawerItem$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/ui/drawer/DrawerItem$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/ui/drawer/DrawerItem;
    .locals 1

    const-class v0, Lcom/iMe/ui/drawer/DrawerItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/ui/drawer/DrawerItem;

    return-object p0
.end method

.method public static values()[Lcom/iMe/ui/drawer/DrawerItem;
    .locals 1

    sget-object v0, Lcom/iMe/ui/drawer/DrawerItem;->$VALUES:[Lcom/iMe/ui/drawer/DrawerItem;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/ui/drawer/DrawerItem;

    return-object v0
.end method


# virtual methods
.method public final title()Ljava/lang/String;
    .locals 2

    .line 22
    sget-object v0, Lcom/iMe/ui/drawer/DrawerItem$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 31
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget v0, Lorg/telegram/messenger/R$string;->drawer_wallet_bot:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.string.drawer_wallet_bot)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :pswitch_1
    sget v0, Lorg/telegram/messenger/R$string;->cloud_albums_toolbar_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026oud_albums_toolbar_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 29
    :pswitch_2
    sget v0, Lorg/telegram/messenger/R$string;->SavedMessages:I

    const-string v1, "SavedMessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"SavedMessages\", R.string.SavedMessages)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :pswitch_3
    sget v0, Lorg/telegram/messenger/R$string;->PeopleNearby:I

    const-string v1, "PeopleNearby"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"PeopleNearby\", R.string.PeopleNearby)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :pswitch_4
    sget v0, Lorg/telegram/messenger/R$string;->Calls:I

    const-string v1, "Calls"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Calls\", R.string.Calls)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :pswitch_5
    sget v0, Lorg/telegram/messenger/R$string;->Contacts:I

    const-string v1, "Contacts"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"Contacts\", R.string.Contacts)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :pswitch_6
    sget v0, Lorg/telegram/messenger/R$string;->AttachMusic:I

    const-string v1, "AttachMusic"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"AttachMusic\", R.string.AttachMusic)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :pswitch_7
    sget v0, Lorg/telegram/messenger/R$string;->drawer_catalog_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026rawer_catalog_item_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :pswitch_8
    sget v0, Lorg/telegram/messenger/R$string;->drawer_wallet_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026drawer_wallet_item_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
