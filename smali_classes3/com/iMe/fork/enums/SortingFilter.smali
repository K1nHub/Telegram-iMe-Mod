.class public final enum Lcom/iMe/fork/enums/SortingFilter;
.super Ljava/lang/Enum;
.source "SortingFilter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/SortingFilter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/SortingFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum ADMIN:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum ALBUMS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_ADMIN:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_ALBUMS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_BOTS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_CHANNELS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_DELETED_USERS:Lcom/iMe/fork/enums/SortingFilter;

.field private static final ARCHIVE_EXTRA_ID:I = 0x77359400

.field public static final enum ARCHIVE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_LIVE_CHATS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_OWNER:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_PERSONAL:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_PRIVATE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_PUBLIC_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_SECRET_CHATS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum ARCHIVE_UNREAD:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum BOTS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum CHANNELS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final CURRENT_DEPLOY_VERSION:I = 0xa

.field public static final Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

.field public static final enum DELETED_USERS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum DRAFTS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum GROUPS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum LIVE_CHATS:Lcom/iMe/fork/enums/SortingFilter;

.field private static final MAIN_EXTRA_ID:I = 0x3b9aca00

.field public static final enum MENTIONED_CHATS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum OWNER:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum PERSONAL:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum PRIVATE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum PUBLIC_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum SECRET_CHATS:Lcom/iMe/fork/enums/SortingFilter;

.field public static final enum UNREAD:Lcom/iMe/fork/enums/SortingFilter;


# instance fields
.field private final addingOrder:I

.field private final defaultIconResId:I

.field private final fabByDefault:Lcom/iMe/storage/domain/model/filters/FilterFab;

.field private final filledIconResId:I

.field private final flags:I

.field private final isArchive:Z

.field private final isEnabledByDefault:Z

.field private final isFabEditable:Z

