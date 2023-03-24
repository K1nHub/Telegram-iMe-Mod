.class public final enum Lorg/fork/enums/MultiPanelButton;
.super Ljava/lang/Enum;
.source "MultiPanelButton.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/MultiPanelButton$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/MultiPanelButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/MultiPanelButton;

.field public static final enum ADD_TO_TOPIC:Lorg/fork/enums/MultiPanelButton;

.field public static final enum BOOKMARKS:Lorg/fork/enums/MultiPanelButton;

.field public static final enum CACHE:Lorg/fork/enums/MultiPanelButton;

.field public static final Companion:Lorg/fork/enums/MultiPanelButton$Companion;

.field public static final enum MEDIA:Lorg/fork/enums/MultiPanelButton;

.field public static final enum MEMBERS:Lorg/fork/enums/MultiPanelButton;

.field public static final enum MUTE:Lorg/fork/enums/MultiPanelButton;

.field public static final enum PINS:Lorg/fork/enums/MultiPanelButton;

.field public static final enum RECENT_ACTIONS:Lorg/fork/enums/MultiPanelButton;

.field public static final enum SEARCH:Lorg/fork/enums/MultiPanelButton;

.field public static final enum STOP_BOT:Lorg/fork/enums/MultiPanelButton;

.field public static final enum SUBSCRIBERS:Lorg/fork/enums/MultiPanelButton;


# instance fields
.field private final iconId:I

.field private final isEnabledByDefault:Z

.field private final porterDuffMode:Landroid/graphics/PorterDuff$Mode;

