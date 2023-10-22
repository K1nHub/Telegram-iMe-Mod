.class final enum Lj$/time/temporal/h;
.super Ljava/lang/Enum;

# interfaces
.implements Lj$/time/temporal/y;


# static fields
.field public static final enum QUARTER_YEARS:Lj$/time/temporal/h;

.field public static final enum WEEK_BASED_YEARS:Lj$/time/temporal/h;

.field private static final synthetic b:[Lj$/time/temporal/h;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lj$/time/temporal/h;

    const-wide/32 v1, 0x1e18558

    invoke-static {v1, v2}, Lj$/time/Duration;->d(J)Lj$/time/Duration;

    move-result-object v1

    const-string v2, "WEEK_BASED_YEARS"

    const/4 v3, 0x0

    const-string v4, "WeekBasedYears"

    invoke-direct {v0, v2, v3, v4, v1}, Lj$/time/temporal/h;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v0, Lj$/time/temporal/h;->WEEK_BASED_YEARS:Lj$/time/temporal/h;

    new-instance v1, Lj$/time/temporal/h;

    const-wide/32 v4, 0x786156

    invoke-static {v4, v5}, Lj$/time/Duration;->d(J)Lj$/time/Duration;

    move-result-object v2

    const-string v4, "QUARTER_YEARS"

    const/4 v5, 0x1

    const-string v6, "QuarterYears"

    invoke-direct {v1, v4, v5, v6, v2}, Lj$/time/temporal/h;-><init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V

    sput-object v1, Lj$/time/temporal/h;->QUARTER_YEARS:Lj$/time/temporal/h;

    const/4 v2, 0x2

    new-array v2, v2, [Lj$/time/temporal/h;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lj$/time/temporal/h;->b:[Lj$/time/temporal/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lj$/time/Duration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lj$/time/temporal/h;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/h;
    .locals 1

    const-class v0, Lj$/time/temporal/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/h;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/h;
    .locals 1

    sget-object v0, Lj$/time/temporal/h;->b:[Lj$/time/temporal/h;

    invoke-virtual {v0}, [Lj$/time/temporal/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/h;

    return-object v0
.end method


# virtual methods
.method public a(Lj$/time/temporal/j;J)Lj$/time/temporal/j;
    .locals 5

    sget-object v0, Lj$/time/temporal/b;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x100

    div-long v2, p2, v0

    sget-object v4, Lj$/time/temporal/ChronoUnit;->YEARS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, v2, v3, v4}, Lj$/time/temporal/j;->f(JLj$/time/temporal/y;)Lj$/time/temporal/j;

    move-result-object p1

    rem-long/2addr p2, v0

    const-wide/16 v0, 0x3

    mul-long/2addr p2, v0

    sget-object v0, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, p2, p3, v0}, Lj$/time/temporal/j;->f(JLj$/time/temporal/y;)Lj$/time/temporal/j;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unreachable"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sget-object v0, Lj$/time/temporal/i;->c:Lj$/time/temporal/o;

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->c(Lj$/time/temporal/o;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2, p2, p3}, Lj$/lang/d;->c(JJ)J

    move-result-wide p2

    invoke-interface {p1, v0, p2, p3}, Lj$/time/temporal/j;->b(Lj$/time/temporal/o;J)Lj$/time/temporal/j;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj$/time/temporal/h;->a:Ljava/lang/String;

    return-object v0
.end method
