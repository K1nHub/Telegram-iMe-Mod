.class public final Lj$/time/YearMonth;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/temporal/j;
.implements Lj$/time/temporal/l;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/time/temporal/j;",
        "Lj$/time/temporal/l;",
        "Ljava/lang/Comparable<",
        "Lj$/time/YearMonth;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lj$/time/format/s;

    invoke-direct {v0}, Lj$/time/format/s;-><init>()V

    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    sget-object v2, Lj$/time/format/A;->EXCEEDS_PAD:Lj$/time/format/A;

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Lj$/time/format/s;->l(Lj$/time/temporal/o;IILj$/time/format/A;)Lj$/time/format/s;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Lj$/time/format/s;->e(C)Lj$/time/format/s;

    sget-object v1, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lj$/time/format/s;->k(Lj$/time/temporal/o;I)Lj$/time/format/s;

    invoke-virtual {v0}, Lj$/time/format/s;->s()Lj$/time/format/a;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lj$/time/YearMonth;->a:I

    iput p2, p0, Lj$/time/YearMonth;->b:I

    return-void
.end method

.method private j()J
    .locals 4

    iget v0, p0, Lj$/time/YearMonth;->a:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v2, p0, Lj$/time/YearMonth;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private m(II)Lj$/time/YearMonth;
    .locals 1

    iget v0, p0, Lj$/time/YearMonth;->a:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lj$/time/YearMonth;->b:I

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/YearMonth;

    invoke-direct {v0, p1, p2}, Lj$/time/YearMonth;-><init>(II)V

    return-object v0
.end method

.method public static of(II)Lj$/time/YearMonth;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->j(J)J

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->j(J)J

    new-instance v0, Lj$/time/YearMonth;

    invoke-direct {v0, p0, p1}, Lj$/time/YearMonth;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public a(Lj$/time/temporal/l;)Lj$/time/temporal/j;
    .locals 0

    .line 1
    check-cast p1, Lj$/time/d;

    invoke-virtual {p1, p0}, Lj$/time/d;->h(Lj$/time/temporal/j;)Lj$/time/temporal/j;

    move-result-object p1

    check-cast p1, Lj$/time/YearMonth;

    return-object p1
.end method

