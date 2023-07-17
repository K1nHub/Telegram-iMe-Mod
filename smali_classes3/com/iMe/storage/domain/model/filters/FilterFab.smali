.class public final enum Lcom/iMe/storage/domain/model/filters/FilterFab;
.super Ljava/lang/Enum;
.source "FilterFab.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;,
        Lcom/iMe/storage/domain/model/filters/FilterFab$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/storage/domain/model/filters/FilterFab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/storage/domain/model/filters/FilterFab;

.field public static final enum ALBUMS:Lcom/iMe/storage/domain/model/filters/FilterFab;

.field public static final enum ARCHIVE:Lcom/iMe/storage/domain/model/filters/FilterFab;

.field public static final enum CLEAR_DRAFTS:Lcom/iMe/storage/domain/model/filters/FilterFab;

.field public static final enum CLOUD:Lcom/iMe/storage/domain/model/filters/FilterFab;

.field public static final enum CONTACTS:Lcom/iMe/storage/domain/model/filters/FilterFab;

.field public static final enum CREATE_ALBUM:Lcom/iMe/storage/domain/model/filters/FilterFab;

.field public static final enum CREATE_CHAT:Lcom/iMe/storage/domain/model/filters/FilterFab;

.field public static final Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

.field public static final enum MARK_ALL_READ:Lcom/iMe/storage/domain/model/filters/FilterFab;

.field public static final enum MUSIC:Lcom/iMe/storage/domain/model/filters/FilterFab;

.field public static final enum WALLET:Lcom/iMe/storage/domain/model/filters/FilterFab;


# direct methods
.method private static final synthetic $values()[Lcom/iMe/storage/domain/model/filters/FilterFab;
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/iMe/storage/domain/model/filters/FilterFab;

    sget-object v1, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_CHAT:Lcom/iMe/storage/domain/model/filters/FilterFab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/filters/FilterFab;->ARCHIVE:Lcom/iMe/storage/domain/model/filters/FilterFab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/filters/FilterFab;->CLOUD:Lcom/iMe/storage/domain/model/filters/FilterFab;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/filters/FilterFab;->MARK_ALL_READ:Lcom/iMe/storage/domain/model/filters/FilterFab;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/filters/FilterFab;->WALLET:Lcom/iMe/storage/domain/model/filters/FilterFab;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/filters/FilterFab;->CONTACTS:Lcom/iMe/storage/domain/model/filters/FilterFab;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/filters/FilterFab;->MUSIC:Lcom/iMe/storage/domain/model/filters/FilterFab;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/filters/FilterFab;->ALBUMS:Lcom/iMe/storage/domain/model/filters/FilterFab;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_ALBUM:Lcom/iMe/storage/domain/model/filters/FilterFab;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/storage/domain/model/filters/FilterFab;->CLEAR_DRAFTS:Lcom/iMe/storage/domain/model/filters/FilterFab;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/iMe/storage/domain/model/filters/FilterFab;

    const-string v1, "CREATE_CHAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/filters/FilterFab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_CHAT:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 9
    new-instance v0, Lcom/iMe/storage/domain/model/filters/FilterFab;

    const-string v1, "ARCHIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/filters/FilterFab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->ARCHIVE:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 10
    new-instance v0, Lcom/iMe/storage/domain/model/filters/FilterFab;

    const-string v1, "CLOUD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/filters/FilterFab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->CLOUD:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 11
    new-instance v0, Lcom/iMe/storage/domain/model/filters/FilterFab;

    const-string v1, "MARK_ALL_READ"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/filters/FilterFab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->MARK_ALL_READ:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 12
    new-instance v0, Lcom/iMe/storage/domain/model/filters/FilterFab;

    const-string v1, "WALLET"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/filters/FilterFab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->WALLET:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 13
    new-instance v0, Lcom/iMe/storage/domain/model/filters/FilterFab;

    const-string v1, "CONTACTS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/filters/FilterFab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->CONTACTS:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 14
    new-instance v0, Lcom/iMe/storage/domain/model/filters/FilterFab;

    const-string v1, "MUSIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/filters/FilterFab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->MUSIC:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 15
    new-instance v0, Lcom/iMe/storage/domain/model/filters/FilterFab;

    const-string v1, "ALBUMS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/filters/FilterFab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->ALBUMS:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 16
    new-instance v0, Lcom/iMe/storage/domain/model/filters/FilterFab;

    const-string v1, "CREATE_ALBUM"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/filters/FilterFab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->CREATE_ALBUM:Lcom/iMe/storage/domain/model/filters/FilterFab;

    .line 17
    new-instance v0, Lcom/iMe/storage/domain/model/filters/FilterFab;

    const-string v1, "CLEAR_DRAFTS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/iMe/storage/domain/model/filters/FilterFab;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->CLEAR_DRAFTS:Lcom/iMe/storage/domain/model/filters/FilterFab;

    invoke-static {}, Lcom/iMe/storage/domain/model/filters/FilterFab;->$values()[Lcom/iMe/storage/domain/model/filters/FilterFab;

    move-result-object v0

    sput-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->$VALUES:[Lcom/iMe/storage/domain/model/filters/FilterFab;

    new-instance v0, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

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
            "Lcom/iMe/storage/domain/model/filters/FilterFab;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->Companion:Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;

    invoke-virtual {v0, p0}, Lcom/iMe/storage/domain/model/filters/FilterFab$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/storage/domain/model/filters/FilterFab;
    .locals 1

    const-class v0, Lcom/iMe/storage/domain/model/filters/FilterFab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/storage/domain/model/filters/FilterFab;

    return-object p0
.end method

.method public static values()[Lcom/iMe/storage/domain/model/filters/FilterFab;
    .locals 1

    sget-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab;->$VALUES:[Lcom/iMe/storage/domain/model/filters/FilterFab;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/storage/domain/model/filters/FilterFab;

    return-object v0
.end method


# virtual methods
.method public final getOldPreferenceId()Ljava/lang/String;
    .locals 2

    .line 19
    sget-object v0, Lcom/iMe/storage/domain/model/filters/FilterFab$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "fab_create"

    goto :goto_0

    :pswitch_0
    const-string v0, "fab_create_album"

    goto :goto_0

    :pswitch_1
    const-string v0, "fab_albums"

    goto :goto_0

    :pswitch_2
    const-string v0, "fab_music"

    goto :goto_0

    :pswitch_3
    const-string v0, "fab_contacts"

    goto :goto_0

    :pswitch_4
    const-string v0, "fab_wallet"

    goto :goto_0

    :pswitch_5
    const-string v0, "fab_mark_all_read"

    goto :goto_0

    :pswitch_6
    const-string v0, "fab_cloud"

    goto :goto_0

    :pswitch_7
    const-string v0, "fab_archive"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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
