.class public final enum Lcom/smedialink/ui/music/MusicTab;
.super Ljava/lang/Enum;
.source "MusicTab.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/music/MusicTab$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/ui/music/MusicTab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/ui/music/MusicTab;

.field public static final enum ALBUMS:Lcom/smedialink/ui/music/MusicTab;

.field public static final enum BOTS:Lcom/smedialink/ui/music/MusicTab;

.field public static final enum CHANNELS:Lcom/smedialink/ui/music/MusicTab;

.field public static final Companion:Lcom/smedialink/ui/music/MusicTab$Companion;

.field public static final enum DEVICE:Lcom/smedialink/ui/music/MusicTab;


# instance fields
.field private final emptyCellType:Lcom/smedialink/ui/dialogs/EmptyCellType;

.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/ui/music/MusicTab;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/smedialink/ui/music/MusicTab;

    sget-object v1, Lcom/smedialink/ui/music/MusicTab;->ALBUMS:Lcom/smedialink/ui/music/MusicTab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/music/MusicTab;->CHANNELS:Lcom/smedialink/ui/music/MusicTab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/music/MusicTab;->BOTS:Lcom/smedialink/ui/music/MusicTab;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/ui/music/MusicTab;->DEVICE:Lcom/smedialink/ui/music/MusicTab;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/smedialink/ui/music/MusicTab;

    sget v1, Lorg/telegram/messenger/R$string;->music_albums_tab:I

    sget-object v2, Lcom/smedialink/ui/dialogs/EmptyCellType;->MUSIC_ALBUMS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    const-string v3, "ALBUMS"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/smedialink/ui/music/MusicTab;-><init>(Ljava/lang/String;IILcom/smedialink/ui/dialogs/EmptyCellType;)V

    sput-object v0, Lcom/smedialink/ui/music/MusicTab;->ALBUMS:Lcom/smedialink/ui/music/MusicTab;

    .line 9
    new-instance v0, Lcom/smedialink/ui/music/MusicTab;

    sget v1, Lorg/telegram/messenger/R$string;->music_channels_tab:I

    sget-object v2, Lcom/smedialink/ui/dialogs/EmptyCellType;->MUSIC_CHANNELS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    const-string v3, "CHANNELS"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/smedialink/ui/music/MusicTab;-><init>(Ljava/lang/String;IILcom/smedialink/ui/dialogs/EmptyCellType;)V

    sput-object v0, Lcom/smedialink/ui/music/MusicTab;->CHANNELS:Lcom/smedialink/ui/music/MusicTab;

    .line 10
    new-instance v0, Lcom/smedialink/ui/music/MusicTab;

    sget v1, Lorg/telegram/messenger/R$string;->music_bots_tab:I

    sget-object v2, Lcom/smedialink/ui/dialogs/EmptyCellType;->MUSIC_BOTS:Lcom/smedialink/ui/dialogs/EmptyCellType;

    const-string v3, "BOTS"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/smedialink/ui/music/MusicTab;-><init>(Ljava/lang/String;IILcom/smedialink/ui/dialogs/EmptyCellType;)V

    sput-object v0, Lcom/smedialink/ui/music/MusicTab;->BOTS:Lcom/smedialink/ui/music/MusicTab;

    .line 11
    new-instance v0, Lcom/smedialink/ui/music/MusicTab;

    sget v1, Lorg/telegram/messenger/R$string;->music_device_tab:I

    sget-object v2, Lcom/smedialink/ui/dialogs/EmptyCellType;->MUSIC_DEVICE:Lcom/smedialink/ui/dialogs/EmptyCellType;

    const-string v3, "DEVICE"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/smedialink/ui/music/MusicTab;-><init>(Ljava/lang/String;IILcom/smedialink/ui/dialogs/EmptyCellType;)V

    sput-object v0, Lcom/smedialink/ui/music/MusicTab;->DEVICE:Lcom/smedialink/ui/music/MusicTab;

    invoke-static {}, Lcom/smedialink/ui/music/MusicTab;->$values()[Lcom/smedialink/ui/music/MusicTab;

    move-result-object v0

    sput-object v0, Lcom/smedialink/ui/music/MusicTab;->$VALUES:[Lcom/smedialink/ui/music/MusicTab;

    new-instance v0, Lcom/smedialink/ui/music/MusicTab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/music/MusicTab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/music/MusicTab;->Companion:Lcom/smedialink/ui/music/MusicTab$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/smedialink/ui/dialogs/EmptyCellType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/smedialink/ui/dialogs/EmptyCellType;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/smedialink/ui/music/MusicTab;->titleResId:I

    iput-object p4, p0, Lcom/smedialink/ui/music/MusicTab;->emptyCellType:Lcom/smedialink/ui/dialogs/EmptyCellType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/ui/music/MusicTab;
    .locals 1

    const-class v0, Lcom/smedialink/ui/music/MusicTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/ui/music/MusicTab;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/ui/music/MusicTab;
    .locals 1

    sget-object v0, Lcom/smedialink/ui/music/MusicTab;->$VALUES:[Lcom/smedialink/ui/music/MusicTab;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/ui/music/MusicTab;

    return-object v0
.end method


# virtual methods
.method public final getEmptyCellType()Lcom/smedialink/ui/dialogs/EmptyCellType;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/smedialink/ui/music/MusicTab;->emptyCellType:Lcom/smedialink/ui/dialogs/EmptyCellType;

    return-object v0
.end method

.method public final getTitleResId()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/smedialink/ui/music/MusicTab;->titleResId:I

    return v0
.end method
