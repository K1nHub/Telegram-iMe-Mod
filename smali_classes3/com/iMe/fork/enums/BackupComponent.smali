.class public final enum Lcom/iMe/fork/enums/BackupComponent;
.super Ljava/lang/Enum;
.source "BackupComponent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/enums/BackupComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum ALBUMS:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum BOOKMARKS:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum FILTERS:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum HIDDEN_CHATS:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum MULTI_PANEL:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum MUSIC:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum RECENT_CHATS:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum SORTING:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum TEMPLATES:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum TOOLS:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum TOPICS:Lcom/iMe/fork/enums/BackupComponent;

.field public static final enum TRANSLATION:Lcom/iMe/fork/enums/BackupComponent;


# instance fields
.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/enums/BackupComponent;
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/iMe/fork/enums/BackupComponent;

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->TOOLS:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->MULTI_PANEL:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->FILTERS:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->SORTING:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->ALBUMS:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->BOOKMARKS:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->MUSIC:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->TRANSLATION:Lcom/iMe/fork/enums/BackupComponent;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->TEMPLATES:Lcom/iMe/fork/enums/BackupComponent;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->TOPICS:Lcom/iMe/fork/enums/BackupComponent;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->HIDDEN_CHATS:Lcom/iMe/fork/enums/BackupComponent;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/enums/BackupComponent;->RECENT_CHATS:Lcom/iMe/fork/enums/BackupComponent;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    sget v1, Lorg/telegram/messenger/R$string;->settings_tools:I

    const-string v2, "TOOLS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->TOOLS:Lcom/iMe/fork/enums/BackupComponent;

    .line 8
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    sget v1, Lorg/telegram/messenger/R$string;->backup_component_multi_panel:I

    const-string v2, "MULTI_PANEL"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->MULTI_PANEL:Lcom/iMe/fork/enums/BackupComponent;

    .line 9
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    sget v1, Lorg/telegram/messenger/R$string;->backup_component_filters:I

    const-string v2, "FILTERS"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->FILTERS:Lcom/iMe/fork/enums/BackupComponent;

    .line 10
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    sget v1, Lorg/telegram/messenger/R$string;->backup_component_sorting:I

    const-string v2, "SORTING"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->SORTING:Lcom/iMe/fork/enums/BackupComponent;

    .line 11
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    sget v1, Lorg/telegram/messenger/R$string;->backup_component_albums:I

    const-string v2, "ALBUMS"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->ALBUMS:Lcom/iMe/fork/enums/BackupComponent;

    .line 12
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    sget v1, Lorg/telegram/messenger/R$string;->chat_bookmarks:I

    const-string v2, "BOOKMARKS"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->BOOKMARKS:Lcom/iMe/fork/enums/BackupComponent;

    .line 13
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    sget v1, Lorg/telegram/messenger/R$string;->cloud_filter_music:I

    const-string v2, "MUSIC"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->MUSIC:Lcom/iMe/fork/enums/BackupComponent;

    .line 14
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    sget v1, Lorg/telegram/messenger/R$string;->backup_component_translation:I

    const-string v2, "TRANSLATION"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->TRANSLATION:Lcom/iMe/fork/enums/BackupComponent;

    .line 15
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    sget v1, Lorg/telegram/messenger/R$string;->chat_templates:I

    const-string v2, "TEMPLATES"

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->TEMPLATES:Lcom/iMe/fork/enums/BackupComponent;

    .line 16
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    sget v1, Lorg/telegram/messenger/R$string;->backup_component_topics:I

    const-string v2, "TOPICS"

    const/16 v3, 0x9

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->TOPICS:Lcom/iMe/fork/enums/BackupComponent;

    .line 17
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    sget v1, Lorg/telegram/messenger/R$string;->hidden_chats_title:I

    const-string v2, "HIDDEN_CHATS"

    const/16 v3, 0xa

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->HIDDEN_CHATS:Lcom/iMe/fork/enums/BackupComponent;

    .line 18
    new-instance v0, Lcom/iMe/fork/enums/BackupComponent;

    sget v1, Lorg/telegram/messenger/R$string;->settings_interface_recent_chats:I

    const-string v2, "RECENT_CHATS"

    const/16 v3, 0xb

    invoke-direct {v0, v2, v3, v1}, Lcom/iMe/fork/enums/BackupComponent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->RECENT_CHATS:Lcom/iMe/fork/enums/BackupComponent;

    invoke-static {}, Lcom/iMe/fork/enums/BackupComponent;->$values()[Lcom/iMe/fork/enums/BackupComponent;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/enums/BackupComponent;->$VALUES:[Lcom/iMe/fork/enums/BackupComponent;

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

    iput p3, p0, Lcom/iMe/fork/enums/BackupComponent;->titleResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/enums/BackupComponent;
    .locals 1

    const-class v0, Lcom/iMe/fork/enums/BackupComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/enums/BackupComponent;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/enums/BackupComponent;
    .locals 1

    sget-object v0, Lcom/iMe/fork/enums/BackupComponent;->$VALUES:[Lcom/iMe/fork/enums/BackupComponent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/enums/BackupComponent;

    return-object v0
.end method


# virtual methods
.method public final getTitleResId()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/iMe/fork/enums/BackupComponent;->titleResId:I

    return v0
.end method
