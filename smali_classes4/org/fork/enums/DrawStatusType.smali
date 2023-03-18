.class public final enum Lorg/fork/enums/DrawStatusType;
.super Ljava/lang/Enum;
.source "DrawStatusType.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/DrawStatusType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/DrawStatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/DrawStatusType;

.field public static final Companion:Lorg/fork/enums/DrawStatusType$Companion;

.field public static final enum LIVE_VIDEO:Lorg/fork/enums/DrawStatusType;

.field public static final enum MENTIONS:Lorg/fork/enums/DrawStatusType;

.field public static final enum ONLINE_USER:Lorg/fork/enums/DrawStatusType;

.field public static final enum REACTION:Lorg/fork/enums/DrawStatusType;

.field public static final enum UNREAD_COUNT_CHATS:Lorg/fork/enums/DrawStatusType;


# instance fields
.field private final nameResId:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/DrawStatusType;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/fork/enums/DrawStatusType;

    sget-object v1, Lorg/fork/enums/DrawStatusType;->UNREAD_COUNT_CHATS:Lorg/fork/enums/DrawStatusType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawStatusType;->MENTIONS:Lorg/fork/enums/DrawStatusType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawStatusType;->REACTION:Lorg/fork/enums/DrawStatusType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawStatusType;->ONLINE_USER:Lorg/fork/enums/DrawStatusType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/DrawStatusType;->LIVE_VIDEO:Lorg/fork/enums/DrawStatusType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lorg/fork/enums/DrawStatusType;

    sget v1, Lorg/telegram/messenger/R$string;->recent_chats_new_messages:I

    const-string v2, "UNREAD_COUNT_CHATS"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/DrawStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/DrawStatusType;->UNREAD_COUNT_CHATS:Lorg/fork/enums/DrawStatusType;

    .line 8
    new-instance v0, Lorg/fork/enums/DrawStatusType;

    sget v1, Lorg/telegram/messenger/R$string;->recent_chats_mentions:I

    const-string v2, "MENTIONS"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/DrawStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/DrawStatusType;->MENTIONS:Lorg/fork/enums/DrawStatusType;

    .line 9
    new-instance v0, Lorg/fork/enums/DrawStatusType;

    sget v1, Lorg/telegram/messenger/R$string;->recent_chats_reactions:I

    const-string v2, "REACTION"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/DrawStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/DrawStatusType;->REACTION:Lorg/fork/enums/DrawStatusType;

    .line 10
    new-instance v0, Lorg/fork/enums/DrawStatusType;

    sget v1, Lorg/telegram/messenger/R$string;->recent_chats_online_status:I

    const-string v2, "ONLINE_USER"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/DrawStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/DrawStatusType;->ONLINE_USER:Lorg/fork/enums/DrawStatusType;

    .line 11
    new-instance v0, Lorg/fork/enums/DrawStatusType;

    sget v1, Lorg/telegram/messenger/R$string;->recent_chats_live:I

    const-string v2, "LIVE_VIDEO"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/DrawStatusType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/DrawStatusType;->LIVE_VIDEO:Lorg/fork/enums/DrawStatusType;

    invoke-static {}, Lorg/fork/enums/DrawStatusType;->$values()[Lorg/fork/enums/DrawStatusType;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/DrawStatusType;->$VALUES:[Lorg/fork/enums/DrawStatusType;

    new-instance v0, Lorg/fork/enums/DrawStatusType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/enums/DrawStatusType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/DrawStatusType;->Companion:Lorg/fork/enums/DrawStatusType$Companion;

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

    iput p3, p0, Lorg/fork/enums/DrawStatusType;->nameResId:I

    return-void
.end method

.method public static final mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lorg/fork/enums/DrawStatusType;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/fork/enums/DrawStatusType;->Companion:Lorg/fork/enums/DrawStatusType$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/DrawStatusType$Companion;->mapEnumsToNames(Ljava/util/Set;)Ljava/util/Set;

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
            "Lorg/fork/enums/DrawStatusType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/fork/enums/DrawStatusType;->Companion:Lorg/fork/enums/DrawStatusType$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/DrawStatusType$Companion;->mapNamesToEnums(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/DrawStatusType;
    .locals 1

    const-class v0, Lorg/fork/enums/DrawStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/DrawStatusType;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/DrawStatusType;
    .locals 1

    sget-object v0, Lorg/fork/enums/DrawStatusType;->$VALUES:[Lorg/fork/enums/DrawStatusType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/DrawStatusType;

    return-object v0
.end method


# virtual methods
.method public final getNameResId()I
    .locals 1

    .line 6
    iget v0, p0, Lorg/fork/enums/DrawStatusType;->nameResId:I

    return v0
.end method
