.class public final enum Lorg/fork/enums/SettingsToolsCategory;
.super Ljava/lang/Enum;
.source "SettingsToolsCategory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/SettingsToolsCategory$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/SettingsToolsCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/SettingsToolsCategory;

.field public static final enum SETTINGS_BASIC_TOOLBAR:Lorg/fork/enums/SettingsToolsCategory;

.field public static final enum SETTINGS_CHATS:Lorg/fork/enums/SettingsToolsCategory;

.field public static final enum SETTINGS_CHAT_LIST_VIEW:Lorg/fork/enums/SettingsToolsCategory;

.field public static final enum SETTINGS_CHAT_PROFILE:Lorg/fork/enums/SettingsToolsCategory;

.field public static final enum SETTINGS_CLOUD:Lorg/fork/enums/SettingsToolsCategory;

.field public static final enum SETTINGS_CONFIRMATION:Lorg/fork/enums/SettingsToolsCategory;

.field public static final enum SETTINGS_CUSTOMIZATION:Lorg/fork/enums/SettingsToolsCategory;

.field public static final enum SETTINGS_MESSAGES:Lorg/fork/enums/SettingsToolsCategory;

.field public static final enum SETTINGS_REACTIONS_BUTTON:Lorg/fork/enums/SettingsToolsCategory;

.field public static final enum SETTINGS_SIDE_MENU:Lorg/fork/enums/SettingsToolsCategory;


