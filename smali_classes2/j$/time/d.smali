.class public final Lj$/time/d;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/temporal/j;
.implements Lj$/time/temporal/l;
.implements Lj$/time/chrono/b;
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Lj$/time/d;

.field public static final e:Lj$/time/d;


# instance fields
.field private final a:I

.field private final b:S

.field private final c:S


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const v0, -0x3b9ac9ff

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lj$/time/d;->r(III)Lj$/time/d;

    move-result-object v0

    sput-object v0, Lj$/time/d;->d:Lj$/time/d;

    const v0, 0x3b9ac9ff

    const/16 v1, 0xc

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lj$/time/d;->r(III)Lj$/time/d;

    move-result-object v0

    sput-object v0, Lj$/time/d;->e:Lj$/time/d;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj$/time/d;->a:I

    int-to-short p1, p2

    iput-short p1, p0, Lj$/time/d;->b:S

    int-to-short p1, p3

    iput-short p1, p0, Lj$/time/d;->c:S

    return-void
.end method

.method public static l(Lj$/time/temporal/k;)Lj$/time/d;
    .locals 3

    const-string v0, "temporal"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget v0, Lj$/time/temporal/w;->a:I

    sget-object v0, Lj$/time/temporal/u;->a:Lj$/time/temporal/u;

    invoke-interface {p0, v0}, Lj$/time/temporal/k;->g(Lj$/time/temporal/x;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/time/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain LocalDate from TemporalAccessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private m(Lj$/time/temporal/o;)I
    .locals 3

    sget-object v0, Lj$/time/c;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj$/time/temporal/z;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/temporal/z;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget p1, p0, Lj$/time/d;->a:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :pswitch_1
    iget p1, p0, Lj$/time/d;->a:I

    return p1

    :pswitch_2
    new-instance p1, Lj$/time/temporal/z;

    const-string v0, "Invalid field \'ProlepticMonth\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Lj$/time/temporal/z;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    iget-short p1, p0, Lj$/time/d;->b:S

    return p1

    :pswitch_4
    invoke-virtual {p0}, Lj$/time/d;->o()I

    move-result p1

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v1

    return p1

    :pswitch_5
    new-instance p1, Lj$/time/temporal/z;

    const-string v0, "Invalid field \'EpochDay\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Lj$/time/temporal/z;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_6
    invoke-virtual {p0}, Lj$/time/d;->o()I

    move-result p1

    sub-int/2addr p1, v1

    rem-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v1

    return p1

    :pswitch_7
    iget-short p1, p0, Lj$/time/d;->c:S

    sub-int/2addr p1, v1

    rem-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v1

    return p1

    :pswitch_8
    invoke-virtual {p0}, Lj$/time/d;->n()Lj$/time/b;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/b;->j()I

    move-result p1

    return p1

    :pswitch_9
    iget p1, p0, Lj$/time/d;->a:I

    if-lt p1, v1, :cond_1

    goto :goto_1

    :cond_1
    rsub-int/lit8 p1, p1, 0x1

    :goto_1
    return p1

    :pswitch_a
    iget-short p1, p0, Lj$/time/d;->c:S

    sub-int/2addr p1, v1

    div-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v1

    return p1

    :pswitch_b
    invoke-virtual {p0}, Lj$/time/d;->o()I

    move-result p1

    return p1

    :pswitch_c
    iget-short p1, p0, Lj$/time/d;->c:S

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static r(III)Lj$/time/d;
    .locals 6

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->j(J)J

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lj$/time/temporal/a;->j(J)J

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Lj$/time/temporal/a;->j(J)J

    const/16 v0, 0x1c

    if-le p2, v0, :cond_4

    const/16 v3, 0x1f

    const/4 v4, 0x2

    const/16 v5, 0x1d

    if-eq p1, v4, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0

    .line 1
    :cond_1
    sget-object v3, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    invoke-virtual {v3, v1, v2}, Lj$/time/chrono/h;->c(J)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v5

    :cond_2
    :goto_0
    if-le p2, v0, :cond_4

    if-ne p2, v5, :cond_3

    new-instance p1, Lj$/time/DateTimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid date \'February 29\' as \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a leap year"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p0, Lj$/time/DateTimeException;

    const-string v0, "Invalid date \'"

    invoke-static {v0}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lj$/time/j;->m(I)Lj$/time/j;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance v0, Lj$/time/d;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/d;-><init>(III)V

    return-object v0
.end method

.method public static s(J)Lj$/time/d;
    .locals 23

    const-wide/32 v0, 0xafaa8

    add-long v0, p0, v0

    const-wide/16 v2, 0x3c

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x1

    const-wide/32 v7, 0x23ab1

    const-wide/16 v9, 0x190

    if-gez v4, :cond_0

    add-long v11, v0, v5

    div-long/2addr v11, v7

    sub-long/2addr v11, v5

    mul-long v13, v11, v9

    neg-long v11, v11

    mul-long/2addr v11, v7

    add-long/2addr v0, v11

    goto :goto_0

    :cond_0
    move-wide v13, v2

    :goto_0
    mul-long v11, v0, v9

    const-wide/16 v15, 0x24f

    add-long/2addr v11, v15

    div-long/2addr v11, v7

    const-wide/16 v7, 0x16d

    mul-long v15, v11, v7

    const-wide/16 v17, 0x4

    div-long v19, v11, v17

    add-long v19, v19, v15

    const-wide/16 v15, 0x64

    div-long v21, v11, v15

    sub-long v19, v19, v21

    div-long v21, v11, v9

    add-long v21, v21, v19

    sub-long v19, v0, v21

    cmp-long v2, v19, v2

    if-gez v2, :cond_1

    sub-long/2addr v11, v5

    mul-long/2addr v7, v11

    div-long v2, v11, v17

    add-long/2addr v2, v7

    div-long v4, v11, v15

    sub-long/2addr v2, v4

    div-long v4, v11, v9

    add-long/2addr v4, v2

    sub-long v19, v0, v4

    :cond_1
    move-wide/from16 v0, v19

    add-long/2addr v11, v13

    long-to-int v0, v0

    mul-int/lit8 v1, v0, 0x5

    add-int/lit8 v1, v1, 0x2

    div-int/lit16 v1, v1, 0x99

    add-int/lit8 v2, v1, 0x2

    rem-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v3, v1, 0x132

    add-int/lit8 v3, v3, 0x5

    div-int/lit8 v3, v3, 0xa

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v1, v1, 0xa

    int-to-long v3, v1

    add-long/2addr v11, v3

    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {v1, v11, v12}, Lj$/time/temporal/a;->i(J)I

    move-result v1

    new-instance v3, Lj$/time/d;

    invoke-direct {v3, v1, v2, v0}, Lj$/time/d;-><init>(III)V

    return-object v3
.end method

.method public static t(II)Lj$/time/d;
    .locals 5

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->j(J)J

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_YEAR:Lj$/time/temporal/a;

    int-to-long v3, p1

    invoke-virtual {v0, v3, v4}, Lj$/time/temporal/a;->j(J)J

    sget-object v0, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/h;->c(J)Z

    move-result v0

    const/16 v1, 0x16e

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lj$/time/DateTimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid date \'DayOfYear 366\' as \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\' is not a leap year"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lj$/time/j;->m(I)Lj$/time/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lj$/time/j;->j(Z)I

    move-result v2

    invoke-virtual {v1, v0}, Lj$/time/j;->l(Z)I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_2

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lj$/time/j;->n(J)Lj$/time/j;

    move-result-object v1

    :cond_2
    invoke-virtual {v1, v0}, Lj$/time/j;->j(Z)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    new-instance v0, Lj$/time/d;

    invoke-virtual {v1}, Lj$/time/j;->k()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lj$/time/d;-><init>(III)V

    return-object v0
.end method

.method private static z(III)Lj$/time/d;
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    :cond_1
    sget-object v0, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/h;->c(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto :goto_0

    :cond_2
    const/16 v0, 0x1c

    goto :goto_0

    :goto_1
    new-instance v0, Lj$/time/d;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/d;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public A()J
    .locals 12

    iget v0, p0, Lj$/time/d;->a:I

    int-to-long v0, v0

    iget-short v2, p0, Lj$/time/d;->b:S

    int-to-long v2, v2

    const-wide/16 v4, 0x16d

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    const-wide/16 v8, 0x63

    add-long/2addr v8, v0

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x18f

    add-long/2addr v0, v8

    const-wide/16 v8, 0x190

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    const-wide/16 v6, -0x4

    div-long v6, v0, v6

    const-wide/16 v8, -0x64

    div-long v8, v0, v8

    sub-long/2addr v6, v8

    const-wide/16 v8, -0x190

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    sub-long v0, v4, v0

    :goto_0
    const-wide/16 v4, 0x16f

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x16a

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc

    div-long/2addr v4, v6

    add-long/2addr v4, v0

    iget-short v0, p0, Lj$/time/d;->c:S

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr v4, v0

    const-wide/16 v0, 0x2

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr v4, v0

    invoke-virtual {p0}, Lj$/time/d;->q()Z

    move-result v2

    if-nez v2, :cond_1

    sub-long/2addr v4, v0

    :cond_1
    const-wide/32 v0, 0xafaa8

    sub-long/2addr v4, v0

    return-wide v4
.end method

.method public B(Lj$/time/temporal/o;J)Lj$/time/d;
    .locals 7

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/a;->j(J)J

    sget-object v1, Lj$/time/c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-wide/16 v1, 0x1

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p2, Lj$/time/temporal/z;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported field: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lj$/time/temporal/z;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_0
    sget-object p1, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0, p1}, Lj$/time/d;->e(Lj$/time/temporal/o;)J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget p1, p0, Lj$/time/d;->a:I

    sub-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lj$/time/d;->E(I)Lj$/time/d;

    move-result-object p1

    :goto_0
    return-object p1

    .line 1
    :pswitch_1
    iget p1, p0, Lj$/time/d;->a:I

    int-to-long v3, p1

    const-wide/16 v5, 0xc

    mul-long/2addr v3, v5

    iget-short p1, p0, Lj$/time/d;->b:S

    int-to-long v5, p1

    add-long/2addr v3, v5

    sub-long/2addr v3, v1

    sub-long/2addr p2, v3

    .line 2
    invoke-virtual {p0, p2, p3}, Lj$/time/d;->w(J)Lj$/time/d;

    move-result-object p1

    goto/16 :goto_6

    :pswitch_2
    long-to-int p1, p2

    .line 3
    iget-short p2, p0, Lj$/time/d;->b:S

    if-ne p2, p1, :cond_1

    goto :goto_5

    :cond_1
    sget-object p2, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lj$/time/temporal/a;->j(J)J

    iget p2, p0, Lj$/time/d;->a:I

    iget-short p3, p0, Lj$/time/d;->c:S

    invoke-static {p2, p1, p3}, Lj$/time/d;->z(III)Lj$/time/d;

    move-result-object p1

    goto :goto_6

    .line 4
    :pswitch_3
    sget-object p1, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_YEAR:Lj$/time/temporal/a;

    goto :goto_4

    :pswitch_4
    invoke-static {p2, p3}, Lj$/time/d;->s(J)Lj$/time/d;

    move-result-object p1

    goto :goto_6

    :pswitch_5
    sget-object p1, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_YEAR:Lj$/time/temporal/a;

    goto :goto_1

    :pswitch_6
    sget-object p1, Lj$/time/temporal/a;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Lj$/time/temporal/a;

    :goto_1
    invoke-virtual {p0, p1}, Lj$/time/d;->e(Lj$/time/temporal/o;)J

    move-result-wide v0

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0}, Lj$/time/d;->n()Lj$/time/b;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/b;->j()I

    move-result p1

    int-to-long v0, p1

    :goto_2
    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lj$/time/d;->v(J)Lj$/time/d;

    move-result-object p1

    goto :goto_6

    :pswitch_8
    iget p1, p0, Lj$/time/d;->a:I

    if-lt p1, v3, :cond_2

    goto :goto_3

    :cond_2
    sub-long p2, v1, p2

    :goto_3
    :pswitch_9
    long-to-int p1, p2

    .line 5
    invoke-virtual {p0, p1}, Lj$/time/d;->E(I)Lj$/time/d;

    move-result-object p1

    goto :goto_6

    .line 6
    :pswitch_a
    sget-object p1, Lj$/time/temporal/a;->ALIGNED_WEEK_OF_MONTH:Lj$/time/temporal/a;

    :goto_4
    invoke-virtual {p0, p1}, Lj$/time/d;->e(Lj$/time/temporal/o;)J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lj$/time/d;->x(J)Lj$/time/d;

    move-result-object p1

    goto :goto_6

    :pswitch_b
    long-to-int p1, p2

    .line 7
    invoke-virtual {p0}, Lj$/time/d;->o()I

    move-result p2

    if-ne p2, p1, :cond_3

    goto :goto_5

    :cond_3
    iget p2, p0, Lj$/time/d;->a:I

    invoke-static {p2, p1}, Lj$/time/d;->t(II)Lj$/time/d;

    move-result-object p1

    goto :goto_6

    :pswitch_c
    long-to-int p1, p2

    .line 8
    iget-short p2, p0, Lj$/time/d;->c:S

    if-ne p2, p1, :cond_4

    :goto_5
    move-object p1, p0

    goto :goto_6

    :cond_4
    iget p2, p0, Lj$/time/d;->a:I

    iget-short p3, p0, Lj$/time/d;->b:S

    invoke-static {p2, p3, p1}, Lj$/time/d;->r(III)Lj$/time/d;

    move-result-object p1

    goto :goto_6

    .line 9
    :cond_5
    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/o;->f(Lj$/time/temporal/j;J)Lj$/time/temporal/j;

    move-result-object p1

    check-cast p1, Lj$/time/d;

    :goto_6
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_9
        :pswitch_0
    .end packed-switch
