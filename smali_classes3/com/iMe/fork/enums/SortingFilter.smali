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

    .line 21
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 22
    sget v13, Lorg/telegram/messenger/R$string;->sorting_settings_tab_unread_chats_item_title:I

    .line 23
    sget v14, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubble_point:I

    .line 24
    sget v15, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bubble_point_filled:I

    .line 25
    sget-object v16, Lcom/iMe/storage/domain/model/filters/FilterFab;->MARK_ALL_READ:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 27
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

    .line 21
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->UNREAD:Lcom/iMe/fork/enums/SortingFilter;

    .line 32
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 33
    sget v12, Lorg/telegram/messenger/R$string;->sorting_settings_tab_personal_chats_item_title:I

    .line 34
    sget v29, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_user:I

    .line 35
    sget v30, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_user_filled:I

    .line 36
    sget-object v31, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_CHAT:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 38
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

    .line 32
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->PERSONAL:Lcom/iMe/fork/enums/SortingFilter;

    .line 43
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 44
    sget v32, Lorg/telegram/messenger/R$string;->sorting_settings_tab_groups_item_title:I

    .line 45
    sget v33, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_users:I

    .line 46
    sget v34, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_users_filled:I

    .line 49
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

    .line 43
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    .line 54
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 55
    sget v35, Lorg/telegram/messenger/R$string;->sorting_settings_tab_channels_item_title:I

    .line 56
    sget v36, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_channel:I

    .line 57
    sget v37, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_channel_filled:I

    .line 60
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

    .line 54
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->CHANNELS:Lcom/iMe/fork/enums/SortingFilter;

    .line 65
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 66
    sget v38, Lorg/telegram/messenger/R$string;->sorting_settings_tab_bots_item_title:I

    .line 67
    sget v39, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bot:I

    .line 68
    sget v40, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_bot_filled:I

    .line 71
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

    .line 65
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->BOTS:Lcom/iMe/fork/enums/SortingFilter;

    .line 76
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 77
    sget v41, Lorg/telegram/messenger/R$string;->sorting_settings_tab_admin_item_title:I

    .line 78
    sget v42, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_chat_admin:I

    .line 79
    sget v43, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_chat_admin_filled:I

    .line 82
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

    .line 76
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->ADMIN:Lcom/iMe/fork/enums/SortingFilter;

    .line 87
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 88
    sget v44, Lorg/telegram/messenger/R$string;->sorting_settings_tab_owner_item_title:I

    .line 89
    sget v45, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_owner:I

    .line 90
    sget v46, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_owner_filled:I

    .line 93
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

    .line 87
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->OWNER:Lcom/iMe/fork/enums/SortingFilter;

    .line 98
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 99
    sget v47, Lorg/telegram/messenger/R$string;->sorting_settings_tab_private_groups_item_title:I

    .line 100
    sget v48, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_private_groups:I

    .line 101
    sget v49, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_private_groups_filled:I

    .line 104
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

    .line 98
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->PRIVATE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    .line 109
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 110
    sget v50, Lorg/telegram/messenger/R$string;->sorting_settings_tab_public_groups_item_title:I

    .line 111
    sget v51, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_public_groups:I

    .line 112
    sget v52, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_public_groups_filled:I

    .line 115
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

    .line 109
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->PUBLIC_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    .line 120
    new-instance v17, Lcom/iMe/fork/enums/SortingFilter;

    .line 121
    sget v3, Lorg/telegram/messenger/R$string;->sorting_settings_tab_mentioned_chats:I

    .line 122
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_mentionbutton:I

    .line 123
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_mentionbutton_filled:I

    .line 126
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_MENTIONED:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "MENTIONED_CHATS"

    const/16 v2, 0x9

    const/4 v9, 0x0

    const/16 v10, 0xb

    move-object/from16 v0, v17

    .line 120
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v17, Lcom/iMe/fork/enums/SortingFilter;->MENTIONED_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    .line 131
    new-instance v17, Lcom/iMe/fork/enums/SortingFilter;

    .line 132
    sget v53, Lorg/telegram/messenger/R$string;->sorting_settings_tab_live_chats:I

    .line 133
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_voicechat:I

    .line 134
    sget v5, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_voicechat_filled:I

    .line 137
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_LIVE_CHAT:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_EXCLUDE_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "LIVE_CHATS"

    const/16 v2, 0xa

    const/16 v10, 0xc

    move-object/from16 v0, v17

    move/from16 v3, v53

    .line 131
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v17, Lcom/iMe/fork/enums/SortingFilter;->LIVE_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    .line 142
    new-instance v17, Lcom/iMe/fork/enums/SortingFilter;

    .line 143
    sget v54, Lorg/telegram/messenger/R$string;->sorting_settings_tab_deleted_users:I

    .line 144
    sget v55, Lorg/telegram/messenger/R$drawable;->fork_ic_ghost_26:I

    .line 145
    sget v56, Lorg/telegram/messenger/R$drawable;->fork_ic_ghost_filled_26:I

    .line 148
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

    .line 142
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v17, Lcom/iMe/fork/enums/SortingFilter;->DELETED_USERS:Lcom/iMe/fork/enums/SortingFilter;

    .line 153
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 154
    sget v57, Lorg/telegram/messenger/R$string;->sorting_settings_tab_secret_chats_item_title:I

    .line 155
    sget v58, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock:I

    .line 156
    sget v59, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_lock_filled:I

    .line 159
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

    .line 153
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->SECRET_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    .line 164
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 165
    sget v63, Lorg/telegram/messenger/R$string;->sorting_settings_tab_drafts:I

    .line 166
    sget v64, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_drafts:I

    .line 167
    sget v65, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_drafts_filled:I

    .line 168
    sget-object v66, Lcom/iMe/storage/domain/model/filters/FilterFab;->CLEAR_DRAFTS:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 170
    sget v68, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_DRAFTS:I

    const-string v61, "DRAFTS"

    const/16 v62, 0xd

    const/16 v67, 0x0

    const/16 v69, 0x0

    const/16 v70, 0xd

    const/16 v71, 0x0

    move-object/from16 v60, v0

    .line 164
    invoke-direct/range {v60 .. v71}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->DRAFTS:Lcom/iMe/fork/enums/SortingFilter;

    .line 175
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 176
    sget v31, Lorg/telegram/messenger/R$string;->settings_tools_cloud_albums:I

    .line 177
    sget v60, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_albums:I

    .line 178
    sget v61, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_albums_filled:I

    .line 179
    sget-object v62, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_ALBUM:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 181
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

    .line 175
    invoke-direct/range {v17 .. v28}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v0, Lcom/iMe/fork/enums/SortingFilter;->ALBUMS:Lcom/iMe/fork/enums/SortingFilter;

    .line 186
    new-instance v17, Lcom/iMe/fork/enums/SortingFilter;

    .line 192
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

    .line 186
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v17, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_UNREAD:Lcom/iMe/fork/enums/SortingFilter;

    .line 197
    new-instance v13, Lcom/iMe/fork/enums/SortingFilter;

    .line 203
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

    .line 197
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v13, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_PERSONAL:Lcom/iMe/fork/enums/SortingFilter;

    .line 208
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 214
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

    .line 208
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    .line 219
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 225
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

    .line 219
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_CHANNELS:Lcom/iMe/fork/enums/SortingFilter;

    .line 230
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 236
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

    .line 230
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_BOTS:Lcom/iMe/fork/enums/SortingFilter;

    .line 241
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 247
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

    .line 241
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_ADMIN:Lcom/iMe/fork/enums/SortingFilter;

    .line 252
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 258
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

    .line 252
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_OWNER:Lcom/iMe/fork/enums/SortingFilter;

    .line 263
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 269
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

    .line 263
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_PRIVATE_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    .line 274
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 280
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

    .line 274
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_PUBLIC_GROUPS:Lcom/iMe/fork/enums/SortingFilter;

    .line 285
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 287
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_voicechat:I

    .line 288
    sget v5, Lorg/telegram/messenger/R$drawable;->msg_voicechat2:I

    .line 291
    sget v0, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_LIVE_CHAT:I

    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v8, v0, v1

    const-string v1, "ARCHIVE_LIVE_CHATS"

    const/16 v2, 0x18

    const/16 v10, 0xc

    move-object v0, v12

    move/from16 v3, v53

    .line 285
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_LIVE_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    .line 296
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 302
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

    .line 296
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_DELETED_USERS:Lcom/iMe/fork/enums/SortingFilter;

    .line 307
    new-instance v12, Lcom/iMe/fork/enums/SortingFilter;

    .line 313
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

    .line 307
    invoke-direct/range {v0 .. v11}, Lcom/iMe/fork/enums/SortingFilter;-><init>(Ljava/lang/String;IIIILcom/iMe/storage/domain/model/filters/FilterFab;ZIZIZ)V

    sput-object v12, Lcom/iMe/fork/enums/SortingFilter;->ARCHIVE_SECRET_CHATS:Lcom/iMe/fork/enums/SortingFilter;

    .line 318
    new-instance v0, Lcom/iMe/fork/enums/SortingFilter;

    .line 324
    sget v1, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ALBUMS:I

    sget v2, Lorg/telegram/messenger/MessagesController;->DIALOG_FILTER_FLAG_ONLY_ARCHIVED:I

    or-int v25, v1, v2

    const-string v18, "ARCHIVE_ALBUMS"

    const/16 v19, 0x1b

    const/16 v26, 0x1

    const/16 v27, 0xa

    const/16 v28, 0x1

    move-object/from16 v17, v0

    .line 318
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

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput p3, p0, Lcom/iMe/fork/enums/SortingFilter;->titleResId:I

    .line 11
    iput p4, p0, Lcom/iMe/fork/enums/SortingFilter;->defaultIconResId:I

    .line 12
    iput p5, p0, Lcom/iMe/fork/enums/SortingFilter;->filledIconResId:I

    .line 13
    iput-object p6, p0, Lcom/iMe/fork/enums/SortingFilter;->fabByDefault:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 14
    iput-boolean p7, p0, Lcom/iMe/fork/enums/SortingFilter;->isFabEditable:Z

    .line 15
    iput p8, p0, Lcom/iMe/fork/enums/SortingFilter;->flags:I

    .line 16
    iput-boolean p9, p0, Lcom/iMe/fork/enums/SortingFilter;->isEnabledByDefault:Z

    .line 17
    iput p10, p0, Lcom/iMe/fork/enums/SortingFilter;->addingOrder:I

    .line 18
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

    .line 330
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

    .line 17
    iget v0, p0, Lcom/iMe/fork/enums/SortingFilter;->addingOrder:I

    return v0
.end method

.method public final getDefaultIconResId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/iMe/fork/enums/SortingFilter;->defaultIconResId:I

    return v0
.end method

.method public final getFabByDefault()Lcom/iMe/storage/domain/model/filters/FilterFab;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/fork/enums/SortingFilter;->fabByDefault:Lcom/iMe/storage/domain/model/filters/FilterFab;

    return-object v0
.end method

.method public final getFilledIconResId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/iMe/fork/enums/SortingFilter;->filledIconResId:I

    return v0
.end method

.method public final getFlags()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/iMe/fork/enums/SortingFilter;->flags:I

    return v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/iMe/fork/enums/SortingFilter;->titleResId:I

    return v0
.end method

.method public final groupOrdinal()I
    .locals 3

    .line 333
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

    .line 334
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final isArchive()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/iMe/fork/enums/SortingFilter;->isArchive:Z

    return v0
.end method

.method public final isEnabledByDefault()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/iMe/fork/enums/SortingFilter;->isEnabledByDefault:Z

    return v0
.end method

.method public final isFabEditable()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/iMe/fork/enums/SortingFilter;->isFabEditable:Z

    return v0
.end method
