.class public final enum Lcom/smedialink/ui/dialogs/EmptyCellType;
.super Ljava/lang/Enum;
.source "EmptyCellType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/dialogs/EmptyCellType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/ui/dialogs/EmptyCellType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/ui/dialogs/EmptyCellType;

.field public static final enum ALBUMS:Lcom/smedialink/ui/dialogs/EmptyCellType;

.field public static final enum ARCHIVE:Lcom/smedialink/ui/dialogs/EmptyCellType;

.field public static final enum ARCHIVE_ALBUMS:Lcom/smedialink/ui/dialogs/EmptyCellType;

.field public static final enum BOOKMARKS:Lcom/smedialink/ui/dialogs/EmptyCellType;

.field public static final Companion:Lcom/smedialink/ui/dialogs/EmptyCellType$Companion;

.field public static final enum DRAFTS:Lcom/smedialink/ui/dialogs/EmptyCellType;

.field public static final FORK_TYPE_EXTRA:I = 0x64

.field public static final enum MUSIC_ALBUMS:Lcom/smedialink/ui/dialogs/EmptyCellType;

.field public static final enum MUSIC_BOTS:Lcom/smedialink/ui/dialogs/EmptyCellType;

.field public static final enum MUSIC_CHANNELS:Lcom/smedialink/ui/dialogs/EmptyCellType;

.field public static final enum MUSIC_DEVICE:Lcom/smedialink/ui/dialogs/EmptyCellType;


# instance fields
.field private final iconResId:I

.field private final subtitleResId:I