.method public bridge synthetic b(Lj$/time/temporal/o;J)Lj$/time/temporal/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/YearMonth;->n(Lj$/time/temporal/o;J)Lj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public c(Lj$/time/temporal/o;)I
    .locals 3

    invoke-virtual {p0, p1}, Lj$/time/YearMonth;->d(Lj$/time/temporal/o;)Lj$/time/temporal/A;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj$/time/YearMonth;->e(Lj$/time/temporal/o;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/A;->a(JLj$/time/temporal/o;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lj$/time/YearMonth;

    .line 1
    iget v0, p0, Lj$/time/YearMonth;->a:I

    iget v1, p1, Lj$/time/YearMonth;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lj$/time/YearMonth;->b:I

    iget p1, p1, Lj$/time/YearMonth;->b:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public d(Lj$/time/temporal/o;)Lj$/time/temporal/A;
    .locals 4

    sget-object v0, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_1

    .line 1
    iget p1, p0, Lj$/time/YearMonth;->a:I

    const-wide/16 v0, 0x1

    if-gtz p1, :cond_0

    const-wide/32 v2, 0x3b9aca00

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x3b9ac9ff

    .line 2
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/A;->i(JJ)Lj$/time/temporal/A;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/n;->c(Lj$/time/temporal/k;Lj$/time/temporal/o;)Lj$/time/temporal/A;

    move-result-object p1

    return-object p1
.end method

.method public e(Lj$/time/temporal/o;)J
    .locals 3

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_7

    sget-object v0, Lj$/time/YearMonth$a;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    iget p1, p0, Lj$/time/YearMonth;->a:I

    if-ge p1, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    int-to-long v0, v1

    return-wide v0

    :cond_1
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

    :cond_2
    iget p1, p0, Lj$/time/YearMonth;->a:I

    :goto_0
    int-to-long v0, p1

    return-wide v0

    :cond_3
    iget p1, p0, Lj$/time/YearMonth;->a:I

    if-ge p1, v1, :cond_4

    rsub-int/lit8 p1, p1, 0x1

    :cond_4
    int-to-long v0, p1

    return-wide v0

    :cond_5
    invoke-direct {p0}, Lj$/time/YearMonth;->j()J

    move-result-wide v0

    return-wide v0

    :cond_6
    iget p1, p0, Lj$/time/YearMonth;->b:I

    goto :goto_0

    :cond_7
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->d(Lj$/time/temporal/k;)J

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/YearMonth;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/YearMonth;

    iget v1, p0, Lj$/time/YearMonth;->a:I

    iget v3, p1, Lj$/time/YearMonth;->a:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lj$/time/YearMonth;->b:I

    iget p1, p1, Lj$/time/YearMonth;->b:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public f(JLj$/time/temporal/y;)Lj$/time/temporal/j;
    .locals 2

    .line 1
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/YearMonth$a;->b:[I

    move-object v1, p3

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

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

    invoke-virtual {p0, p3}, Lj$/time/YearMonth;->e(Lj$/time/temporal/o;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lj$/lang/d;->c(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p3, p1, p2}, Lj$/time/YearMonth;->n(Lj$/time/temporal/o;J)Lj$/time/YearMonth;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    const-wide/16 v0, 0x3e8

    goto :goto_0

    :pswitch_2
    const-wide/16 v0, 0x64

    goto :goto_0

    :pswitch_3
    const-wide/16 v0, 0xa

    :goto_0
    invoke-static {p1, p2, v0, v1}, Lj$/lang/d;->f(JJ)J

    move-result-wide p1

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lj$/time/YearMonth;->l(J)Lj$/time/YearMonth;

    move-result-object p1

    goto :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lj$/time/YearMonth;->k(J)Lj$/time/YearMonth;

    move-result-object p1

    goto :goto_1

    :cond_0
    check-cast p3, Lj$/time/temporal/ChronoUnit;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/YearMonth;->f(JLj$/time/temporal/y;)Lj$/time/temporal/j;

    move-result-object p1

    .line 3
    check-cast p1, Lj$/time/YearMonth;

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g(Lj$/time/temporal/x;)Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/time/temporal/w;->a:I

    sget-object v0, Lj$/time/temporal/q;->a:Lj$/time/temporal/q;

    if-ne p1, v0, :cond_0

    sget-object p1, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    return-object p1

    :cond_0
    sget-object v0, Lj$/time/temporal/r;->a:Lj$/time/temporal/r;

    if-ne p1, v0, :cond_1

    sget-object p1, Lj$/time/temporal/ChronoUnit;->MONTHS:Lj$/time/temporal/ChronoUnit;

    return-object p1

    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/n;->b(Lj$/time/temporal/k;Lj$/time/temporal/x;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Lj$/time/temporal/j;)Lj$/time/temporal/j;
    .locals 3

    invoke-static {p1}, Lj$/time/chrono/d;->b(Lj$/time/temporal/k;)Lj$/time/chrono/g;

    move-result-object v0

    sget-object v1, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    check-cast v0, Lj$/time/chrono/a;

    invoke-virtual {v0, v1}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    invoke-direct {p0}, Lj$/time/YearMonth;->j()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/j;->b(Lj$/time/temporal/o;J)Lj$/time/temporal/j;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lj$/time/DateTimeException;

    const-string v0, "Adjustment only supported on ISO date-time"

    invoke-direct {p1, v0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lj$/time/YearMonth;->a:I

    iget v1, p0, Lj$/time/YearMonth;->b:I

    shl-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    return v0
.end method

.method public i(Lj$/time/temporal/o;)Z
    .locals 3

    instance-of v0, p1, Lj$/time/temporal/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->PROLEPTIC_MONTH:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1, p0}, Lj$/time/temporal/o;->e(Lj$/time/temporal/k;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public k(J)Lj$/time/YearMonth;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Lj$/time/YearMonth;->a:I

    int-to-long v0, v0

    const-wide/16 v2, 0xc

    mul-long/2addr v0, v2

    iget v4, p0, Lj$/time/YearMonth;->b:I

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

    invoke-direct {p0, p1, p2}, Lj$/time/YearMonth;->m(II)Lj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public l(J)Lj$/time/YearMonth;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/YearMonth;->a:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->i(J)I

    move-result p1

    iget p2, p0, Lj$/time/YearMonth;->b:I

    invoke-direct {p0, p1, p2}, Lj$/time/YearMonth;->m(II)Lj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public lengthOfMonth()I
    .locals 4

    .line 1
    iget v0, p0, Lj$/time/YearMonth;->b:I

    invoke-static {v0}, Lj$/time/j;->m(I)Lj$/time/j;

    move-result-object v0

    .line 2
    sget-object v1, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    iget v2, p0, Lj$/time/YearMonth;->a:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lj$/time/chrono/h;->c(J)Z

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lj$/time/j;->l(Z)I

    move-result v0

    return v0
.end method

.method public n(Lj$/time/temporal/o;J)Lj$/time/YearMonth;
    .locals 4

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/a;->j(J)J

    sget-object v1, Lj$/time/YearMonth$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    sget-object p1, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0, p1}, Lj$/time/YearMonth;->e(Lj$/time/temporal/o;)J

    move-result-wide v2

    cmp-long p1, v2, p2

    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget p1, p0, Lj$/time/YearMonth;->a:I

    sub-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lj$/time/YearMonth;->o(I)Lj$/time/YearMonth;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
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

    :cond_2
    long-to-int p1, p2

    invoke-virtual {p0, p1}, Lj$/time/YearMonth;->o(I)Lj$/time/YearMonth;

    move-result-object p1

    return-object p1

    :cond_3
    iget p1, p0, Lj$/time/YearMonth;->a:I

    if-ge p1, v1, :cond_4

    const-wide/16 v0, 0x1

    sub-long p2, v0, p2

    :cond_4
    long-to-int p1, p2

    invoke-virtual {p0, p1}, Lj$/time/YearMonth;->o(I)Lj$/time/YearMonth;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-direct {p0}, Lj$/time/YearMonth;->j()J

    move-result-wide v0

    sub-long/2addr p2, v0

    invoke-virtual {p0, p2, p3}, Lj$/time/YearMonth;->k(J)Lj$/time/YearMonth;

    move-result-object p1

    return-object p1

    :cond_6
    long-to-int p1, p2

    .line 1
    sget-object p2, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Lj$/time/temporal/a;->j(J)J

    iget p2, p0, Lj$/time/YearMonth;->a:I

    invoke-direct {p0, p2, p1}, Lj$/time/YearMonth;->m(II)Lj$/time/YearMonth;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/o;->f(Lj$/time/temporal/j;J)Lj$/time/temporal/j;

    move-result-object p1

    check-cast p1, Lj$/time/YearMonth;

    return-object p1
.end method

.method public o(I)Lj$/time/YearMonth;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->j(J)J

    iget v0, p0, Lj$/time/YearMonth;->b:I

    invoke-direct {p0, p1, v0}, Lj$/time/YearMonth;->m(II)Lj$/time/YearMonth;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lj$/time/YearMonth;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x3e8

    if-ge v0, v2, :cond_1

    iget v0, p0, Lj$/time/YearMonth;->a:I

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, -0x2710

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v0, 0x2710

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget v0, p0, Lj$/time/YearMonth;->a:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    iget v0, p0, Lj$/time/YearMonth;->b:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2

    const-string v0, "-0"

    goto :goto_2

    :cond_2
    const-string v0, "-"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lj$/time/YearMonth;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
