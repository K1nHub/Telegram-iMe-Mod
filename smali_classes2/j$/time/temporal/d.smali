.class final enum Lj$/time/temporal/d;
.super Lj$/time/temporal/g;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lj$/time/temporal/g;-><init>(Ljava/lang/String;ILj$/time/temporal/b;)V

    return-void
.end method


# virtual methods
.method public a()Lj$/time/temporal/A;
    .locals 4

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x4

    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/A;->i(JJ)Lj$/time/temporal/A;

    move-result-object v0

    return-object v0
.end method

.method public d(Lj$/time/temporal/k;)J
    .locals 4

    invoke-virtual {p0, p1}, Lj$/time/temporal/d;->e(Lj$/time/temporal/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->e(Lj$/time/temporal/o;)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3

    div-long/2addr v0, v2

    return-wide v0

    :cond_0
    new-instance p1, Lj$/time/temporal/z;

    const-string v0, "Unsupported field: QuarterOfYear"

    invoke-direct {p1, v0}, Lj$/time/temporal/z;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lj$/time/temporal/k;)Z
    .locals 1

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v0}, Lj$/time/temporal/k;->i(Lj$/time/temporal/o;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    invoke-static {p1}, Lj$/time/chrono/d;->b(Lj$/time/temporal/k;)Lj$/time/chrono/g;

    move-result-object p1

    sget-object v0, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    check-cast p1, Lj$/time/chrono/a;

    invoke-virtual {p1, v0}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Lj$/time/temporal/j;J)Lj$/time/temporal/j;
    .locals 5

    invoke-virtual {p0, p1}, Lj$/time/temporal/d;->d(Lj$/time/temporal/k;)J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/temporal/d;->a()Lj$/time/temporal/A;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p0}, Lj$/time/temporal/A;->b(JLj$/time/temporal/o;)J

    sget-object v2, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-interface {p1, v2}, Lj$/time/temporal/k;->e(Lj$/time/temporal/o;)J

    move-result-wide v3

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x3

    mul-long/2addr p2, v0

    add-long/2addr p2, v3

    invoke-interface {p1, v2, p2, p3}, Lj$/time/temporal/j;->b(Lj$/time/temporal/o;J)Lj$/time/temporal/j;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "QuarterOfYear"

    return-object v0
.end method
