.class public final enum Lorg/fork/enums/Interval;
.super Ljava/lang/Enum;
.source "Interval.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/fork/enums/Interval$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/fork/enums/Interval;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/fork/enums/Interval;

.field public static final Companion:Lorg/fork/enums/Interval$Companion;

.field public static final enum EVERY_DAY:Lorg/fork/enums/Interval;

.field public static final enum EVERY_MONTH:Lorg/fork/enums/Interval;

.field public static final enum EVERY_WEEK:Lorg/fork/enums/Interval;


# instance fields
.field private final days:I

.field private final nameResId:I


# direct methods
.method private static final synthetic $values()[Lorg/fork/enums/Interval;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/fork/enums/Interval;

    sget-object v1, Lorg/fork/enums/Interval;->EVERY_DAY:Lorg/fork/enums/Interval;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/Interval;->EVERY_WEEK:Lorg/fork/enums/Interval;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/fork/enums/Interval;->EVERY_MONTH:Lorg/fork/enums/Interval;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lorg/fork/enums/Interval;

    sget v1, Lorg/telegram/messenger/R$string;->backup_settings_interval_every_day:I

    const-string v2, "EVERY_DAY"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/fork/enums/Interval;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/Interval;->EVERY_DAY:Lorg/fork/enums/Interval;

    .line 8
    new-instance v0, Lorg/fork/enums/Interval;

    sget v1, Lorg/telegram/messenger/R$string;->backup_settings_interval_every_week:I

    const-string v2, "EVERY_WEEK"

    const/4 v3, 0x7

    invoke-direct {v0, v2, v4, v1, v3}, Lorg/fork/enums/Interval;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/Interval;->EVERY_WEEK:Lorg/fork/enums/Interval;

    .line 9
    new-instance v0, Lorg/fork/enums/Interval;

    sget v1, Lorg/telegram/messenger/R$string;->backup_settings_interval_every_month:I

    const-string v2, "EVERY_MONTH"

    const/4 v3, 0x2

    const/16 v4, 0x1e

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/fork/enums/Interval;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/fork/enums/Interval;->EVERY_MONTH:Lorg/fork/enums/Interval;

    invoke-static {}, Lorg/fork/enums/Interval;->$values()[Lorg/fork/enums/Interval;

    move-result-object v0

    sput-object v0, Lorg/fork/enums/Interval;->$VALUES:[Lorg/fork/enums/Interval;

    new-instance v0, Lorg/fork/enums/Interval$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/fork/enums/Interval$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/fork/enums/Interval;->Companion:Lorg/fork/enums/Interval$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/fork/enums/Interval;->nameResId:I

    iput p4, p0, Lorg/fork/enums/Interval;->days:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/fork/enums/Interval;
    .locals 1

    const-class v0, Lorg/fork/enums/Interval;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/fork/enums/Interval;

    return-object p0
.end method

.method public static values()[Lorg/fork/enums/Interval;
    .locals 1

    sget-object v0, Lorg/fork/enums/Interval;->$VALUES:[Lorg/fork/enums/Interval;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/fork/enums/Interval;

    return-object v0
.end method


# virtual methods
.method public final getDays()I
    .locals 1

    .line 6
    iget v0, p0, Lorg/fork/enums/Interval;->days:I

    return v0
.end method

.method public final getNameResId()I
    .locals 1

    .line 6
    iget v0, p0, Lorg/fork/enums/Interval;->nameResId:I

    return v0
.end method