.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/SortingFilter;
    .locals 3

    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/iMe/fork/enums/SortingFilter;

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->UNREAD:Lcom/iMe/fork/enums/SortingFilter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->PERSONAL:Lcom/iMe/fork/enums/SortingFilter;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->CHANNELS:Lcom/iMe/fork/enums/SortingFilter;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->BOTS:Lcom/iMe/fork/enums/SortingFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ADMIN:Lcom/iMe/fork/enums/SortingFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->OWNER:Lcom/iMe/fork/enums/SortingFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->PRIVATE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->PUBLIC_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->MENTIONED_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->LIVE_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->DELETED_USERS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->SECRET_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->DRAFTS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ALBUMS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_UNREAD:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_PERSONAL:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_CHANNELS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_BOTS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_ADMIN:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_OWNER:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_PRIVATE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_PUBLIC_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_LIVE_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_DELETED_USERS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_SECRET_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_ALBUMS:Lcom/iMe/fork/enums/SortingFilter;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 72

    .line 39
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 40
    sget v13, Lorg/telegram/messenger/R$string;->sorting_settings_tab_unread_chats_item_title:I

    .line 41
    sget v14, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubble_point:I

    .line 42
    sget v15, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubble_point_filled:I

    .line 43
    sget-object v16, Lcom/iMe/storage/domain/model/filters/FilterFab;->MARK_ALL_READ:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 45
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    or-int/2addr v0, v1

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "UNREAD"

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move-object/from16 v6, v16

    .line 39
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->UNREAD:Lcom/iMe/fork/enums/SortingFilter;

    .line 50
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 51
    sget v12, Lorg/telegram/messenger/R$string;->sorting_settings_tab_personal_chats_item_title:I

    .line 52
    sget v29, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_user:I

    .line 53
    sget v30, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_user_filled:I

    .line 54
    sget-object v31, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_CHAT:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 56
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    or-int/2addr v1, v2

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v25, v1, v2

    const-string v18, "PERSONAL"

    const/16 v19, 0x1

    const/16 v24, 0x1

    const/16 v26, 0x1

    const/16 v27, 0x1

    const/16 v28, 0x0

    move-object/from16 v17, v0

    move/from16 v20, v12

    move/from16 v21, v29

    move/from16 v22, v30

    move-object/from16 v23, v31

    .line 50
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->PERSONAL:Lcom/iMe/fork/enums/SortingFilter;

    .line 61
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 62
    sget v32, Lorg/telegram/messenger/R$string;->sorting_settings_tab_groups_item_title:I

    .line 63
    sget v33, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_users:I

    .line 64
    sget v34, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_users_filled:I

    .line 67
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v25, v1, v2

    const-string v18, "GROUPS"

    const/16 v19, 0x2

    const/16 v27, 0x2

    move-object/from16 v17, v0

    move/from16 v20, v32

    move/from16 v21, v33

    move/from16 v22, v34

    .line 61
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    .line 72
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 73
    sget v35, Lorg/telegram/messenger/R$string;->sorting_settings_tab_channels_item_title:I

    .line 74
    sget v36, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_channel:I

    .line 75
    sget v37, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_channel_filled:I

    .line 78
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v25, v1, v2

    const-string v18, "CHANNELS"

    const/16 v19, 0x3

    const/16 v27, 0x3

    move-object/from16 v17, v0

    move/from16 v20, v35

    move/from16 v21, v36

    move/from16 v22, v37

    .line 72
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->CHANNELS:Lcom/iMe/fork/enums/SortingFilter;

    .line 83
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 84
    sget v38, Lorg/telegram/messenger/R$string;->sorting_settings_tab_bots_item_title:I

    .line 85
    sget v39, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bot:I

    .line 86
    sget v40, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bot_filled:I

    .line 89
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v25, v1, v2

    const-string v18, "BOTS"

    const/16 v19, 0x4

    const/16 v27, 0x4

    move-object/from16 v17, v0

    move/from16 v20, v38

    move/from16 v21, v39

    move/from16 v22, v40

    .line 83
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->BOTS:Lcom/iMe/fork/enums/SortingFilter;

    .line 94
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 95
    sget v41, Lorg/telegram/messenger/R$string;->sorting_settings_tab_admin_item_title:I

    .line 96
    sget v42, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_chat_admin:I

    .line 97
    sget v43, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_chat_admin_filled:I

    .line 100
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ADMIN:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v25, v1, v2

    const-string v18, "ADMIN"

    const/16 v19, 0x5

    const/16 v27, 0x6

    move-object/from16 v17, v0

    move/from16 v20, v41

    move/from16 v21, v42

    move/from16 v22, v43

    .line 94
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->ADMIN:Lcom/iMe/fork/enums/SortingFilter;

    .line 105
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 106
    sget v44, Lorg/telegram/messenger/R$string;->sorting_settings_tab_owner_item_title:I

    .line 107
    sget v45, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_owner:I

    .line 108
    sget v46, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_owner_filled:I

    .line 111
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_OWNER:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v25, v1, v2

    const-string v18, "OWNER"

    const/16 v19, 0x6

    const/16 v27, 0x5

    move-object/from16 v17, v0

    move/from16 v20, v44

    move/from16 v21, v45

    move/from16 v22, v46

    .line 105
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->OWNER:Lcom/iMe/fork/enums/SortingFilter;

    .line 116
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 117
    sget v47, Lorg/telegram/messenger/R$string;->sorting_settings_tab_private_groups_item_title:I

    .line 118
    sget v48, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_private_groups:I

    .line 119
    sget v49, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_private_groups_filled:I

    .line 122
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_PRIVATE_GROUPS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v25, v1, v2

    const-string v18, "PRIVATE_GROUPS"

    const/16 v19, 0x7

    const/16 v26, 0x0

    const/16 v27, 0x8

    move-object/from16 v17, v0

    move/from16 v20, v47

    move/from16 v21, v48

    move/from16 v22, v49

    .line 116
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->PRIVATE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    .line 127
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 128
    sget v50, Lorg/telegram/messenger/R$string;->sorting_settings_tab_public_groups_item_title:I

    .line 129
    sget v51, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_public_groups:I

    .line 130
    sget v52, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_public_groups_filled:I

    .line 133
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_PUBLIC_GROUPS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v25, v1, v2

    const-string v18, "PUBLIC_GROUPS"

    const/16 v19, 0x8

    const/16 v27, 0x9

    move-object/from16 v17, v0

    move/from16 v20, v50

    move/from16 v21, v51

    move/from16 v22, v52

    .line 127
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->PUBLIC_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    .line 138
    new-instance v17, Lcom/iMe/fork/enums/SortingFilter;

    .line 139
    sget v3, Lorg/telegram/messenger/R$string;->sorting_settings_tab_mentioned_chats:I

    .line 140
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_mentionbutton:I

    .line 141
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_mentionbutton_filled:I

    .line 144
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_MENTIONED:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "MENTIONED_CHATS"

    const/16 v2, 0x9

    const/4 v9, 0x0

    const/16 v10, 0xb

    move-object/from16 v0, v17

    .line 138
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v17, Lcom/iMe/fork/enums/SortingFilter;->MENTIONED_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    .line 149
    new-instance v17, Lcom/iMe/fork/enums/SortingFilter;

    .line 150
    sget v53, Lorg/telegram/messenger/R$string;->sorting_settings_tab_live_chats:I

    .line 151
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_voicechat:I

    .line 152
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_voicechat_filled:I

    .line 155
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_LIVE_CHAT:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "LIVE_CHATS"

    const/16 v2, 0xa

    const/16 v10, 0xc

    move-object/from16 v0, v17

    move/from16 v3, v53

    .line 149
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v17, Lcom/iMe/fork/enums/SortingFilter;->LIVE_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    .line 160
    new-instance v17, Lcom/iMe/fork/enums/SortingFilter;

    .line 161
    sget v54, Lorg/telegram/messenger/R$string;->sorting_settings_tab_deleted_users:I

    .line 162
    sget v55, Lorg/telegram/messenger/R$drawable;->fork_ic_ghost_26:I

    .line 163
    sget v56, Lorg/telegram/messenger/R$drawable;->fork_ic_ghost_filled_26:I

    .line 166
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_DELETED:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "DELETED_USERS"

    const/16 v2, 0xb

    const/16 v10, 0xa

    move-object/from16 v0, v17

    move/from16 v3, v54

    move/from16 v4, v55

    move/from16 v5, v56

    .line 160
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v17, Lcom/iMe/fork/enums/SortingFilter;->DELETED_USERS:Lcom/iMe/fork/enums/SortingFilter;

    .line 171
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 172
    sget v57, Lorg/telegram/messenger/R$string;->sorting_settings_tab_secret_chats_item_title:I

    .line 173
    sget v58, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock:I

    .line 174
    sget v59, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock_filled:I

    .line 177
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_SECRET_CHAT:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v25, v1, v2

    const-string v18, "SECRET_CHATS"

    const/16 v19, 0xc

    const/16 v27, 0x7

    move-object/from16 v17, v0

    move/from16 v20, v57

    move/from16 v21, v58

    move/from16 v22, v59

    .line 171
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->SECRET_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    .line 182
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 183
    sget v63, Lorg/telegram/messenger/R$string;->sorting_settings_tab_drafts:I

    .line 184
    sget v64, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_drafts:I

    .line 185
    sget v65, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_drafts_filled:I

    .line 186
    sget-object v66, Lcom/iMe/storage/domain/model/filters/FilterFab;->CLEAR_DRAFTS:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 188
    sget v68, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_DRAFTS:I

    const-string v61, "DRAFTS"

    const/16 v62, 0xd

    const/16 v67, 0x0

    const/16 v69, 0x0

    const/16 v70, 0xd

    const/16 v71, 0x0

    move-object/from16 v60, v0

    .line 182
    invoke-direct/range {v60 .. v71}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->DRAFTS:Lcom/iMe/fork/enums/SortingFilter;

    .line 193
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 194
    sget v31, Lorg/telegram/messenger/R$string;->settings_tools_cloud_albums:I

    .line 195
    sget v60, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_albums:I

    .line 196
    sget v61, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_albums_filled:I

    .line 197
    sget-object v62, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_ALBUM:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 199
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALBUMS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v25, v1, v2

    const-string v18, "ALBUMS"

    const/16 v19, 0xe

    const/16 v24, 0x0

    const/16 v27, 0xe

    move-object/from16 v17, v0

    move/from16 v20, v31

    move/from16 v21, v60

    move/from16 v22, v61

    move-object/from16 v23, v62

    .line 193
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->ALBUMS:Lcom/iMe/fork/enums/SortingFilter;

    .line 204
    new-instance v17, Lcom/iMe/fork/enums/SortingFilter;

    .line 210
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALL_CHATS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_READ:I

    or-int/2addr v0, v1

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "ARCHIVE_UNREAD"

    const/16 v2, 0xf

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, v17

    move v3, v13

    move v4, v14

    move v5, v15

    .line 204
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v17, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_UNREAD:Lcom/iMe/fork/enums/SortingFilter;

    .line 215
    new-instance v13, Lcom/iMe/fork/enums/SortingFilter;

    .line 221
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CONTACTS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_NON_CONTACTS:I

    or-int/2addr v0, v1

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "ARCHIVE_PERSONAL"

    const/16 v2, 0x10

    const/4 v10, 0x1

    move-object v0, v13

    move v3, v12

    move/from16 v4, v29

    move/from16 v5, v30

    .line 215
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v13, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_PERSONAL:Lcom/iMe/fork/enums/SortingFilter;

    .line 226
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 232
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_GROUPS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "ARCHIVE_GROUPS"

    const/16 v2, 0x11

    const/4 v10, 0x2

    move-object v0, v12

    move/from16 v3, v32

    move/from16 v4, v33

    move/from16 v5, v34

    .line 226
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    .line 237
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 243
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_CHANNELS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "ARCHIVE_CHANNELS"

    const/16 v2, 0x12

    const/4 v10, 0x3

    move-object v0, v12

    move/from16 v3, v35

    move/from16 v4, v36

    move/from16 v5, v37

    .line 237
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_CHANNELS:Lcom/iMe/fork/enums/SortingFilter;

    .line 248
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 254
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_BOTS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "ARCHIVE_BOTS"

    const/16 v2, 0x13

    const/4 v10, 0x4

    move-object v0, v12

    move/from16 v3, v38

    move/from16 v4, v39

    move/from16 v5, v40

    .line 248
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_BOTS:Lcom/iMe/fork/enums/SortingFilter;

    .line 259
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 265
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ADMIN:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "ARCHIVE_ADMIN"

    const/16 v2, 0x14

    const/16 v10, 0x8

    move-object v0, v12

    move/from16 v3, v41

    move/from16 v4, v42

    move/from16 v5, v43

    .line 259
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_ADMIN:Lcom/iMe/fork/enums/SortingFilter;

    .line 270
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 276
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_OWNER:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "ARCHIVE_OWNER"

    const/16 v2, 0x15

    const/4 v10, 0x7

    move-object v0, v12

    move/from16 v3, v44

    move/from16 v4, v45

    move/from16 v5, v46

    .line 270
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_OWNER:Lcom/iMe/fork/enums/SortingFilter;

    .line 281
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 287
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_PRIVATE_GROUPS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "ARCHIVE_PRIVATE_GROUPS"

    const/16 v2, 0x16

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v0, v12

    move/from16 v3, v47

    move/from16 v4, v48

    move/from16 v5, v49

    .line 281
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_PRIVATE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    .line 292
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 298
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_PUBLIC_GROUPS:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "ARCHIVE_PUBLIC_GROUPS"

    const/16 v2, 0x17

    const/4 v10, 0x6

    move-object v0, v12

    move/from16 v3, v50

    move/from16 v4, v51

    move/from16 v5, v52

    .line 292
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_PUBLIC_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    .line 303
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 305
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_voicechat:I

    .line 306
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_voicechat2:I

    .line 309
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_LIVE_CHAT:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "ARCHIVE_LIVE_CHATS"

    const/16 v2, 0x18

    const/16 v10, 0xc

    move-object v0, v12

    move/from16 v3, v53

    .line 303
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_LIVE_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    .line 314
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 320
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_DELETED:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "ARCHIVE_DELETED_USERS"

    const/16 v2, 0x19

    const/16 v10, 0xb

    move-object v0, v12

    move/from16 v3, v54

    move/from16 v4, v55

    move/from16 v5, v56

    .line 314
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_DELETED_USERS:Lcom/iMe/fork/enums/SortingFilter;

    .line 325
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 331
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_SECRET_CHAT:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "ARCHIVE_SECRET_CHATS"

    const/16 v2, 0x1a

    const/16 v10, 0x9

    move-object v0, v12

    move/from16 v3, v57

    move/from16 v4, v58

    move/from16 v5, v59

    .line 325
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_SECRET_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    .line 336
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 342
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALBUMS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v25, v1, v2

    const-string v18, "ARCHIVE_ALBUMS"

    const/16 v19, 0x1b

    const/16 v26, 0x1

    const/16 v27, 0xa

    const/16 v28, 0x1

    move-object/from16 v17, v0

    .line 336
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_ALBUMS:Lcom/iMe/fork/enums/SortingFilter;

    invoke-static {}, Lcom/iMe/fork/enums/SortingFilter;->$values()[Lcom/iMe/fork/enums/SortingFilter;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->$VALUES:[Lcom/iMe/fork/enums/SortingFilter;

    new-instance v0, Lcom/iMe/fork/enums/SortingFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/SortingFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            "ZIZIZ)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/iMe/fork/enums/SortingFilter;->titleResId:I

    .line 29
    iput p4, p0, Lcom/iMe/fork/enums/SortingFilter;->defaultIconResId:I

    .line 30
    iput p5, p0, Lcom/iMe/fork/enums/SortingFilter;->filledIconResId:I

    .line 31
    iput-object p6, p0, Lcom/iMe/fork/enums/SortingFilter;->fabByDefault:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 32
    iput-boolean p7, p0, Lcom/iMe/fork/enums/SortingFilter;->isFabEditable:Z

    .line 33
    iput p8, p0, Lcom/iMe/fork/enums/SortingFilter;->flags:I

    .line 34
    iput-boolean p9, p0, Lcom/iMe/fork/enums/SortingFilter;->isEnabledByDefault:Z

    .line 35
    iput p10, p0, Lcom/iMe/fork/enums/SortingFilter;->addingOrder:I

    .line 36
    iput-boolean p11, p0, Lcom/iMe/fork/enums/SortingFilter;->isArchive:Z

    return-void
.end method

.method public static final getExtraId(Z)I
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getExtraId(Z)I

    move-result p0

    return p0
.end method

.method public static final getFilterByIdWithExtra(ZI)Lcom/iMe/fork/enums/SortingFilter;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getFilterByIdWithExtra(ZI)Lcom/iMe/fork/enums/SortingFilter;

    move-result-object p0

    return-object p0
.end method

.method public static final getSortingFilters(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/iMe/fork/enums/SortingFilter;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final isSortingFilter(ZI)Z
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/iMe/fork/enums/SortingFilter$Companion;->isSortingFilter(ZI)Z

    move-result p0

    return p0
.end method

.method public static final mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/SortingFilter;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/SortingFilter$Companion;->mapNameToEnum(Ljava/lang/String;)Lcom/iMe/fork/enums/SortingFilter;

    move-result-object p0

    return-object p0
.end method

.method public static final removeExtraFromId(ZI)I
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/iMe/fork/enums/SortingFilter$Companion;->removeExtraFromId(ZI)I

    move-result p0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/SortingFilter;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/SortingFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/SortingFilter;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/SortingFilter;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/SortingFilter;->$VALUES:[Lcom/iMe/fork/enums/SortingFilter;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/SortingFilter;

    return-object v0
.end method


# virtual methods
.method public final generateIdWithExtra()I
    .locals 2

    .line 348
    sget-object v0, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    iget-boolean v1, p0, Lcom/iMe/fork/enums/SortingFilter;->isArchive:Z

    invoke-virtual {v0, v1}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getExtraId(Z)I

    move-result v0

    iget v1, p0, Lcom/iMe/fork/enums/SortingFilter;->addingOrder:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getAddingOrder()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/iMe/fork/enums/SortingFilter;->addingOrder:I

    return v0
.end method

.method public final getDefaultIconResId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/iMe/fork/enums/SortingFilter;->defaultIconResId:I

    return v0
.end method

.method public final getFabByDefault()Lcom/iMe/storage/domain/model/filters/FilterFab;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/iMe/fork/enums/SortingFilter;->fabByDefault:Lcom/iMe/storage/domain/model/filters/FilterFab;

    return-object v0
.end method

.method public final getFilledIconResId()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/iMe/fork/enums/SortingFilter;->filledIconResId:I

    return v0
.end method

.method public final getFlags()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/iMe/fork/enums/SortingFilter;->flags:I

    return v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 28
    iget v0, p0, Lcom/iMe/fork/enums/SortingFilter;->titleResId:I

    return v0
.end method

.method public final groupOrdinal()I
    .locals 3

    .line 351
    iget-boolean v0, p0, Lcom/iMe/fork/enums/SortingFilter;->isArchive:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/iMe/fork/enums/SortingFilter;->Companion:Lcom/iMe/fork/enums/SortingFilter$Companion;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/iMe/fork/enums/SortingFilter$Companion;->getSortingFilters(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final isArchive()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/iMe/fork/enums/SortingFilter;->isArchive:Z

    return v0
.end method

.method public final isEnabledByDefault()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/iMe/fork/enums/SortingFilter;->isEnabledByDefault:Z

    return v0
.end method

.method public final isFabEditable()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/iMe/fork/enums/SortingFilter;->isFabEditable:Z

    return v0
.end method
