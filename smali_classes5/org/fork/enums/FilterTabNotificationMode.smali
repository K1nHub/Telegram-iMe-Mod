.class public final enum Lorg/fork/enums/FilterTabNotificationMode;
.super Ljava/lang/Enum;
.source "FilterTabNotificationMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/FilterTabNotificationMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/FilterTabNotificationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/FilterTabNotificationMode;

.field public static final Companion:Lorg/fork/enums/FilterTabNotificationMode$Companion;

.field public static final enum HIDDEN:Lorg/fork/enums/FilterTabNotificationMode;

.field public static final enum NUMBER:Lorg/fork/enums/FilterTabNotificationMode;

.field public static final enum POINT:Lorg/fork/enums/FilterTabNotificationMode;


# instance fields
.field private final titleResId:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/FilterTabNotificationMode;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/fork/enums/FilterTabNotificationMode;

    sget-object v1, Lorg/fork/enums/FilterTabNotificationMode;->HIDDEN:Lorg/fork/enums/FilterTabNotificationMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/FilterTabNotificationMode;->NUMBER:Lorg/fork/enums/FilterTabNotificationMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/FilterTabNotificationMode;->POINT:Lorg/fork/enums/FilterTabNotificationMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lorg/fork/enums/FilterTabNotificationMode;

    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_notification_mode_value_hidden:I

    const-string v2, "HIDDEN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/FilterTabNotificationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/FilterTabNotificationMode;->HIDDEN:Lorg/fork/enums/FilterTabNotificationMode;

    .line 7
    new-instance v0, Lorg/fork/enums/FilterTabNotificationMode;

    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_notification_mode_value_default:I

    const-string v2, "NUMBER"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/FilterTabNotificationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/FilterTabNotificationMode;->NUMBER:Lorg/fork/enums/FilterTabNotificationMode;

    .line 8
    new-instance v0, Lorg/fork/enums/FilterTabNotificationMode;

    sget v1, Lorg/telegram/messenger/R$string;->folder_tabs_notification_mode_value_points:I

    const-string v2, "POINT"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lorg/fork/enums/FilterTabNotificationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/fork/enums/FilterTabNotificationMode;->POINT:Lorg/fork/enums/FilterTabNotificationMode;

    invoke-static {}, Lorg/fork/enums/FilterTabNotificationMode;->$values()[Lorg/fork/enums/FilterTabNotificationMode;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/FilterTabNotificationMode;->$VALUES:[Lorg/fork/enums/FilterTabNotificationMode;

    new-instance v0, Lorg/fork/enums/FilterTabNotificationMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/enums/FilterTabNotificationMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/FilterTabNotificationMode;->Companion:Lorg/fork/enums/FilterTabNotificationMode$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/fork/enums/FilterTabNotificationMode;->titleResId:I

    return-void
.end method

.method public static final mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/FilterTabNotificationMode;
    .locals 1

    sget-object v0, Lorg/fork/enums/FilterTabNotificationMode;->Companion:Lorg/fork/enums/FilterTabNotificationMode$Companion;

    invoke-virtual {v0, p0}, Lorg/fork/enums/FilterTabNotificationMode$Companion;->mapNameToEnum(Ljava/lang/String;)Lorg/fork/enums/FilterTabNotificationMode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/FilterTabNotificationMode;
    .locals 1

    const-class v0, Lorg/fork/enums/FilterTabNotificationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/FilterTabNotificationMode;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/FilterTabNotificationMode;
    .locals 1

    sget-object v0, Lorg/fork/enums/FilterTabNotificationMode;->$VALUES:[Lorg/fork/enums/FilterTabNotificationMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/FilterTabNotificationMode;

    return-object v0
.end method


# virtual methods
.method public final getTitleResId()I
    .locals 1

    .line 5
    iget v0, p0, Lorg/fork/enums/FilterTabNotificationMode;->titleResId:I

    return v0
.end method
