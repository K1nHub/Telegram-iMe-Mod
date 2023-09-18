.class final enum Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;
.super Ljava/lang/Enum;
.source "DeleteServiceMessagesBottomSheet.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ErasingPeriod"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

.field public static final enum ALL_TIME:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

.field public static final Companion:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod$Companion;

.field public static final enum DAY:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

.field public static final enum MONTH:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

.field public static final enum WEEK:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

.field public static final enum YEAR:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;


# instance fields
.field private final code:I

.field private final period:I

.field private final stringRes:I


# direct methods
.method private static final synthetic $values()[Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    sget-object v1, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->DAY:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->WEEK:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->MONTH:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->YEAR:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->ALL_TIME:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 579
    new-instance v6, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    .line 581
    sget-object v0, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v0}, Lj$/time/temporal/ChronoUnit;->getDuration()Lj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    const/16 v2, 0x3e8

    int-to-long v7, v2

    div-long/2addr v0, v7

    long-to-int v4, v0

    .line 582
    sget v5, Lorg/telegram/messenger/R$string;->period_last_day:I

    const-string v1, "DAY"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    .line 579
    invoke-direct/range {v0 .. v5}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->DAY:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    .line 584
    new-instance v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    .line 586
    sget-object v1, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoUnit;->getDuration()Lj$/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    div-long/2addr v1, v7

    long-to-int v13, v1

    .line 587
    sget v14, Lorg/telegram/messenger/R$string;->period_last_week:I

    const-string v10, "WEEK"

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v9, v0

    .line 584
    invoke-direct/range {v9 .. v14}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->WEEK:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    .line 589
    new-instance v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    .line 591
    sget-object v1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoUnit;->getDuration()Lj$/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    div-long/2addr v1, v7

    long-to-int v5, v1

    .line 592
    sget v6, Lorg/telegram/messenger/R$string;->period_last_month:I

    const-string v2, "MONTH"

    const/4 v3, 0x2

    const/4 v4, 0x2

    move-object v1, v0

    .line 589
    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->MONTH:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    .line 594
    new-instance v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    .line 596
    sget-object v1, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Lj$/time/temporal/ChronoUnit;->getDuration()Lj$/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    div-long/2addr v1, v7

    long-to-int v13, v1

    .line 597
    sget v14, Lorg/telegram/messenger/R$string;->period_last_year:I

    const-string v10, "YEAR"

    const/4 v11, 0x3

    const/4 v12, 0x3

    move-object v9, v0

    .line 594
    invoke-direct/range {v9 .. v14}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->YEAR:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    .line 599
    new-instance v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    sget v6, Lorg/telegram/messenger/R$string;->period_all_time:I

    const-string v2, "ALL_TIME"

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->ALL_TIME:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    invoke-static {}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->$values()[Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    move-result-object v0

    sput-object v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->$VALUES:[Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    new-instance v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->Companion:Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 578
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->code:I

    iput p4, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->period:I

    iput p5, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->stringRes:I

    return-void
.end method

.method public static final synthetic access$getCode$p(Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;)I
    .locals 0

    .line 578
    iget p0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->code:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;
    .locals 1

    const-class v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    return-object p0
.end method

.method public static values()[Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;
    .locals 1

    sget-object v0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->$VALUES:[Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;

    return-object v0
.end method


# virtual methods
.method public final getPeriod()I
    .locals 1

    .line 578
    iget v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->period:I

    return v0
.end method

.method public final getStringRes()I
    .locals 1

    .line 578
    iget v0, p0, Lcom/iMe/fork/ui/dialog/DeleteServiceMessagesBottomSheet$ErasingPeriod;->stringRes:I

    return v0
.end method
