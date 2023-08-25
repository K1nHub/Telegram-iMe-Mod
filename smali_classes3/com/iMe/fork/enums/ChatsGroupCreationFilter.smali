.class public final enum Lcom/iMe/fork/enums/ChatsGroupCreationFilter;
.super Ljava/lang/Enum;
.source "ChatsGroupCreationFilter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/ChatsGroupCreationFilter$Companion;,
        Lcom/iMe/fork/enums/ChatsGroupCreationFilter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/ChatsGroupCreationFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

.field public static final enum ADMIN_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

.field public static final enum ALL_CHATS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

.field public static final enum BOTS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

.field public static final enum CHANNELS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

.field public static final Companion:Lcom/iMe/fork/enums/ChatsGroupCreationFilter$Companion;

.field public static final enum GROUPS_CHATS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

.field public static final enum OWNER_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

.field public static final enum PERSONAL_CHATS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

.field public static final enum PRIVATE_GROUPS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

.field public static final enum PUBLIC_GROUPS__CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;


# instance fields
.field private final fabricId:I

.field private hasSelectedItem:Z


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/ChatsGroupCreationFilter;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->ALL_CHATS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->PERSONAL_CHATS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->GROUPS_CHATS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->PRIVATE_GROUPS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->PUBLIC_GROUPS__CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->CHANNELS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->BOTS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->ADMIN_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->OWNER_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 19

    .line 11
    new-instance v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 12
    sget v1, Lcom/iMe/common/IdFabric$Menu;->ALL_CHATS_CATEGORIES_FILTER:I

    const-string v2, "ALL_CHATS_CATEGORIES_FILTER"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 11
    invoke-direct {v0, v2, v3, v1, v4}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->ALL_CHATS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 15
    new-instance v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 16
    sget v8, Lcom/iMe/common/IdFabric$Menu;->PERSONAL_CHATS_CATEGORIES_FILTER:I

    const-string v6, "PERSONAL_CHATS_CATEGORIES_FILTER"

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v5, v0

    .line 15
    invoke-direct/range {v5 .. v11}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;-><init>(Ljava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->PERSONAL_CHATS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 18
    new-instance v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 19
    sget v15, Lcom/iMe/common/IdFabric$Menu;->GROUPS_CHATS_CATEGORIES_FILTER:I

    const-string v13, "GROUPS_CHATS_CATEGORIES_FILTER"

    const/4 v14, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object v12, v0

    .line 18
    invoke-direct/range {v12 .. v18}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;-><init>(Ljava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->GROUPS_CHATS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 21
    new-instance v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 22
    sget v4, Lcom/iMe/common/IdFabric$Menu;->PRIVATE_GROUPS_CATEGORIES_FILTER:I

    const-string v2, "PRIVATE_GROUPS_CATEGORIES_FILTER"

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v0

    .line 21
    invoke-direct/range {v1 .. v7}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;-><init>(Ljava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->PRIVATE_GROUPS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 24
    new-instance v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 25
    sget v11, Lcom/iMe/common/IdFabric$Menu;->PUBLIC_GROUPS__CATEGORIES_FILTER:I

    const-string v9, "PUBLIC_GROUPS__CATEGORIES_FILTER"

    const/4 v10, 0x4

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    move-object v8, v0

    .line 24
    invoke-direct/range {v8 .. v14}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;-><init>(Ljava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->PUBLIC_GROUPS__CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 27
    new-instance v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 28
    sget v4, Lcom/iMe/common/IdFabric$Menu;->CHANNELS_CATEGORIES_FILTER:I

    const-string v2, "CHANNELS_CATEGORIES_FILTER"

    const/4 v3, 0x5

    move-object v1, v0

    .line 27
    invoke-direct/range {v1 .. v7}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;-><init>(Ljava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->CHANNELS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 30
    new-instance v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 31
    sget v11, Lcom/iMe/common/IdFabric$Menu;->BOTS_CATEGORIES_FILTER:I

    const-string v9, "BOTS_CATEGORIES_FILTER"

    const/4 v10, 0x6

    move-object v8, v0

    .line 30
    invoke-direct/range {v8 .. v14}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;-><init>(Ljava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->BOTS_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 33
    new-instance v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 34
    sget v4, Lcom/iMe/common/IdFabric$Menu;->ADMIN_CATEGORIES_FILTER:I

    const-string v2, "ADMIN_CATEGORIES_FILTER"

    const/4 v3, 0x7

    move-object v1, v0

    .line 33
    invoke-direct/range {v1 .. v7}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;-><init>(Ljava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->ADMIN_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 36
    new-instance v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    .line 37
    sget v11, Lcom/iMe/common/IdFabric$Menu;->OWNER_CATEGORIES_FILTER:I

    const-string v9, "OWNER_CATEGORIES_FILTER"

    const/16 v10, 0x8

    move-object v8, v0

    .line 36
    invoke-direct/range {v8 .. v14}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;-><init>(Ljava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->OWNER_CATEGORIES_FILTER:Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    invoke-static {}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->$values()[Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->$VALUES:[Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    new-instance v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->Companion:Lcom/iMe/fork/enums/ChatsGroupCreationFilter$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->fabricId:I

    .line 9
    iput-boolean p4, p0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->hasSelectedItem:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;-><init>(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static final getCategoriesCreatedFolderOrTopic(I)Lcom/iMe/fork/enums/ChatsGroupCreationFilter;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->Companion:Lcom/iMe/fork/enums/ChatsGroupCreationFilter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/ChatsGroupCreationFilter$Companion;->getCategoriesCreatedFolderOrTopic(I)Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/ChatsGroupCreationFilter;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/ChatsGroupCreationFilter;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->$VALUES:[Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/ChatsGroupCreationFilter;

    return-object v0
.end method


# virtual methods
.method public final getFabricId()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->fabricId:I

    return v0
.end method

.method public final getHasSelectedItem()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->hasSelectedItem:Z

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 40
    sget-object v0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 49
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget v0, Lorg/telegram/messenger/R$string;->sorting_settings_tab_bots_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026ings_tab_bots_item_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :pswitch_1
    sget v0, Lorg/telegram/messenger/R$string;->sorting_settings_tab_owner_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026ngs_tab_owner_item_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_2
    sget v0, Lorg/telegram/messenger/R$string;->sorting_settings_tab_admin_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026ngs_tab_admin_item_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :pswitch_3
    sget v0, Lorg/telegram/messenger/R$string;->sorting_settings_tab_channels_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026_tab_channels_item_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :pswitch_4
    sget v0, Lorg/telegram/messenger/R$string;->sorting_settings_tab_public_groups_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026public_groups_item_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :pswitch_5
    sget v0, Lorg/telegram/messenger/R$string;->sorting_settings_tab_private_groups_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026rivate_groups_item_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :pswitch_6
    sget v0, Lorg/telegram/messenger/R$string;->sorting_settings_tab_groups_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026gs_tab_groups_item_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_7
    sget v0, Lorg/telegram/messenger/R$string;->sorting_settings_tab_personal_chats_item_title:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026ersonal_chats_item_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 41
    :pswitch_8
    sget v0, Lorg/telegram/messenger/R$string;->AllChats:I

    const-string v1, "AllChats"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"AllChats\", R.string.AllChats)"

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

.method public final setHasSelectedItem(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/iMe/fork/enums/ChatsGroupCreationFilter;->hasSelectedItem:Z

    return-void
.end method