# instance fields
.field private final iconResId:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/SettingsToolsCategory;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lorg/fork/enums/SettingsToolsCategory;

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CUSTOMIZATION:Lorg/fork/enums/SettingsToolsCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_SIDE_MENU:Lorg/fork/enums/SettingsToolsCategory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_BASIC_TOOLBAR:Lorg/fork/enums/SettingsToolsCategory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CHAT_PROFILE:Lorg/fork/enums/SettingsToolsCategory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CLOUD:Lorg/fork/enums/SettingsToolsCategory;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CHAT_LIST_VIEW:Lorg/fork/enums/SettingsToolsCategory;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CHATS:Lorg/fork/enums/SettingsToolsCategory;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_MESSAGES:Lorg/fork/enums/SettingsToolsCategory;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_REACTIONS_BUTTON:Lorg/fork/enums/SettingsToolsCategory;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CONFIRMATION:Lorg/fork/enums/SettingsToolsCategory;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lorg/fork/enums/SettingsToolsCategory;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_customize:I

    const-string v2, "SETTINGS_CUSTOMIZATION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/SettingsToolsCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CUSTOMIZATION:Lorg/fork/enums/SettingsToolsCategory;

    .line 8
    new-instance v0, Lorg/fork/enums/SettingsToolsCategory;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_settings_menu:I

    const-string v2, "SETTINGS_SIDE_MENU"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/SettingsToolsCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_SIDE_MENU:Lorg/fork/enums/SettingsToolsCategory;

    .line 9
    new-instance v0, Lorg/fork/enums/SettingsToolsCategory;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_interface_settings:I

    const-string v2, "SETTINGS_BASIC_TOOLBAR"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/SettingsToolsCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_BASIC_TOOLBAR:Lorg/fork/enums/SettingsToolsCategory;

    .line 10
    new-instance v0, Lorg/fork/enums/SettingsToolsCategory;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_openprofile:I

    const-string v2, "SETTINGS_CHAT_PROFILE"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/SettingsToolsCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CHAT_PROFILE:Lorg/fork/enums/SettingsToolsCategory;

    .line 11
    new-instance v0, Lorg/fork/enums/SettingsToolsCategory;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_drawer_cloud:I

    const-string v2, "SETTINGS_CLOUD"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/SettingsToolsCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CLOUD:Lorg/fork/enums/SettingsToolsCategory;

    .line 12
    new-instance v0, Lorg/fork/enums/SettingsToolsCategory;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_ic_chats_list:I

    const-string v2, "SETTINGS_CHAT_LIST_VIEW"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/SettingsToolsCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CHAT_LIST_VIEW:Lorg/fork/enums/SettingsToolsCategory;

    .line 13
    new-instance v0, Lorg/fork/enums/SettingsToolsCategory;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_msgbubble3:I

    const-string v2, "SETTINGS_CHATS"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/SettingsToolsCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CHATS:Lorg/fork/enums/SettingsToolsCategory;

    .line 14
    new-instance v0, Lorg/fork/enums/SettingsToolsCategory;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_settings_chat:I

    const-string v2, "SETTINGS_MESSAGES"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/SettingsToolsCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_MESSAGES:Lorg/fork/enums/SettingsToolsCategory;

    .line 15
    new-instance v0, Lorg/fork/enums/SettingsToolsCategory;

    sget v1, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_heart:I

    const-string v2, "SETTINGS_REACTIONS_BUTTON"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/SettingsToolsCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_REACTIONS_BUTTON:Lorg/fork/enums/SettingsToolsCategory;

    .line 16
    new-instance v0, Lorg/fork/enums/SettingsToolsCategory;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_block2:I

    const-string v2, "SETTINGS_CONFIRMATION"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/SettingsToolsCategory;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/SettingsToolsCategory;->SETTINGS_CONFIRMATION:Lorg/fork/enums/SettingsToolsCategory;

    invoke-static {}, Lorg/fork/enums/SettingsToolsCategory;->$values()[Lorg/fork/enums/SettingsToolsCategory;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/SettingsToolsCategory;->$VALUES:[Lorg/fork/enums/SettingsToolsCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/fork/enums/SettingsToolsCategory;->iconResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/SettingsToolsCategory;
    .locals 1

    const-class v0, Lorg/fork/enums/SettingsToolsCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/SettingsToolsCategory;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/SettingsToolsCategory;
    .locals 1

    sget-object v0, Lorg/fork/enums/SettingsToolsCategory;->$VALUES:[Lorg/fork/enums/SettingsToolsCategory;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/SettingsToolsCategory;

    return-object v0
.end method


# virtual methods
.method public final getIconResId()I
    .locals 1

    .line 6
    iget v0, p0, Lorg/fork/enums/SettingsToolsCategory;->iconResId:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .line 18
    sget-object v0, Lorg/fork/enums/SettingsToolsCategory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 28
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget v0, Lorg/telegram/messenger/R$string;->settings_interface_confirmation_header:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026face_confirmation_header)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 27
    :pswitch_1
    sget v0, Lorg/telegram/messenger/R$string;->settings_tools_reactions:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026settings_tools_reactions)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :pswitch_2
    sget v0, Lorg/telegram/messenger/R$string;->settings_interface_message_header:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026interface_message_header)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :pswitch_3
    sget v0, Lorg/telegram/messenger/R$string;->settings_interface_chat_header:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026gs_interface_chat_header)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :pswitch_4
    sget v0, Lorg/telegram/messenger/R$string;->ChatList:I

    const-string v1, "ChatList"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(\"ChatList\", R.string.ChatList)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :pswitch_5
    sget v0, Lorg/telegram/messenger/R$string;->folder_fab_settings_fab_cloud:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026r_fab_settings_fab_cloud)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 22
    :pswitch_6
    sget v0, Lorg/telegram/messenger/R$string;->settings_tools_chat_profile:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026tings_tools_chat_profile)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :pswitch_7
    sget v0, Lorg/telegram/messenger/R$string;->settings_tools_base_toolbar:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026tings_tools_base_toolbar)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :pswitch_8
    sget v0, Lorg/telegram/messenger/R$string;->settings_interface_drawer_header:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026_interface_drawer_header)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :pswitch_9
    sget v0, Lorg/telegram/messenger/R$string;->settings_tools_customization:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getInternalString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getInternalString(R.stri\u2026ings_tools_customization)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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