.end method

.method public C(Lj$/time/temporal/l;)Lj$/time/chrono/b;
    .locals 1

    .line 1
    instance-of v0, p1, Lj$/time/d;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lj$/time/temporal/m;

    invoke-virtual {p1, p0}, Lj$/time/temporal/m;->h(Lj$/time/temporal/j;)Lj$/time/temporal/j;

    move-result-object p1

    :goto_0
    check-cast p1, Lj$/time/d;

    return-object p1
.end method

.method public D(I)Lj$/time/d;
    .locals 1

    invoke-virtual {p0}, Lj$/time/d;->o()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lj$/time/d;->a:I

    invoke-static {v0, p1}, Lj$/time/d;->t(II)Lj$/time/d;

    move-result-object p1

    return-object p1
.end method

.method public E(I)Lj$/time/d;
    .locals 3

    iget v0, p0, Lj$/time/d;->a:I

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->j(J)J

    iget-short v0, p0, Lj$/time/d;->b:S

    iget-short v1, p0, Lj$/time/d;->c:S

    invoke-static {p1, v0, v1}, Lj$/time/d;->z(III)Lj$/time/d;

    move-result-object p1

    return-object p1
.end method

.method public a(Lj$/time/temporal/l;)Lj$/time/temporal/j;
    .locals 0

    .line 1
    check-cast p1, Lj$/time/d;

    return-object p1
