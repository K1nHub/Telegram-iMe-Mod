.class abstract enum Lj$/time/temporal/g;
.super Ljava/lang/Enum;

# interfaces
.implements Lj$/time/temporal/o;


# static fields
.field public static final enum DAY_OF_QUARTER:Lj$/time/temporal/g;

.field public static final enum QUARTER_OF_YEAR:Lj$/time/temporal/g;

.field public static final enum WEEK_BASED_YEAR:Lj$/time/temporal/g;

.field public static final enum WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/g;

.field private static final a:[I

.field private static final synthetic b:[Lj$/time/temporal/g;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lj$/time/temporal/c;

    const-string v1, "DAY_OF_QUARTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj$/time/temporal/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj$/time/temporal/g;->DAY_OF_QUARTER:Lj$/time/temporal/g;

    new-instance v1, Lj$/time/temporal/d;

    const-string v3, "QUARTER_OF_YEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj$/time/temporal/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj$/time/temporal/g;->QUARTER_OF_YEAR:Lj$/time/temporal/g;

    new-instance v3, Lj$/time/temporal/e;

    const-string v5, "WEEK_OF_WEEK_BASED_YEAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lj$/time/temporal/e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lj$/time/temporal/g;->WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/g;

    new-instance v5, Lj$/time/temporal/f;

    const-string v7, "WEEK_BASED_YEAR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lj$/time/temporal/f;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lj$/time/temporal/g;->WEEK_BASED_YEAR:Lj$/time/temporal/g;

    const/4 v7, 0x4

    new-array v7, v7, [Lj$/time/temporal/g;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lj$/time/temporal/g;->b:[Lj$/time/temporal/g;

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lj$/time/temporal/g;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
        0xb5
        0x111
        0x0
        0x5b
        0xb6
        0x112
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;ILj$/time/temporal/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic i()[I
    .locals 1

    sget-object v0, Lj$/time/temporal/g;->a:[I

    return-object v0
.end method

.method static j(Lj$/time/temporal/k;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lj$/time/chrono/d;->b(Lj$/time/temporal/k;)Lj$/time/chrono/g;

    move-result-object p0

    sget-object v0, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    check-cast p0, Lj$/time/chrono/a;

    invoke-virtual {p0, v0}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Lj$/time/DateTimeException;

    const-string v0, "Resolve requires IsoChronology"

    invoke-direct {p0, v0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static k(Lj$/time/d;)Lj$/time/temporal/A;
    .locals 4

    .line 1
    invoke-static {p0}, Lj$/time/temporal/g;->o(Lj$/time/d;)I

    move-result p0

    invoke-static {p0}, Lj$/time/temporal/g;->p(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/A;->i(JJ)Lj$/time/temporal/A;

    move-result-object p0

    return-object p0
.end method

.method static l(Lj$/time/d;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lj$/time/d;->n()Lj$/time/b;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/d;->o()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rsub-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x7

    mul-int/lit8 v3, v3, 0x7

    sub-int/2addr v0, v3

    const/4 v3, -0x3

    add-int/2addr v0, v3

    if-ge v0, v3, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    if-ge v1, v0, :cond_1

    const/16 v0, 0xb4

    invoke-virtual {p0, v0}, Lj$/time/d;->D(I)Lj$/time/d;

    move-result-object p0

    const-wide/16 v0, -0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Lj$/time/d;->y(J)Lj$/time/d;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lj$/time/temporal/g;->o(Lj$/time/d;)I

    move-result p0

    invoke-static {p0}, Lj$/time/temporal/g;->p(I)I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x1

    invoke-static {v2, v3, v0, v1}, Lj$/time/temporal/A;->i(JJ)Lj$/time/temporal/A;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lj$/time/temporal/A;->d()J

    move-result-wide v0

    long-to-int p0, v0

    goto :goto_3

    :cond_1
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v2

    const/16 v4, 0x35

    if-ne v1, v4, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v3, -0x2

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lj$/time/d;->q()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v2

    :goto_1
    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    move p0, v2

    :goto_3
    return p0
.end method

.method static synthetic m(Lj$/time/d;)I
    .locals 0

    invoke-static {p0}, Lj$/time/temporal/g;->o(Lj$/time/d;)I

    move-result p0

    return p0
.end method

.method static synthetic n(I)I
    .locals 0

    invoke-static {p0}, Lj$/time/temporal/g;->p(I)I

    move-result p0

    return p0
.end method

.method private static o(Lj$/time/d;)I
    .locals 4

    invoke-virtual {p0}, Lj$/time/d;->p()I

    move-result v0

    invoke-virtual {p0}, Lj$/time/d;->o()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Lj$/time/d;->n()Lj$/time/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    sub-int/2addr v1, p0

    const/4 p0, -0x2

    if-ge v1, p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x16b

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lj$/time/d;->n()Lj$/time/b;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lj$/time/d;->q()Z

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, v3

    if-ltz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private static p(I)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lj$/time/d;->r(III)Lj$/time/d;

    move-result-object p0

    invoke-virtual {p0}, Lj$/time/d;->n()Lj$/time/b;

    move-result-object v0

    sget-object v1, Lj$/time/b;->THURSDAY:Lj$/time/b;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lj$/time/d;->n()Lj$/time/b;

    move-result-object v0

    sget-object v1, Lj$/time/b;->WEDNESDAY:Lj$/time/b;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lj$/time/d;->q()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p0, 0x34

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0x35

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/temporal/g;
    .locals 1

    const-class v0, Lj$/time/temporal/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/temporal/g;

    return-object p0
.end method

.method public static values()[Lj$/time/temporal/g;
    .locals 1

    sget-object v0, Lj$/time/temporal/g;->b:[Lj$/time/temporal/g;

    invoke-virtual {v0}, [Lj$/time/temporal/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/temporal/g;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic c(Ljava/util/Map;Lj$/time/temporal/k;Lj$/time/format/z;)Lj$/time/temporal/k;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Lj$/time/temporal/k;)Lj$/time/temporal/A;
    .locals 0

    invoke-interface {p0}, Lj$/time/temporal/o;->a()Lj$/time/temporal/A;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