.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/ui/dialogs/EmptyCellType;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/smedialink/ui/dialogs/EmptyCellType;

    sget-object v1, Lcom/smedialink/ui/dialogs/EmptyCellType;->ARCHIVE_ALBUMS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/dialogs/EmptyCellType;->ARCHIVE:Lcom/smedialink/ui/dialogs/EmptyCellType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/dialogs/EmptyCellType;->ALBUMS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/dialogs/EmptyCellType;->MUSIC_ALBUMS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/dialogs/EmptyCellType;->MUSIC_CHANNELS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/dialogs/EmptyCellType;->MUSIC_BOTS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/dialogs/EmptyCellType;->MUSIC_DEVICE:Lcom/smedialink/ui/dialogs/EmptyCellType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/dialogs/EmptyCellType;->BOOKMARKS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/dialogs/EmptyCellType;->DRAFTS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .line 8
    new-instance v6, Lcom/smedialink/ui/dialogs/EmptyCellType;

    sget v7, Lorg/telegram/messenger/R$raw;->filter_no_chats:I

    sget v8, Lorg/telegram/messenger/R$string;->cloud_albums_empty_title:I

    sget v5, Lorg/telegram/messenger/R$string;->cloud_albums_empty_subtitle_archibe:I

    const-string v1, "ARCHIVE_ALBUMS"

    const/4 v2, 0x0

    move-object v0, v6

    move v3, v7

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/dialogs/EmptyCellType;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/smedialink/ui/dialogs/EmptyCellType;->ARCHIVE_ALBUMS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    .line 9
    new-instance v6, Lcom/smedialink/ui/dialogs/EmptyCellType;

    sget v4, Lorg/telegram/messenger/R$string;->archive_empty_title:I

    sget v5, Lorg/telegram/messenger/R$string;->archive_empty_subtitle:I

    const-string v1, "ARCHIVE"

    const/4 v2, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/dialogs/EmptyCellType;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/smedialink/ui/dialogs/EmptyCellType;->ARCHIVE:Lcom/smedialink/ui/dialogs/EmptyCellType;

    .line 10
    new-instance v6, Lcom/smedialink/ui/dialogs/EmptyCellType;

    sget v5, Lorg/telegram/messenger/R$string;->cloud_albums_empty_subtitle:I

    const-string v1, "ALBUMS"

    const/4 v2, 0x2

    move-object v0, v6

    move v4, v8

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/dialogs/EmptyCellType;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/smedialink/ui/dialogs/EmptyCellType;->ALBUMS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    .line 11
    new-instance v6, Lcom/smedialink/ui/dialogs/EmptyCellType;

    sget v4, Lorg/telegram/messenger/R$string;->music_albums_empty_title:I

    sget v5, Lorg/telegram/messenger/R$string;->music_albums_empty_subtitle:I

    const-string v1, "MUSIC_ALBUMS"

    const/4 v2, 0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/dialogs/EmptyCellType;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/smedialink/ui/dialogs/EmptyCellType;->MUSIC_ALBUMS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    .line 12
    new-instance v6, Lcom/smedialink/ui/dialogs/EmptyCellType;

    sget v4, Lorg/telegram/messenger/R$string;->music_channels_empty_title:I

    sget v5, Lorg/telegram/messenger/R$string;->music_channels_empty_subtitle:I

    const-string v1, "MUSIC_CHANNELS"

    const/4 v2, 0x4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/dialogs/EmptyCellType;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/smedialink/ui/dialogs/EmptyCellType;->MUSIC_CHANNELS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    .line 13
    new-instance v6, Lcom/smedialink/ui/dialogs/EmptyCellType;

    sget v4, Lorg/telegram/messenger/R$string;->music_bots_empty_title:I

    sget v5, Lorg/telegram/messenger/R$string;->music_bots_empty_subtitle:I

    const-string v1, "MUSIC_BOTS"

    const/4 v2, 0x5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/dialogs/EmptyCellType;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/smedialink/ui/dialogs/EmptyCellType;->MUSIC_BOTS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    .line 14
    new-instance v6, Lcom/smedialink/ui/dialogs/EmptyCellType;

    sget v4, Lorg/telegram/messenger/R$string;->music_device_empty_title:I

    sget v5, Lorg/telegram/messenger/R$string;->music_device_empty_subtitle:I

    const-string v1, "MUSIC_DEVICE"

    const/4 v2, 0x6

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/dialogs/EmptyCellType;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/smedialink/ui/dialogs/EmptyCellType;->MUSIC_DEVICE:Lcom/smedialink/ui/dialogs/EmptyCellType;

    .line 15
    new-instance v6, Lcom/smedialink/ui/dialogs/EmptyCellType;

    sget v4, Lorg/telegram/messenger/R$string;->chat_bookmarks_empty:I

    sget v5, Lorg/telegram/messenger/R$string;->chat_bookmarks_empty_subtitle:I

    const-string v1, "BOOKMARKS"

    const/4 v2, 0x7

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/dialogs/EmptyCellType;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/smedialink/ui/dialogs/EmptyCellType;->BOOKMARKS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    .line 16
    new-instance v6, Lcom/smedialink/ui/dialogs/EmptyCellType;

    sget v4, Lorg/telegram/messenger/R$string;->chat_drafts_empty:I

    sget v5, Lorg/telegram/messenger/R$string;->chat_drafts_empty_subtitle:I

    const-string v1, "DRAFTS"

    const/16 v2, 0x8

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/smedialink/ui/dialogs/EmptyCellType;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/smedialink/ui/dialogs/EmptyCellType;->DRAFTS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    invoke-static {}, Lcom/smedialink/ui/dialogs/EmptyCellType;->$values()[Lcom/smedialink/ui/dialogs/EmptyCellType;

    move-result-object v0

    sput-object v0, Lcom/smedialink/ui/dialogs/EmptyCellType;->$VALUES:[Lcom/smedialink/ui/dialogs/EmptyCellType;

    new-instance v0, Lcom/smedialink/ui/dialogs/EmptyCellType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/dialogs/EmptyCellType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/dialogs/EmptyCellType;->Companion:Lcom/smedialink/ui/dialogs/EmptyCellType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/smedialink/ui/dialogs/EmptyCellType;->iconResId:I

    iput p4, p0, Lcom/smedialink/ui/dialogs/EmptyCellType;->titleResId:I

    iput p5, p0, Lcom/smedialink/ui/dialogs/EmptyCellType;->subtitleResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/ui/dialogs/EmptyCellType;
    .locals 1

    const-class v0, Lcom/smedialink/ui/dialogs/EmptyCellType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/dialogs/EmptyCellType;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/ui/dialogs/EmptyCellType;
    .locals 1

    sget-object v0, Lcom/smedialink/ui/dialogs/EmptyCellType;->$VALUES:[Lcom/smedialink/ui/dialogs/EmptyCellType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/ui/dialogs/EmptyCellType;

    return-object v0
.end method


# virtual methods
.method public final getIconResId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/ui/dialogs/EmptyCellType;->iconResId:I

    return v0
.end method

.method public final getSubtitleResId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/ui/dialogs/EmptyCellType;->subtitleResId:I

    return v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/ui/dialogs/EmptyCellType;->titleResId:I

    return v0
.end method

.method public final id()I
    .locals 1

    .line 18
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x64

    return v0
.end method
