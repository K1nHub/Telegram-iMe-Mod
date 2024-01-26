.class final enum Lj$/time/temporal/f;
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
    .locals 1

    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->a()Lj$/time/temporal/A;

    move-result-object v0

    return-object v0
.end method

.method public d(Lj$/time/temporal/k;)J
    .locals 2

    invoke-virtual {p0, p1}, Lj$/time/temporal/f;->e(Lj$/time/temporal/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lj$/time/d;->l(Lj$/time/temporal/k;)Lj$/time/d;

    move-result-object p1

    invoke-static {p1}, Lj$/time/temporal/g;->m(Lj$/time/d;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    new-instance p1, Lj$/time/temporal/z;

    const-string v0, "Unsupported field: WeekBasedYear"

    invoke-direct {p1, v0}, Lj$/time/temporal/z;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Lj$/time/temporal/k;)Z
    .locals 1

    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

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
    .locals 4

    invoke-virtual {p0, p1}, Lj$/time/temporal/f;->e(Lj$/time/temporal/k;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lj$/time/temporal/f;->a()Lj$/time/temporal/A;

    move-result-object v0

    sget-object v1, Lj$/time/temporal/g;->WEEK_BASED_YEAR:Lj$/time/temporal/g;

    invoke-virtual {v0, p2, p3, v1}, Lj$/time/temporal/A;->a(JLj$/time/temporal/o;)I

    move-result p2

    invoke-static {p1}, Lj$/time/d;->l(Lj$/time/temporal/k;)Lj$/time/d;

    move-result-object p3

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-virtual {p3, v0}, Lj$/time/d;->c(Lj$/time/temporal/o;)I

    move-result v1

    invoke-static {p3}, Lj$/time/temporal/g;->l(Lj$/time/d;)I

    move-result p3

    const/16 v2, 0x35

    const/16 v3, 0x34

    if-ne p3, v2, :cond_0

    invoke-static {p2}, Lj$/time/temporal/g;->n(I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move p3, v3

    :cond_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {p2, v3, v2}, Lj$/time/d;->r(III)Lj$/time/d;

    move-result-object p2

    invoke-virtual {p2, v0}, Lj$/time/d;->c(Lj$/time/temporal/o;)I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr p3, v3

    mul-int/lit8 p3, p3, 0x7

    add-int/2addr p3, v1

    int-to-long v0, p3

    invoke-virtual {p2, v0, v1}, Lj$/time/d;->v(J)Lj$/time/d;

    move-result-object p2

    invoke-interface {p1, p2}, Lj$/time/temporal/j;->a(Lj$/time/temporal/l;)Lj$/time/temporal/j;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lj$/time/temporal/z;

    const-string p2, "Unsupported field: WeekBasedYear"

    invoke-direct {p1, p2}, Lj$/time/temporal/z;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "WeekBasedYear"

    return-object v0
.end method
