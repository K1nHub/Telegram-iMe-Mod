.class public final enum Lcom/iMe/fork/enums/DialogType;
.super Ljava/lang/Enum;
.source "DialogType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/enums/DialogType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/DialogType;

.field public static final enum BOT:Lcom/iMe/fork/enums/DialogType;

.field public static final enum CHANNEL:Lcom/iMe/fork/enums/DialogType;

.field public static final enum CHAT:Lcom/iMe/fork/enums/DialogType;

.field public static final Companion:Lcom/iMe/fork/enums/DialogType$Companion;

.field public static final enum GROUP:Lcom/iMe/fork/enums/DialogType;


# instance fields
.field private final chatAttachAlertButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/fork/enums/ChatAttachAlertButton;",
            ">;"
        }
    .end annotation
.end field

.field private final colorResId:I

.field private final iconResId:I

.field private final multiPanelButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/fork/enums/MultiPanelButton;",
            ">;"
        }
    .end annotation
.end field

.field private final nameResId:I

.field private final noUnreadDialogsResId:I

.field private final pullToGoToNextUnreadDialogResId:I

.field private final pullToGoToUnreadArchivedDialogsResId:I

.field private final releaseToGoToNextUnreadDialogResId:I

.field private final releaseToGoToUnreadArchivedDialogsResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/DialogType;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iMe/fork/enums/DialogType;

    sget-object v1, Lcom/iMe/fork/enums/DialogType;->CHAT:Lcom/iMe/fork/enums/DialogType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/DialogType;->GROUP:Lcom/iMe/fork/enums/DialogType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/DialogType;->CHANNEL:Lcom/iMe/fork/enums/DialogType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/DialogType;->BOT:Lcom/iMe/fork/enums/DialogType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 57

    .line 22
    new-instance v13, Lcom/iMe/fork/enums/DialogType;

    .line 23
    sget v3, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_header_chats:I

    .line 24
    sget v4, Lorg/telegram/messenger/R$string;->pull_to_go_to_next_unread_personal_chat:I

    .line 25
    sget v5, Lorg/telegram/messenger/R$string;->release_to_go_to_next_unread_personal_chat:I

    .line 26
    sget v6, Lorg/telegram/messenger/R$string;->pull_to_go_to_unread_archived_personal_chats:I

    .line 27
    sget v7, Lorg/telegram/messenger/R$string;->release_to_go_to_unread_archived_personal_chats:I

    .line 28
    sget v8, Lorg/telegram/messenger/R$string;->no_unread_personal_chats:I

    .line 29
    sget v9, Lorg/telegram/messenger/R$drawable;->fork_topic_user:I

    .line 30
    sget v10, Lorg/telegram/messenger/R$color;->dialog_type_personal_chat:I

    const/4 v14, 0x6

    new-array v0, v14, [Lcom/iMe/fork/enums/MultiPanelButton;

    .line 32
    sget-object v15, Lcom/iMe/fork/enums/MultiPanelButton;->MUTE:Lcom/iMe/fork/enums/MultiPanelButton;

    const/16 v16, 0x0

    aput-object v15, v0, v16

    .line 33
    sget-object v17, Lcom/iMe/fork/enums/MultiPanelButton;->MEDIA:Lcom/iMe/fork/enums/MultiPanelButton;

    const/16 v18, 0x1

    aput-object v17, v0, v18

    .line 34
    sget-object v19, Lcom/iMe/fork/enums/MultiPanelButton;->CACHE:Lcom/iMe/fork/enums/MultiPanelButton;

    const/16 v20, 0x2

    aput-object v19, v0, v20

    .line 35
    sget-object v21, Lcom/iMe/fork/enums/MultiPanelButton;->SEARCH:Lcom/iMe/fork/enums/MultiPanelButton;

    const/16 v22, 0x3

    aput-object v21, v0, v22

    .line 36
    sget-object v23, Lcom/iMe/fork/enums/MultiPanelButton;->ADD_TO_TOPIC:Lcom/iMe/fork/enums/MultiPanelButton;

    const/16 v24, 0x4

    aput-object v23, v0, v24

    .line 37
    sget-object v25, Lcom/iMe/fork/enums/MultiPanelButton;->PINS:Lcom/iMe/fork/enums/MultiPanelButton;

    const/4 v12, 0x5

    aput-object v25, v0, v12

    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    new-array v0, v14, [Lcom/iMe/fork/enums/ChatAttachAlertButton;

    .line 40
    sget-object v26, Lcom/iMe/fork/enums/ChatAttachAlertButton;->DOCUMENTS:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    aput-object v26, v0, v16

    .line 41
    sget-object v1, Lcom/iMe/fork/enums/ChatAttachAlertButton;->WALLET:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    aput-object v1, v0, v18

    .line 42
    sget-object v1, Lcom/iMe/fork/enums/ChatAttachAlertButton;->BINANCE:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    aput-object v1, v0, v20

    .line 43
    sget-object v27, Lcom/iMe/fork/enums/ChatAttachAlertButton;->GEO:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    aput-object v27, v0, v22

    .line 44
    sget-object v28, Lcom/iMe/fork/enums/ChatAttachAlertButton;->MUSIC:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    aput-object v28, v0, v24

    .line 45
    sget-object v29, Lcom/iMe/fork/enums/ChatAttachAlertButton;->CONTACT:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    aput-object v29, v0, v12

    .line 39
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v30

    const-string v1, "CHAT"

    const/4 v2, 0x0

    move-object v0, v13

    move v14, v12

    move-object/from16 v12, v30

    .line 22
    invoke-direct/range {v0 .. v12}, Lcom/iMe/fork/enums/DialogType;-><init>(Ljava/lang/String;IIIIIIIIILjava/util/List;Ljava/util/List;)V

    sput-object v13, Lcom/iMe/fork/enums/DialogType;->CHAT:Lcom/iMe/fork/enums/DialogType;

    .line 48
    new-instance v0, Lcom/iMe/fork/enums/DialogType;

    .line 49
    sget v34, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_header_groups:I

    .line 50
    sget v35, Lorg/telegram/messenger/R$string;->pull_to_go_to_next_unread_group:I

    .line 51
    sget v36, Lorg/telegram/messenger/R$string;->release_to_go_to_next_unread_group:I

    .line 52
    sget v37, Lorg/telegram/messenger/R$string;->pull_to_go_to_unread_archived_groups:I

    .line 53
    sget v38, Lorg/telegram/messenger/R$string;->release_to_go_to_unread_archived_groups:I

    .line 54
    sget v39, Lorg/telegram/messenger/R$string;->no_unread_groups:I

    .line 55
    sget v40, Lorg/telegram/messenger/R$drawable;->fork_topic_group:I

    .line 56
    sget v41, Lorg/telegram/messenger/R$color;->dialog_type_group:I

    const/16 v1, 0x8

    new-array v2, v1, [Lcom/iMe/fork/enums/MultiPanelButton;

    aput-object v15, v2, v16

    .line 59
    sget-object v3, Lcom/iMe/fork/enums/MultiPanelButton;->MEMBERS:Lcom/iMe/fork/enums/MultiPanelButton;

    aput-object v3, v2, v18

    aput-object v17, v2, v20

    .line 61
    sget-object v3, Lcom/iMe/fork/enums/MultiPanelButton;->RECENT_ACTIONS:Lcom/iMe/fork/enums/MultiPanelButton;

    aput-object v3, v2, v22

    aput-object v19, v2, v24

    aput-object v21, v2, v14

    const/4 v4, 0x6

    aput-object v23, v2, v4

    const/4 v4, 0x7

    aput-object v25, v2, v4

    .line 57
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v42

    new-array v2, v14, [Lcom/iMe/fork/enums/ChatAttachAlertButton;

    aput-object v26, v2, v16

    aput-object v27, v2, v18

    .line 70
    sget-object v5, Lcom/iMe/fork/enums/ChatAttachAlertButton;->POLL:Lcom/iMe/fork/enums/ChatAttachAlertButton;

    aput-object v5, v2, v20

    aput-object v28, v2, v22

    aput-object v29, v2, v24

    .line 67
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v43

    const-string v32, "GROUP"

    const/16 v33, 0x1

    move-object/from16 v31, v0

    .line 48
    invoke-direct/range {v31 .. v43}, Lcom/iMe/fork/enums/DialogType;-><init>(Ljava/lang/String;IIIIIIIIILjava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/iMe/fork/enums/DialogType;->GROUP:Lcom/iMe/fork/enums/DialogType;

    .line 75
    new-instance v0, Lcom/iMe/fork/enums/DialogType;

    .line 76
    sget v47, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_header_channels:I

    .line 82
    sget v53, Lorg/telegram/messenger/R$drawable;->fork_topic_channel:I

    .line 83
    sget v54, Lorg/telegram/messenger/R$color;->dialog_type_channel:I

    new-array v1, v1, [Lcom/iMe/fork/enums/MultiPanelButton;

    aput-object v15, v1, v16

    .line 86
    sget-object v2, Lcom/iMe/fork/enums/MultiPanelButton;->SUBSCRIBERS:Lcom/iMe/fork/enums/MultiPanelButton;

    aput-object v2, v1, v18

    aput-object v17, v1, v20

    aput-object v3, v1, v22

    aput-object v19, v1, v24

    aput-object v21, v1, v14

    const/4 v2, 0x6

    aput-object v23, v1, v2

    aput-object v25, v1, v4

    .line 84
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v55

    new-array v1, v14, [Lcom/iMe/fork/enums/ChatAttachAlertButton;

    aput-object v26, v1, v16

    aput-object v27, v1, v18

    aput-object v5, v1, v20

    aput-object v28, v1, v22

    aput-object v29, v1, v24

    .line 94
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v56

    const-string v45, "CHANNEL"

    const/16 v46, 0x2

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v44, v0

    .line 75
    invoke-direct/range {v44 .. v56}, Lcom/iMe/fork/enums/DialogType;-><init>(Ljava/lang/String;IIIIIIIIILjava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/iMe/fork/enums/DialogType;->CHANNEL:Lcom/iMe/fork/enums/DialogType;

    .line 102
    new-instance v0, Lcom/iMe/fork/enums/DialogType;

    .line 103
    sget v34, Lorg/telegram/messenger/R$string;->multi_panel_settings_section_header_bots:I

    .line 104
    sget v35, Lorg/telegram/messenger/R$string;->pull_to_go_to_next_unread_bot:I

    .line 105
    sget v36, Lorg/telegram/messenger/R$string;->release_to_go_to_next_unread_bot:I

    .line 106
    sget v37, Lorg/telegram/messenger/R$string;->pull_to_go_to_unread_archived_bots:I

    .line 107
    sget v38, Lorg/telegram/messenger/R$string;->release_to_go_to_unread_archived_bots:I

    .line 108
    sget v39, Lorg/telegram/messenger/R$string;->no_unread_bots:I

    .line 109
    sget v40, Lorg/telegram/messenger/R$drawable;->msg_folders_bots:I

    .line 110
    sget v41, Lorg/telegram/messenger/R$color;->dialog_type_bot:I

    new-array v1, v4, [Lcom/iMe/fork/enums/MultiPanelButton;

    aput-object v15, v1, v16

    aput-object v17, v1, v18

    .line 114
    sget-object v2, Lcom/iMe/fork/enums/MultiPanelButton;->STOP_BOT:Lcom/iMe/fork/enums/MultiPanelButton;

    aput-object v2, v1, v20

    aput-object v19, v1, v22

    aput-object v21, v1, v24

    aput-object v23, v1, v14

    const/4 v2, 0x6

    aput-object v25, v1, v2

    .line 111
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v42

    new-array v1, v14, [Lcom/iMe/fork/enums/ChatAttachAlertButton;

    aput-object v26, v1, v16

    aput-object v27, v1, v18

    aput-object v5, v1, v20

    aput-object v28, v1, v22

    aput-object v29, v1, v24

    .line 120
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v43

    const-string v32, "BOT"

    const/16 v33, 0x3

    move-object/from16 v31, v0

    .line 102
    invoke-direct/range {v31 .. v43}, Lcom/iMe/fork/enums/DialogType;-><init>(Ljava/lang/String;IIIIIIIIILjava/util/List;Ljava/util/List;)V

    sput-object v0, Lcom/iMe/fork/enums/DialogType;->BOT:Lcom/iMe/fork/enums/DialogType;

    invoke-static {}, Lcom/iMe/fork/enums/DialogType;->$values()[Lcom/iMe/fork/enums/DialogType;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/DialogType;->$VALUES:[Lcom/iMe/fork/enums/DialogType;

    new-instance v0, Lcom/iMe/fork/enums/DialogType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/enums/DialogType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIII",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/fork/enums/MultiPanelButton;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/iMe/fork/enums/ChatAttachAlertButton;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/iMe/fork/enums/DialogType;->nameResId:I

    .line 12
    iput p4, p0, Lcom/iMe/fork/enums/DialogType;->pullToGoToNextUnreadDialogResId:I

    .line 13
    iput p5, p0, Lcom/iMe/fork/enums/DialogType;->releaseToGoToNextUnreadDialogResId:I

    .line 14
    iput p6, p0, Lcom/iMe/fork/enums/DialogType;->pullToGoToUnreadArchivedDialogsResId:I

    .line 15
    iput p7, p0, Lcom/iMe/fork/enums/DialogType;->releaseToGoToUnreadArchivedDialogsResId:I

    .line 16
    iput p8, p0, Lcom/iMe/fork/enums/DialogType;->noUnreadDialogsResId:I

    .line 17
    iput p9, p0, Lcom/iMe/fork/enums/DialogType;->iconResId:I

    .line 18
    iput p10, p0, Lcom/iMe/fork/enums/DialogType;->colorResId:I

    .line 19
    iput-object p11, p0, Lcom/iMe/fork/enums/DialogType;->multiPanelButtons:Ljava/util/List;

    .line 20
    iput-object p12, p0, Lcom/iMe/fork/enums/DialogType;->chatAttachAlertButtons:Ljava/util/List;

    return-void
.end method

.method public static final getDialogType(JLorg/telegram/messenger/MessagesController;)Lcom/iMe/fork/enums/DialogType;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iMe/fork/enums/DialogType$Companion;->getDialogType(JLorg/telegram/messenger/MessagesController;)Lcom/iMe/fork/enums/DialogType;

    move-result-object p0

    return-object p0
.end method

.method public static final getDialogType(Lorg/telegram/tgnet/TLObject;)Lcom/iMe/fork/enums/DialogType;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/DialogType$Companion;->getDialogType(Lorg/telegram/tgnet/TLObject;)Lcom/iMe/fork/enums/DialogType;

    move-result-object p0

    return-object p0
.end method

.method public static final mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/iMe/fork/enums/DialogType;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/DialogType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final mapEnumsToTitles(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/iMe/fork/enums/DialogType;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/DialogType$Companion;->mapEnumsToTitles(Ljava/util/Set;)Ljava/util/List;

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
            "Lcom/iMe/fork/enums/DialogType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/fork/enums/DialogType;->Companion:Lcom/iMe/fork/enums/DialogType$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/fork/enums/DialogType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/DialogType;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/DialogType;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/DialogType;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/DialogType;->$VALUES:[Lcom/iMe/fork/enums/DialogType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/DialogType;

    return-object v0
.end method


# virtual methods
.method public final getChatAttachAlertButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/fork/enums/ChatAttachAlertButton;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/iMe/fork/enums/DialogType;->chatAttachAlertButtons:Ljava/util/List;

    return-object v0
.end method

.method public final getColorResId()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/iMe/fork/enums/DialogType;->colorResId:I

    return v0
.end method

.method public final getIconResId()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/iMe/fork/enums/DialogType;->iconResId:I

    return v0
.end method

.method public final getMultiPanelButtons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/fork/enums/MultiPanelButton;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/iMe/fork/enums/DialogType;->multiPanelButtons:Ljava/util/List;

    return-object v0
.end method

.method public final getNameResId()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/iMe/fork/enums/DialogType;->nameResId:I

    return v0
.end method

.method public final getNoUnreadDialogsResId()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/iMe/fork/enums/DialogType;->noUnreadDialogsResId:I

    return v0
.end method

.method public final getPullToGoToNextUnreadDialogResId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/iMe/fork/enums/DialogType;->pullToGoToNextUnreadDialogResId:I

    return v0
.end method

.method public final getPullToGoToUnreadArchivedDialogsResId()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/iMe/fork/enums/DialogType;->pullToGoToUnreadArchivedDialogsResId:I

    return v0
.end method

.method public final getReleaseToGoToNextUnreadDialogResId()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/iMe/fork/enums/DialogType;->releaseToGoToNextUnreadDialogResId:I

    return v0
.end method

.method public final getReleaseToGoToUnreadArchivedDialogsResId()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/iMe/fork/enums/DialogType;->releaseToGoToUnreadArchivedDialogsResId:I

    return v0
.end method
