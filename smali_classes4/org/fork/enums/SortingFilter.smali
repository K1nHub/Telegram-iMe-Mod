.class public final enum Lorg/fork/enums/SortingFilter;
.super Ljava/lang/Enum;
.source "SortingFilter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/SortingFilter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/SortingFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/SortingFilter;

.field public static final enum ADMIN:Lorg/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_ADMIN:Lorg/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_ALBUMS:Lorg/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_BOTS:Lorg/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_CHANNELS:Lorg/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_DELETED_USERS:Lorg/fork/enums/SortingFilter;

.field private static final ARCHIVE_EXTRA_ID:I = 0x77359400

.field public static final enum ARCHIVE_GROUPS:Lorg/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_LIVE_CHATS:Lorg/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_OWNER:Lorg/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_PERSONAL:Lorg/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_PRIVATE_GROUPS:Lorg/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_PUBLIC_GROUPS:Lorg/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_SECRET_CHATS:Lorg/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_UNREAD:Lorg/fork/enums/SortingFilter;

.field public static final enum BOTS:Lorg/fork/enums/SortingFilter;

.field public static final enum CHANNELS:Lorg/fork/enums/SortingFilter;

.field public static final CURRENT_DEPLOY_VERSION:I = 0x8

.field public static final Companion:Lorg/fork/enums/SortingFilter$Companion;

.field public static final enum DELETED_USERS:Lorg/fork/enums/SortingFilter;

.field public static final enum GROUPS:Lorg/fork/enums/SortingFilter;

.field public static final enum LIVE_CHATS:Lorg/fork/enums/SortingFilter;

.field private static final MAIN_EXTRA_ID:I = 0x3b9aca00

.field public static final enum MENTIONED_CHATS:Lorg/fork/enums/SortingFilter;

.field public static final enum OWNER:Lorg/fork/enums/SortingFilter;

.field public static final enum PERSONAL:Lorg/fork/enums/SortingFilter;

.field public static final enum PRIVATE_GROUPS:Lorg/fork/enums/SortingFilter;

.field public static final enum PUBLIC_GROUPS:Lorg/fork/enums/SortingFilter;

.field public static final enum SECRET_CHATS:Lorg/fork/enums/SortingFilter;

.field public static final enum UNREAD:Lorg/fork/enums/SortingFilter;


# instance fields
.field private final addingOrder:I

.field private final defaultIconResId:I

.field private final fabByDefault:Lcom/smedialink/storage/domain/model/filters/FilterFab;

.field private final filledIconResId:I

.field private final flags:I

.field private final isArchive:Z

.field private final isEnabledByDefault:Z