.field private final titleId:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/MultiPanelButton;
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Lorg/fork/enums/MultiPanelButton;

    sget-object v1, Lorg/fork/enums/MultiPanelButton;->MUTE:Lorg/fork/enums/MultiPanelButton;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/MultiPanelButton;->SEARCH:Lorg/fork/enums/MultiPanelButton;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/MultiPanelButton;->MEMBERS:Lorg/fork/enums/MultiPanelButton;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/MultiPanelButton;->SUBSCRIBERS:Lorg/fork/enums/MultiPanelButton;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/MultiPanelButton;->MEDIA:Lorg/fork/enums/MultiPanelButton;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/MultiPanelButton;->RECENT_ACTIONS:Lorg/fork/enums/MultiPanelButton;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/MultiPanelButton;->CACHE:Lorg/fork/enums/MultiPanelButton;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/MultiPanelButton;->STOP_BOT:Lorg/fork/enums/MultiPanelButton;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/MultiPanelButton;->ADD_TO_TOPIC:Lorg/fork/enums/MultiPanelButton;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/MultiPanelButton;->BOOKMARKS:Lorg/fork/enums/MultiPanelButton;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/MultiPanelButton;->PINS:Lorg/fork/enums/MultiPanelButton;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 20

    .line 14
    new-instance v9, Lorg/fork/enums/MultiPanelButton;

    .line 15
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_mute:I

    .line 16
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 17
    sget v5, Lorg/telegram/messenger/R$string;->multi_panel_settings_button_mute_item_title:I

    const-string v1, "MUTE"

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v0, v9

    .line 14
    invoke-direct/range {v0 .. v8}, Lorg/fork/enums/MultiPanelButton;-><init>(Ljava/lang/String;IILandroid/graphics/PorterDuff$Mode;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v9, Lorg/fork/enums/MultiPanelButton;->MUTE:Lorg/fork/enums/MultiPanelButton;

    .line 19
    new-instance v0, Lorg/fork/enums/MultiPanelButton;

    .line 20
    sget v13, Lorg/telegram/messenger/R$drawable;->msg_search:I

    .line 21
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 22
    sget v15, Lorg/telegram/messenger/R$string;->multi_panel_settings_button_search_item_title:I

    const-string v11, "SEARCH"

    const/4 v12, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object v10, v0

    .line 19
    invoke-direct/range {v10 .. v18}, Lorg/fork/enums/MultiPanelButton;-><init>(Ljava/lang/String;IILandroid/graphics/PorterDuff$Mode;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/MultiPanelButton;->SEARCH:Lorg/fork/enums/MultiPanelButton;

    .line 24
    new-instance v0, Lorg/fork/enums/MultiPanelButton;

    .line 25
    sget v10, Lorg/telegram/messenger/R$drawable;->fork_ic_contacts_24:I

    .line 26
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 27
    sget v6, Lorg/telegram/messenger/R$string;->multi_panel_settings_button_members_item_title:I

    const-string v2, "MEMBERS"

    const/4 v3, 0x2

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move v4, v10

    .line 24
    invoke-direct/range {v1 .. v9}, Lorg/fork/enums/MultiPanelButton;-><init>(Ljava/lang/String;IILandroid/graphics/PorterDuff$Mode;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/MultiPanelButton;->MEMBERS:Lorg/fork/enums/MultiPanelButton;

    .line 29
    new-instance v0, Lorg/fork/enums/MultiPanelButton;

    .line 31
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 32
    sget v6, Lorg/telegram/messenger/R$string;->multi_panel_settings_button_subscribers_item_title:I

    const-string v2, "SUBSCRIBERS"

    const/4 v3, 0x3

    move-object v1, v0

    .line 29
    invoke-direct/range {v1 .. v9}, Lorg/fork/enums/MultiPanelButton;-><init>(Ljava/lang/String;IILandroid/graphics/PorterDuff$Mode;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/MultiPanelButton;->SUBSCRIBERS:Lorg/fork/enums/MultiPanelButton;

    .line 34
    new-instance v0, Lorg/fork/enums/MultiPanelButton;

    .line 35
    sget v14, Lorg/telegram/messenger/R$drawable;->msg_photos:I

    .line 36
    sget-object v15, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 37
    sget v16, Lorg/telegram/messenger/R$string;->multi_panel_settings_button_shared_content_item_title:I

    const-string v12, "MEDIA"

    const/4 v13, 0x4

    const/16 v17, 0x0

    const/16 v18, 0x8

    const/16 v19, 0x0

    move-object v11, v0

    .line 34
    invoke-direct/range {v11 .. v19}, Lorg/fork/enums/MultiPanelButton;-><init>(Ljava/lang/String;IILandroid/graphics/PorterDuff$Mode;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/MultiPanelButton;->MEDIA:Lorg/fork/enums/MultiPanelButton;

    .line 39
    new-instance v0, Lorg/fork/enums/MultiPanelButton;

    .line 40
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_log:I

    .line 41
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 42
    sget v6, Lorg/telegram/messenger/R$string;->multi_panel_settings_button_recent_actions_item_title:I

    const-string v2, "RECENT_ACTIONS"

    const/4 v3, 0x5

    move-object v1, v0

    .line 39
    invoke-direct/range {v1 .. v9}, Lorg/fork/enums/MultiPanelButton;-><init>(Ljava/lang/String;IILandroid/graphics/PorterDuff$Mode;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/MultiPanelButton;->RECENT_ACTIONS:Lorg/fork/enums/MultiPanelButton;

    .line 44
    new-instance v0, Lorg/fork/enums/MultiPanelButton;

    .line 45
    sget v13, Lorg/telegram/messenger/R$drawable;->msg2_data:I

    .line 46
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 47
    sget v15, Lorg/telegram/messenger/R$string;->multi_panel_settings_button_cache_item_title:I

    const-string v11, "CACHE"

    const/4 v12, 0x6

    const/16 v16, 0x0

    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object v10, v0

    .line 44
    invoke-direct/range {v10 .. v18}, Lorg/fork/enums/MultiPanelButton;-><init>(Ljava/lang/String;IILandroid/graphics/PorterDuff$Mode;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/MultiPanelButton;->CACHE:Lorg/fork/enums/MultiPanelButton;

    .line 49
    new-instance v0, Lorg/fork/enums/MultiPanelButton;

    .line 50
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_block:I

    .line 51
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 52
    sget v6, Lorg/telegram/messenger/R$string;->multi_panel_settings_button_stop_bot_item_title:I

    const-string v2, "STOP_BOT"

    const/4 v3, 0x7

    move-object v1, v0

    .line 49
    invoke-direct/range {v1 .. v9}, Lorg/fork/enums/MultiPanelButton;-><init>(Ljava/lang/String;IILandroid/graphics/PorterDuff$Mode;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/MultiPanelButton;->STOP_BOT:Lorg/fork/enums/MultiPanelButton;

    .line 54
    new-instance v0, Lorg/fork/enums/MultiPanelButton;

    .line 55
    sget v13, Lorg/telegram/messenger/R$drawable;->fork_topic_select_24:I

    .line 56
    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 57
    sget v15, Lorg/telegram/messenger/R$string;->topics_select:I

    const-string v11, "ADD_TO_TOPIC"

    const/16 v12, 0x8

    move-object v10, v0

    .line 54
    invoke-direct/range {v10 .. v16}, Lorg/fork/enums/MultiPanelButton;-><init>(Ljava/lang/String;IILandroid/graphics/PorterDuff$Mode;IZ)V

    sput-object v0, Lorg/fork/enums/MultiPanelButton;->ADD_TO_TOPIC:Lorg/fork/enums/MultiPanelButton;

    .line 60
    new-instance v0, Lorg/fork/enums/MultiPanelButton;

    .line 61
    sget v4, Lorg/telegram/messenger/R$drawable;->msg_saved:I

    .line 62
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 63
    sget v6, Lorg/telegram/messenger/R$string;->chat_bookmarks:I

    const-string v2, "BOOKMARKS"

    const/16 v3, 0x9

    const/4 v7, 0x1

    move-object v1, v0

    .line 60
    invoke-direct/range {v1 .. v7}, Lorg/fork/enums/MultiPanelButton;-><init>(Ljava/lang/String;IILandroid/graphics/PorterDuff$Mode;IZ)V

    sput-object v0, Lorg/fork/enums/MultiPanelButton;->BOOKMARKS:Lorg/fork/enums/MultiPanelButton;

    .line 66
    new-instance v0, Lorg/fork/enums/MultiPanelButton;

    .line 67
    sget v11, Lorg/telegram/messenger/R$drawable;->msg_pin:I

    .line 68
    sget-object v12, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 69
    sget v13, Lorg/telegram/messenger/R$string;->multi_panel_settings_button_pins_item_title:I

    const-string v9, "PINS"

    const/16 v10, 0xa

    const/4 v14, 0x0

    move-object v8, v0

    .line 66
    invoke-direct/range {v8 .. v14}, Lorg/fork/enums/MultiPanelButton;-><init>(Ljava/lang/String;IILandroid/graphics/PorterDuff$Mode;IZ)V

    sput-object v0, Lorg/fork/enums/MultiPanelButton;->PINS:Lorg/fork/enums/MultiPanelButton;

    invoke-static {}, Lorg/fork/enums/MultiPanelButton;->$values()[Lorg/fork/enums/MultiPanelButton;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/MultiPanelButton;->$VALUES:[Lorg/fork/enums/MultiPanelButton;

    new-instance v0, Lorg/fork/enums/MultiPanelButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/enums/MultiPanelButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/MultiPanelButton;->Companion:Lorg/fork/enums/MultiPanelButton$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILandroid/graphics/PorterDuff$Mode;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/PorterDuff$Mode;",
            "IZ)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lorg/fork/enums/MultiPanelButton;->iconId:I

    .line 10
    iput-object p4, p0, Lorg/fork/enums/MultiPanelButton;->porterDuffMode:Landroid/graphics/PorterDuff$Mode;

    .line 11
    iput p5, p0, Lorg/fork/enums/MultiPanelButton;->titleId:I

    .line 12
    iput-boolean p6, p0, Lorg/fork/enums/MultiPanelButton;->isEnabledByDefault:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILandroid/graphics/PorterDuff$Mode;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    const/4 p6, 0x1

    :cond_0
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lorg/fork/enums/MultiPanelButton;-><init>(Ljava/lang/String;IILandroid/graphics/PorterDuff$Mode;IZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/MultiPanelButton;
    .locals 1

    const-class v0, Lorg/fork/enums/MultiPanelButton;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/MultiPanelButton;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/MultiPanelButton;
    .locals 1

    sget-object v0, Lorg/fork/enums/MultiPanelButton;->$VALUES:[Lorg/fork/enums/MultiPanelButton;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/MultiPanelButton;

    return-object v0
.end method


# virtual methods
.method public final getIconId()I
    .locals 1

    .line 9
    iget v0, p0, Lorg/fork/enums/MultiPanelButton;->iconId:I

    return v0
.end method

.method public final getPorterDuffMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 10
    iget-object v0, p0, Lorg/fork/enums/MultiPanelButton;->porterDuffMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public final getTitleId()I
    .locals 1

    .line 11
    iget v0, p0, Lorg/fork/enums/MultiPanelButton;->titleId:I

    return v0
.end method

.method public final isEnabledByDefault()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lorg/fork/enums/MultiPanelButton;->isEnabledByDefault:Z

    return v0
.end method