.end method

.method public bridge synthetic b(Lj$/time/temporal/o;J)Lj$/time/temporal/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/d;->B(Lj$/time/temporal/o;J)Lj$/time/d;

    move-result-object p1

    return-object p1
.end method

.method public c(Lj$/time/temporal/o;)I
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lj$/time/d;->m(Lj$/time/temporal/o;)I

    move-result p1

    return p1

    :cond_0
    invoke-static {p0, p1}, Lj$/time/temporal/n;->a(Lj$/time/temporal/k;Lj$/time/temporal/o;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj$/time/chrono/b;

    invoke-virtual {p0, p1}, Lj$/time/d;->j(Lj$/time/chrono/b;)I

    move-result p1

    return p1
.end method

.method public d(Lj$/time/temporal/o;)Lj$/time/temporal/A;
    .locals 6

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->h()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lj$/time/c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x2

    const-wide/16 v4, 0x1

    if-eq v0, v1, :cond_6

    if-eq v0, v3, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/o;->a()Lj$/time/temporal/A;

    move-result-object p1

    return-object p1

    .line 1
    :cond_0
    iget p1, p0, Lj$/time/d;->a:I

    if-gtz p1, :cond_1

    const-wide/32 v0, 0x3b9aca00

    goto :goto_0

    :cond_1
    const-wide/32 v0, 0x3b9ac9ff

    .line 2
    :goto_0
    invoke-static {v4, v5, v0, v1}, Lj$/time/temporal/A;->i(JJ)Lj$/time/temporal/A;

    move-result-object p1

    return-object p1

    .line 3
    :cond_2
    iget-short p1, p0, Lj$/time/d;->b:S

    invoke-static {p1}, Lj$/time/j;->m(I)Lj$/time/j;

    move-result-object p1

    .line 4
    sget-object v0, Lj$/time/j;->FEBRUARY:Lj$/time/j;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lj$/time/d;->q()Z

    move-result p1

    if-nez p1, :cond_3

    const-wide/16 v0, 0x4

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x5

    :goto_1
    invoke-static {v4, v5, v0, v1}, Lj$/time/temporal/A;->i(JJ)Lj$/time/temporal/A;

    move-result-object p1

    return-object p1

    .line 5
    :cond_4
    invoke-virtual {p0}, Lj$/time/d;->q()Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x16e

    goto :goto_2

    :cond_5
    const/16 p1, 0x16d

    goto :goto_2

    .line 6
    :cond_6
    iget-short p1, p0, Lj$/time/d;->b:S

    if-eq p1, v3, :cond_8

    if-eq p1, v2, :cond_7

    const/4 v0, 0x6

    if-eq p1, v0, :cond_7

    const/16 v0, 0x9

    if-eq p1, v0, :cond_7

    const/16 v0, 0xb

    if-eq p1, v0, :cond_7

    const/16 p1, 0x1f

    goto :goto_2

    :cond_7
    const/16 p1, 0x1e

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lj$/time/d;->q()Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 p1, 0x1d

    goto :goto_2

    :cond_9
    const/16 p1, 0x1c

    :goto_2
    int-to-long v0, p1

    .line 7
    invoke-static {v4, v5, v0, v1}, Lj$/time/temporal/A;->i(JJ)Lj$/time/temporal/A;

    move-result-object p1

    return-object p1

    :cond_a
    new-instance v0, Lj$/time/temporal/z;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported field: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/temporal/z;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->g(Lj$/time/temporal/k;)Lj$/time/temporal/A;

    move-result-object p1

    return-object p1
.end method

.method public e(Lj$/time/temporal/o;)J
    .locals 4

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lj$/time/d;->A()J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_1

    .line 1
    iget p1, p0, Lj$/time/d;->a:I

    int-to-long v0, p1

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-short p1, p0, Lj$/time/d;->b:S

    int-to-long v2, p1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0

    .line 2
    :cond_1
    invoke-direct {p0, p1}, Lj$/time/d;->m(Lj$/time/temporal/o;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->d(Lj$/time/temporal/k;)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/d;

    invoke-virtual {p0, p1}, Lj$/time/d;->k(Lj$/time/d;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public bridge synthetic f(JLj$/time/temporal/y;)Lj$/time/temporal/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/d;->u(JLj$/time/temporal/y;)Lj$/time/d;

    move-result-object p1

    return-object p1
.end method

.method public g(Lj$/time/temporal/x;)Ljava/lang/Object;
    .locals 2

    sget v0, Lj$/time/temporal/w;->a:I

    sget-object v0, Lj$/time/temporal/u;->a:Lj$/time/temporal/u;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1
    :cond_0
    sget-object v0, Lj$/time/temporal/p;->a:Lj$/time/temporal/p;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    sget-object v0, Lj$/time/temporal/t;->a:Lj$/time/temporal/t;

    if-eq p1, v0, :cond_5

    sget-object v0, Lj$/time/temporal/s;->a:Lj$/time/temporal/s;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lj$/time/temporal/v;->a:Lj$/time/temporal/v;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lj$/time/temporal/q;->a:Lj$/time/temporal/q;

    if-ne p1, v0, :cond_3

    .line 2
    sget-object v1, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    goto :goto_0

    .line 3
    :cond_3
    sget-object v0, Lj$/time/temporal/r;->a:Lj$/time/temporal/r;

    if-ne p1, v0, :cond_4

    sget-object v1, Lj$/time/temporal/ChronoUnit;->DAYS:Lj$/time/temporal/ChronoUnit;

    goto :goto_0

    :cond_4
    invoke-interface {p1, p0}, Lj$/time/temporal/x;->a(Lj$/time/temporal/k;)Ljava/lang/Object;

    move-result-object v1

    :cond_5
    :goto_0
    return-object v1
.end method

.method public h(Lj$/time/temporal/j;)Lj$/time/temporal/j;
    .locals 3

    .line 1
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/d;->A()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/j;->b(Lj$/time/temporal/o;J)Lj$/time/temporal/j;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lj$/time/d;->a:I

    iget-short v1, p0, Lj$/time/d;->b:S

    iget-short v2, p0, Lj$/time/d;->c:S

    and-int/lit16 v3, v0, -0x800

    shl-int/lit8 v0, v0, 0xb

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    xor-int/2addr v0, v3

    return v0
.end method

.method public i(Lj$/time/temporal/o;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lj$/time/temporal/o;->h()Z

    move-result p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p0}, Lj$/time/temporal/o;->e(Lj$/time/temporal/k;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j(Lj$/time/chrono/b;)I
    .locals 4

    instance-of v0, p1, Lj$/time/d;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/d;

    invoke-virtual {p0, p1}, Lj$/time/d;->k(Lj$/time/d;)I

    move-result p1

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lj$/time/d;->A()J

    move-result-wide v0

    check-cast p1, Lj$/time/d;

    invoke-virtual {p1}, Lj$/time/d;->A()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    const/4 p1, 0x0

    :cond_1
    return p1
.end method

.method k(Lj$/time/d;)I
    .locals 2

    iget v0, p0, Lj$/time/d;->a:I

    iget v1, p1, Lj$/time/d;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-short v0, p0, Lj$/time/d;->b:S

    iget-short v1, p1, Lj$/time/d;->b:S

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget-short v0, p0, Lj$/time/d;->c:S

    iget-short p1, p1, Lj$/time/d;->c:S

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public n()Lj$/time/b;
    .locals 4

    invoke-virtual {p0}, Lj$/time/d;->A()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const-wide/16 v2, 0x7

    invoke-static {v0, v1, v2, v3}, Lj$/lang/d;->d(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lj$/time/b;->k(I)Lj$/time/b;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 2

    .line 1
    iget-short v0, p0, Lj$/time/d;->b:S

    invoke-static {v0}, Lj$/time/j;->m(I)Lj$/time/j;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lj$/time/d;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Lj$/time/j;->j(Z)I

    move-result v0

    iget-short v1, p0, Lj$/time/d;->c:S

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lj$/time/d;->a:I

    return v0
.end method

.method public q()Z
    .locals 3

    sget-object v0, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    iget v1, p0, Lj$/time/d;->a:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/h;->c(J)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Lj$/time/d;->a:I

    iget-short v1, p0, Lj$/time/d;->b:S

    iget-short v2, p0, Lj$/time/d;->c:S

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v6, 0x3e8

    if-ge v3, v6, :cond_1

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, -0x2710

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x2710

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x270f

    if-le v0, v3, :cond_2

    const/16 v3, 0x2b

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, "-0"

    const-string v3, "-"

    if-ge v1, v5, :cond_3

    move-object v6, v0

    goto :goto_2

    :cond_3
    move-object v6, v3

    :goto_2
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ge v2, v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v3

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(JLj$/time/temporal/y;)Lj$/time/d;
    .locals 2

    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lj$/time/temporal/ChronoUnit;

    sget-object v1, Lj$/time/c;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lj$/time/temporal/z;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported unit: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lj$/time/temporal/z;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p3, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/d;->e(Lj$/time/temporal/o;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lj$/lang/d;->c(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p3, p1, p2}, Lj$/time/d;->B(Lj$/time/temporal/o;J)Lj$/time/d;

    move-result-object p1

    return-object p1

    :pswitch_1
    const-wide/16 v0, 0x3e8

    invoke-static {p1, p2, v0, v1}, Lj$/lang/d;->f(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lj$/time/d;->y(J)Lj$/time/d;

    move-result-object p1

    return-object p1

    :pswitch_2
    const-wide/16 v0, 0x64

    invoke-static {p1, p2, v0, v1}, Lj$/lang/d;->f(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lj$/time/d;->y(J)Lj$/time/d;

    move-result-object p1

    return-object p1

    :pswitch_3
    const-wide/16 v0, 0xa

    invoke-static {p1, p2, v0, v1}, Lj$/lang/d;->f(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lj$/time/d;->y(J)Lj$/time/d;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lj$/time/d;->y(J)Lj$/time/d;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lj$/time/d;->w(J)Lj$/time/d;

    move-result-object p1

    return-object p1

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lj$/time/d;->x(J)Lj$/time/d;

    move-result-object p1

    return-object p1

    :pswitch_7
    invoke-virtual {p0, p1, p2}, Lj$/time/d;->v(J)Lj$/time/d;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/y;->a(Lj$/time/temporal/j;J)Lj$/time/temporal/j;

    move-result-object p1

    check-cast p1, Lj$/time/d;

    return-object p1

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

.method public v(J)Lj$/time/d;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lj$/time/d;->A()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lj$/lang/d;->c(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lj$/time/d;->s(J)Lj$/time/d;

    move-result-object p1

    return-object p1
.end method

.method public w(J)Lj$/time/d;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lj$/time/d;->a:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget-short v4, p0, Lj$/time/d;->b:S

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-long/2addr v0, p1

    sget-object p1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-static {v0, v1, v2, v3}, Lj$/lang/d;->e(JJ)J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Lj$/time/temporal/a;->i(J)I

    move-result p1

    invoke-static {v0, v1, v2, v3}, Lj$/lang/d;->d(JJ)J

    move-result-wide v0

    long-to-int p2, v0

    add-int/lit8 p2, p2, 0x1

    iget-short v0, p0, Lj$/time/d;->c:S

    invoke-static {p1, p2, v0}, Lj$/time/d;->z(III)Lj$/time/d;

    move-result-object p1

    return-object p1
.end method

.method public x(J)Lj$/time/d;
    .locals 2

    const-wide/16 v0, 0x7

    invoke-static {p1, p2, v0, v1}, Lj$/lang/d;->f(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lj$/time/d;->v(J)Lj$/time/d;

    move-result-object p1

    return-object p1
.end method

.method public y(J)Lj$/time/d;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/d;->a:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->i(J)I

    move-result p1

    iget-short p2, p0, Lj$/time/d;->b:S

    iget-short v0, p0, Lj$/time/d;->c:S

    invoke-static {p1, p2, v0}, Lj$/time/d;->z(III)Lj$/time/d;

    move-result-object p1

    return-object p1
.end method