.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/SortingFilter;
    .locals 3

    const/16 v0, 0x1a

    new-array v0, v0, [Lorg/fork/enums/SortingFilter;

    sget-object v1, Lorg/fork/enums/SortingFilter;->UNREAD:Lorg/fork/enums/SortingFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->PERSONAL:Lorg/fork/enums/SortingFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->GROUPS:Lorg/fork/enums/SortingFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->CHANNELS:Lorg/fork/enums/SortingFilter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->BOTS:Lorg/fork/enums/SortingFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->ADMIN:Lorg/fork/enums/SortingFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->OWNER:Lorg/fork/enums/SortingFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->PRIVATE_GROUPS:Lorg/fork/enums/SortingFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->PUBLIC_GROUPS:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->MENTIONED_CHATS:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->LIVE_CHATS:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->DELETED_USERS:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->SECRET_CHATS:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->ARCHIVE_UNREAD:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->ARCHIVE_PERSONAL:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->ARCHIVE_GROUPS:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->ARCHIVE_CHANNELS:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->ARCHIVE_BOTS:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->ARCHIVE_ADMIN:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->ARCHIVE_OWNER:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->ARCHIVE_PRIVATE_GROUPS:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->ARCHIVE_PUBLIC_GROUPS:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->ARCHIVE_LIVE_CHATS:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->ARCHIVE_DELETED_USERS:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->ARCHIVE_SECRET_CHATS:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/SortingFilter;->ARCHIVE_ALBUMS:Lorg/fork/enums/SortingFilter;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 58

    .line 20
    new-instance v11, Lorg/fork/enums/SortingFilter;

    .line 21
    sget v12, Lorg/telegram/messenger/R$string;->sorting_settings_tab_unread_chats_item_title:I

    .line 22
    sget v13, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubble_point:I

    .line 23
    sget v14, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubble_point_filled:I

    .line 24
    sget-object v15, Lcom/smedialink/storage/domain/model/filters/FilterFab;->MARK_ALL_READ:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    .line 25
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    or-int/2addr v0, v1

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "UNREAD"

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move-object v6, v15

    .line 20
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v11, Lorg/fork/enums/SortingFilter;->UNREAD:Lorg/fork/enums/SortingFilter;

    .line 30
    new-instance v0, Lorg/fork/enums/SortingFilter;

    .line 31
    sget v11, Lorg/telegram/messenger/R$string;->sorting_settings_tab_personal_chats_item_title:I

    .line 32
    sget v27, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_user:I

    .line 33
    sget v28, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_user_filled:I

    .line 34
    sget-object v29, Lcom/smedialink/storage/domain/model/filters/FilterFab;->CREATE_CHAT:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    .line 35
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    or-int/2addr v1, v2

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v23, v1, v2

    const-string v17, "PERSONAL"

    const/16 v18, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v16, v0

    move/from16 v19, v11

    move/from16 v20, v27

    move/from16 v21, v28

    move-object/from16 v22, v29

    .line 30
    invoke-direct/range {v16 .. v26}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v0, Lorg/fork/enums/SortingFilter;->PERSONAL:Lorg/fork/enums/SortingFilter;

    .line 40
    new-instance v0, Lorg/fork/enums/SortingFilter;

    .line 41
    sget v30, Lorg/telegram/messenger/R$string;->sorting_settings_tab_groups_item_title:I

    .line 42
    sget v31, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_users:I

    .line 43
    sget v32, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_users_filled:I

    .line 45
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v23, v1, v2

    const-string v17, "GROUPS"

    const/16 v18, 0x2

    const/16 v25, 0x2

    move-object/from16 v16, v0

    move/from16 v19, v30

    move/from16 v20, v31

    move/from16 v21, v32

    .line 40
    invoke-direct/range {v16 .. v26}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v0, Lorg/fork/enums/SortingFilter;->GROUPS:Lorg/fork/enums/SortingFilter;

    .line 50
    new-instance v0, Lorg/fork/enums/SortingFilter;

    .line 51
    sget v33, Lorg/telegram/messenger/R$string;->sorting_settings_tab_channels_item_title:I

    .line 52
    sget v34, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_channel:I

    .line 53
    sget v35, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_channel_filled:I

    .line 55
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v23, v1, v2

    const-string v17, "CHANNELS"

    const/16 v18, 0x3

    const/16 v25, 0x3

    move-object/from16 v16, v0

    move/from16 v19, v33

    move/from16 v20, v34

    move/from16 v21, v35

    .line 50
    invoke-direct/range {v16 .. v26}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v0, Lorg/fork/enums/SortingFilter;->CHANNELS:Lorg/fork/enums/SortingFilter;

    .line 60
    new-instance v0, Lorg/fork/enums/SortingFilter;

    .line 61
    sget v36, Lorg/telegram/messenger/R$string;->sorting_settings_tab_bots_item_title:I

    .line 62
    sget v37, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bot:I

    .line 63
    sget v38, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bot_filled:I

    .line 65
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v23, v1, v2

    const-string v17, "BOTS"

    const/16 v18, 0x4

    const/16 v25, 0x4

    move-object/from16 v16, v0

    move/from16 v19, v36

    move/from16 v20, v37

    move/from16 v21, v38

    .line 60
    invoke-direct/range {v16 .. v26}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v0, Lorg/fork/enums/SortingFilter;->BOTS:Lorg/fork/enums/SortingFilter;

    .line 70
    new-instance v0, Lorg/fork/enums/SortingFilter;

    .line 71
    sget v39, Lorg/telegram/messenger/R$string;->sorting_settings_tab_admin_item_title:I

    .line 72
    sget v40, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_chat_admin:I

    .line 73
    sget v41, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_chat_admin_filled:I

    .line 75
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ADMIN:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v23, v1, v2

    const-string v17, "ADMIN"

    const/16 v18, 0x5

    const/16 v25, 0x6

    move-object/from16 v16, v0

    move/from16 v19, v39

    move/from16 v20, v40

    move/from16 v21, v41

    .line 70
    invoke-direct/range {v16 .. v26}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v0, Lorg/fork/enums/SortingFilter;->ADMIN:Lorg/fork/enums/SortingFilter;

    .line 80
    new-instance v0, Lorg/fork/enums/SortingFilter;

    .line 81
    sget v42, Lorg/telegram/messenger/R$string;->sorting_settings_tab_owner_item_title:I

    .line 82
    sget v43, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_owner:I

    .line 83
    sget v44, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_owner_filled:I

    .line 85
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_OWNER:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v23, v1, v2

    const-string v17, "OWNER"

    const/16 v18, 0x6

    const/16 v25, 0x5

    move-object/from16 v16, v0

    move/from16 v19, v42

    move/from16 v20, v43

    move/from16 v21, v44

    .line 80
    invoke-direct/range {v16 .. v26}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v0, Lorg/fork/enums/SortingFilter;->OWNER:Lorg/fork/enums/SortingFilter;

    .line 90
    new-instance v0, Lorg/fork/enums/SortingFilter;

    .line 91
    sget v45, Lorg/telegram/messenger/R$string;->sorting_settings_tab_private_groups_item_title:I

    .line 92
    sget v46, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_private_groups:I

    .line 93
    sget v47, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_private_groups_filled:I

    .line 95
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_PRIVATE_GROUPS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v23, v1, v2

    const-string v17, "PRIVATE_GROUPS"

    const/16 v18, 0x7

    const/16 v24, 0x0

    const/16 v25, 0x8

    move-object/from16 v16, v0

    move/from16 v19, v45

    move/from16 v20, v46

    move/from16 v21, v47

    .line 90
    invoke-direct/range {v16 .. v26}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v0, Lorg/fork/enums/SortingFilter;->PRIVATE_GROUPS:Lorg/fork/enums/SortingFilter;

    .line 100
    new-instance v0, Lorg/fork/enums/SortingFilter;

    .line 101
    sget v48, Lorg/telegram/messenger/R$string;->sorting_settings_tab_public_groups_item_title:I

    .line 102
    sget v49, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_public_groups:I

    .line 103
    sget v50, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_public_groups_filled:I

    .line 105
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_PUBLIC_GROUPS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v23, v1, v2

    const-string v17, "PUBLIC_GROUPS"

    const/16 v18, 0x8

    const/16 v25, 0x9

    move-object/from16 v16, v0

    move/from16 v19, v48

    move/from16 v20, v49

    move/from16 v21, v50

    .line 100
    invoke-direct/range {v16 .. v26}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v0, Lorg/fork/enums/SortingFilter;->PUBLIC_GROUPS:Lorg/fork/enums/SortingFilter;

    .line 110
    new-instance v16, Lorg/fork/enums/SortingFilter;

    .line 111
    sget v3, Lorg/telegram/messenger/R$string;->sorting_settings_tab_mentioned_chats:I

    .line 112
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_mentionbutton:I

    .line 113
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_mentionbutton_filled:I

    .line 115
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_MENTIONED:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "MENTIONED_CHATS"

    const/16 v2, 0x9

    const/4 v8, 0x0

    const/16 v9, 0xb

    move-object/from16 v0, v16

    .line 110
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v16, Lorg/fork/enums/SortingFilter;->MENTIONED_CHATS:Lorg/fork/enums/SortingFilter;

    .line 120
    new-instance v16, Lorg/fork/enums/SortingFilter;

    .line 121
    sget v51, Lorg/telegram/messenger/R$string;->sorting_settings_tab_live_chats:I

    .line 122
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_voicechat:I

    .line 123
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_voicechat_filled:I

    .line 125
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_LIVE_CHAT:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "LIVE_CHATS"

    const/16 v2, 0xa

    const/16 v9, 0xc

    move-object/from16 v0, v16

    move/from16 v3, v51

    .line 120
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v16, Lorg/fork/enums/SortingFilter;->LIVE_CHATS:Lorg/fork/enums/SortingFilter;

    .line 130
    new-instance v16, Lorg/fork/enums/SortingFilter;

    .line 131
    sget v52, Lorg/telegram/messenger/R$string;->sorting_settings_tab_deleted_users:I

    .line 132
    sget v53, Lorg/telegram/messenger/R$drawable;->fork_ic_ghost_26:I

    .line 133
    sget v54, Lorg/telegram/messenger/R$drawable;->fork_ic_ghost_filled_26:I

    .line 135
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_DELETED:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "DELETED_USERS"

    const/16 v2, 0xb

    const/16 v9, 0xa

    move-object/from16 v0, v16

    move/from16 v3, v52

    move/from16 v4, v53

    move/from16 v5, v54

    .line 130
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v16, Lorg/fork/enums/SortingFilter;->DELETED_USERS:Lorg/fork/enums/SortingFilter;

    .line 140
    new-instance v0, Lorg/fork/enums/SortingFilter;

    .line 141
    sget v55, Lorg/telegram/messenger/R$string;->sorting_settings_tab_secret_chats_item_title:I

    .line 142
    sget v56, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock:I

    .line 143
    sget v57, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock_filled:I

    .line 145
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_SECRET_CHAT:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v23, v1, v2

    const-string v17, "SECRET_CHATS"

    const/16 v18, 0xc

    const/16 v25, 0x7

    move-object/from16 v16, v0

    move/from16 v19, v55

    move/from16 v20, v56

    move/from16 v21, v57

    .line 140
    invoke-direct/range {v16 .. v26}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v0, Lorg/fork/enums/SortingFilter;->SECRET_CHATS:Lorg/fork/enums/SortingFilter;

    .line 150
    new-instance v16, Lorg/fork/enums/SortingFilter;

    .line 155
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    or-int/2addr v0, v1

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "ARCHIVE_UNREAD"

    const/16 v2, 0xd

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, v16

    move v3, v12

    move v4, v13

    move v5, v14

    .line 150
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v16, Lorg/fork/enums/SortingFilter;->ARCHIVE_UNREAD:Lorg/fork/enums/SortingFilter;

    .line 160
    new-instance v12, Lorg/fork/enums/SortingFilter;

    .line 165
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    or-int/2addr v0, v1

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "ARCHIVE_PERSONAL"

    const/16 v2, 0xe

    const/4 v9, 0x1

    move-object v0, v12

    move v3, v11

    move/from16 v4, v27

    move/from16 v5, v28

    .line 160
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v12, Lorg/fork/enums/SortingFilter;->ARCHIVE_PERSONAL:Lorg/fork/enums/SortingFilter;

    .line 170
    new-instance v11, Lorg/fork/enums/SortingFilter;

    .line 175
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "ARCHIVE_GROUPS"

    const/16 v2, 0xf

    const/4 v9, 0x2

    move-object v0, v11

    move/from16 v3, v30

    move/from16 v4, v31

    move/from16 v5, v32

    .line 170
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v11, Lorg/fork/enums/SortingFilter;->ARCHIVE_GROUPS:Lorg/fork/enums/SortingFilter;

    .line 180
    new-instance v11, Lorg/fork/enums/SortingFilter;

    .line 185
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "ARCHIVE_CHANNELS"

    const/16 v2, 0x10

    const/4 v9, 0x3

    move-object v0, v11

    move/from16 v3, v33

    move/from16 v4, v34

    move/from16 v5, v35

    .line 180
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v11, Lorg/fork/enums/SortingFilter;->ARCHIVE_CHANNELS:Lorg/fork/enums/SortingFilter;

    .line 190
    new-instance v11, Lorg/fork/enums/SortingFilter;

    .line 195
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "ARCHIVE_BOTS"

    const/16 v2, 0x11

    const/4 v9, 0x4

    move-object v0, v11

    move/from16 v3, v36

    move/from16 v4, v37

    move/from16 v5, v38

    .line 190
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v11, Lorg/fork/enums/SortingFilter;->ARCHIVE_BOTS:Lorg/fork/enums/SortingFilter;

    .line 200
    new-instance v11, Lorg/fork/enums/SortingFilter;

    .line 205
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ADMIN:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "ARCHIVE_ADMIN"

    const/16 v2, 0x12

    const/16 v9, 0x8

    move-object v0, v11

    move/from16 v3, v39

    move/from16 v4, v40

    move/from16 v5, v41

    .line 200
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v11, Lorg/fork/enums/SortingFilter;->ARCHIVE_ADMIN:Lorg/fork/enums/SortingFilter;

    .line 210
    new-instance v11, Lorg/fork/enums/SortingFilter;

    .line 215
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_OWNER:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "ARCHIVE_OWNER"

    const/16 v2, 0x13

    const/4 v9, 0x7

    move-object v0, v11

    move/from16 v3, v42

    move/from16 v4, v43

    move/from16 v5, v44

    .line 210
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v11, Lorg/fork/enums/SortingFilter;->ARCHIVE_OWNER:Lorg/fork/enums/SortingFilter;

    .line 220
    new-instance v11, Lorg/fork/enums/SortingFilter;

    .line 225
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_PRIVATE_GROUPS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "ARCHIVE_PRIVATE_GROUPS"

    const/16 v2, 0x14

    const/4 v8, 0x0

    const/4 v9, 0x5

    move-object v0, v11

    move/from16 v3, v45

    move/from16 v4, v46

    move/from16 v5, v47

    .line 220
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v11, Lorg/fork/enums/SortingFilter;->ARCHIVE_PRIVATE_GROUPS:Lorg/fork/enums/SortingFilter;

    .line 230
    new-instance v11, Lorg/fork/enums/SortingFilter;

    .line 235
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_PUBLIC_GROUPS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "ARCHIVE_PUBLIC_GROUPS"

    const/16 v2, 0x15

    const/4 v9, 0x6

    move-object v0, v11

    move/from16 v3, v48

    move/from16 v4, v49

    move/from16 v5, v50

    .line 230
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v11, Lorg/fork/enums/SortingFilter;->ARCHIVE_PUBLIC_GROUPS:Lorg/fork/enums/SortingFilter;

    .line 240
    new-instance v11, Lorg/fork/enums/SortingFilter;

    .line 242
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_voicechat:I

    .line 243
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_voicechat2:I

    .line 245
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_LIVE_CHAT:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "ARCHIVE_LIVE_CHATS"

    const/16 v2, 0x16

    const/16 v9, 0xc

    move-object v0, v11

    move/from16 v3, v51

    .line 240
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v11, Lorg/fork/enums/SortingFilter;->ARCHIVE_LIVE_CHATS:Lorg/fork/enums/SortingFilter;

    .line 250
    new-instance v11, Lorg/fork/enums/SortingFilter;

    .line 255
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_DELETED:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "ARCHIVE_DELETED_USERS"

    const/16 v2, 0x17

    const/16 v9, 0xb

    move-object v0, v11

    move/from16 v3, v52

    move/from16 v4, v53

    move/from16 v5, v54

    .line 250
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v11, Lorg/fork/enums/SortingFilter;->ARCHIVE_DELETED_USERS:Lorg/fork/enums/SortingFilter;

    .line 260
    new-instance v11, Lorg/fork/enums/SortingFilter;

    .line 265
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_SECRET_CHAT:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v7, v0, v1

    const-string v1, "ARCHIVE_SECRET_CHATS"

    const/16 v2, 0x18

    const/16 v9, 0x9

    move-object v0, v11

    move/from16 v3, v55

    move/from16 v4, v56

    move/from16 v5, v57

    .line 260
    invoke-direct/range {v0 .. v10}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v11, Lorg/fork/enums/SortingFilter;->ARCHIVE_SECRET_CHATS:Lorg/fork/enums/SortingFilter;

    .line 270
    new-instance v0, Lorg/fork/enums/SortingFilter;

    .line 271
    sget v19, Lorg/telegram/messenger/R$string;->settings_tools_cloud_albums:I

    .line 272
    sget v20, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_albums:I

    .line 273
    sget v21, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_albums_filled:I

    .line 274
    sget-object v22, Lcom/smedialink/storage/domain/model/filters/FilterFab;->CREATE_ALBUM:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    .line 275
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALBUMS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v23, v1, v2

    const-string v17, "ARCHIVE_ALBUMS"

    const/16 v18, 0x19

    const/16 v24, 0x1

    const/16 v25, 0xa

    const/16 v26, 0x1

    move-object/from16 v16, v0

    .line 270
    invoke-direct/range {v16 .. v26}, Lorg/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V

    sput-object v0, Lorg/fork/enums/SortingFilter;->ARCHIVE_ALBUMS:Lorg/fork/enums/SortingFilter;

    invoke-static {}, Lorg/fork/enums/SortingFilter;->$values()[Lorg/fork/enums/SortingFilter;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/SortingFilter;->$VALUES:[Lorg/fork/enums/SortingFilter;

    new-instance v0, Lorg/fork/enums/SortingFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/enums/SortingFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILcom/smedialink/storage/domain/model/filters/FilterFab;IZIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/smedialink/storage/domain/model/filters/FilterFab;",
            "IZIZ)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lorg/fork/enums/SortingFilter;->titleResId:I

    .line 11
    iput p4, p0, Lorg/fork/enums/SortingFilter;->defaultIconResId:I

    .line 12
    iput p5, p0, Lorg/fork/enums/SortingFilter;->filledIconResId:I

    .line 13
    iput-object p6, p0, Lorg/fork/enums/SortingFilter;->fabByDefault:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    .line 14
    iput p7, p0, Lorg/fork/enums/SortingFilter;->flags:I

    .line 15
    iput-boolean p8, p0, Lorg/fork/enums/SortingFilter;->isEnabledByDefault:Z

    .line 16
    iput p9, p0, Lorg/fork/enums/SortingFilter;->addingOrder:I

    .line 17
    iput-boolean p10, p0, Lorg/fork/enums/SortingFilter;->isArchive:Z

    return-void
.end method

.method public static final getExtraId(Z)I
    .locals 1

    sget-object v0, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/SortingFilter$Companion;->getExtraId(Z)I

    move-result p0

    return p0
.end method

.method public static final getFilterByIdWithExtra(ZI)Lorg/fork/enums/SortingFilter;
    .locals 1

    sget-object v0, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/fork/enums/SortingFilter$Companion;->getFilterByIdWithExtra(ZI)Lorg/fork/enums/SortingFilter;

    move-result-object p0

    return-object p0
.end method

.method public static final getSortingFilters(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lorg/fork/enums/SortingFilter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final isSortingFilter(ZI)Z
    .locals 1

    sget-object v0, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/fork/enums/SortingFilter$Companion;->isSortingFilter(ZI)Z

    move-result p0

    return p0
.end method

.method public static final mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/SortingFilter;
    .locals 1

    sget-object v0, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/SortingFilter$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/SortingFilter;

    move-result-object p0

    return-object p0
.end method

.method public static final removeExtraFromId(ZI)I
    .locals 1

    sget-object v0, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/fork/enums/SortingFilter$Companion;->removeExtraFromId(ZI)I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/SortingFilter;
    .locals 1

    const-class v0, Lorg/fork/enums/SortingFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/SortingFilter;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/SortingFilter;
    .locals 1

    sget-object v0, Lorg/fork/enums/SortingFilter;->$VALUES:[Lorg/fork/enums/SortingFilter;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/SortingFilter;

    return-object v0
.end method


# virtual methods
.method public final generateIdWithExtra()I
    .locals 2

    .line 281
    sget-object v0, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    iget-boolean v1, p0, Lorg/fork/enums/SortingFilter;->isArchive:Z

    invoke-virtual {v0, v1}, Lorg/fork/enums/SortingFilter$Companion;->getExtraId(Z)I

    move-result v0

    iget v1, p0, Lorg/fork/enums/SortingFilter;->addingOrder:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getAddingOrder()I
    .locals 1

    .line 16
    iget v0, p0, Lorg/fork/enums/SortingFilter;->addingOrder:I

    return v0
.end method

.method public final getDefaultIconResId()I
    .locals 1

    .line 11
    iget v0, p0, Lorg/fork/enums/SortingFilter;->defaultIconResId:I

    return v0
.end method

.method public final getFabByDefault()Lcom/smedialink/storage/domain/model/filters/FilterFab;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/fork/enums/SortingFilter;->fabByDefault:Lcom/smedialink/storage/domain/model/filters/FilterFab;

    return-object v0
.end method

.method public final getFilledIconResId()I
    .locals 1

    .line 12
    iget v0, p0, Lorg/fork/enums/SortingFilter;->filledIconResId:I

    return v0
.end method

.method public final getFlags()I
    .locals 1

    .line 14
    iget v0, p0, Lorg/fork/enums/SortingFilter;->flags:I

    return v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 10
    iget v0, p0, Lorg/fork/enums/SortingFilter;->titleResId:I

    return v0
.end method

.method public final groupOrdinal()I
    .locals 3

    .line 284
    iget-boolean v0, p0, Lorg/fork/enums/SortingFilter;->isArchive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lorg/fork/enums/SortingFilter;->Companion:Lorg/fork/enums/SortingFilter$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final isArchive()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lorg/fork/enums/SortingFilter;->isArchive:Z

    return v0
.end method

.method public final isEnabledByDefault()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lorg/fork/enums/SortingFilter;->isEnabledByDefault:Z

    return v0
.end method
