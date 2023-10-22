.class public final Lj$/time/r;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/temporal/j;
.implements Lj$/time/chrono/f;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lj$/time/f;

.field private final b:Lj$/time/o;

.field private final c:Lj$/time/n;


# direct methods
.method private constructor <init>(Lj$/time/f;Lj$/time/o;Lj$/time/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/r;->a:Lj$/time/f;

    iput-object p2, p0, Lj$/time/r;->b:Lj$/time/o;

    iput-object p3, p0, Lj$/time/r;->c:Lj$/time/n;

    return-void
.end method

.method private static h(JILj$/time/n;)Lj$/time/r;
    .locals 3

    invoke-virtual {p3}, Lj$/time/n;->k()Lj$/time/zone/c;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {p0, p1, v1, v2}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/zone/c;->d(Lj$/time/Instant;)Lj$/time/o;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lj$/time/f;->u(JILj$/time/o;)Lj$/time/f;

    move-result-object p0

    new-instance p1, Lj$/time/r;

    invoke-direct {p1, p0, v0, p3}, Lj$/time/r;-><init>(Lj$/time/f;Lj$/time/o;Lj$/time/n;)V

    return-object p1
.end method

.method public static m(Lj$/time/Instant;Lj$/time/n;)Lj$/time/r;
    .locals 2

    const-string v0, "instant"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/Instant;->getNano()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lj$/time/r;->h(JILj$/time/n;)Lj$/time/r;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lj$/time/f;Lj$/time/n;Lj$/time/o;)Lj$/time/r;
    .locals 5

    const-string v0, "localDateTime"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    instance-of v0, p1, Lj$/time/o;

    if-eqz v0, :cond_0

    new-instance p2, Lj$/time/r;

    move-object v0, p1

    check-cast v0, Lj$/time/o;

    invoke-direct {p2, p0, v0, p1}, Lj$/time/r;-><init>(Lj$/time/f;Lj$/time/o;Lj$/time/n;)V

    return-object p2

    :cond_0
    invoke-virtual {p1}, Lj$/time/n;->k()Lj$/time/zone/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lj$/time/zone/c;->g(Lj$/time/f;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj$/time/o;

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, p0}, Lj$/time/zone/c;->f(Lj$/time/f;)Lj$/time/zone/a;

    move-result-object p2

    invoke-virtual {p2}, Lj$/time/zone/a;->c()Lj$/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/Duration;->b()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lj$/time/f;->y(J)Lj$/time/f;

    move-result-object p0

    invoke-virtual {p2}, Lj$/time/zone/a;->e()Lj$/time/o;

    move-result-object p2

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lj$/time/o;

    const-string v0, "offset"

    .line 3
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    :goto_0
    new-instance v0, Lj$/time/r;

    invoke-direct {v0, p0, p2, p1}, Lj$/time/r;-><init>(Lj$/time/f;Lj$/time/o;Lj$/time/n;)V

    return-object v0
.end method

.method private o(Lj$/time/f;)Lj$/time/r;
    .locals 2

    iget-object v0, p0, Lj$/time/r;->c:Lj$/time/n;

    iget-object v1, p0, Lj$/time/r;->b:Lj$/time/o;

    invoke-static {p1, v0, v1}, Lj$/time/r;->n(Lj$/time/f;Lj$/time/n;Lj$/time/o;)Lj$/time/r;

    move-result-object p1

    return-object p1
.end method

.method private p(Lj$/time/o;)Lj$/time/r;
    .locals 3

    iget-object v0, p0, Lj$/time/r;->b:Lj$/time/o;

    invoke-virtual {p1, v0}, Lj$/time/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/time/r;->c:Lj$/time/n;

    invoke-virtual {v0}, Lj$/time/n;->k()Lj$/time/zone/c;

    move-result-object v0

    iget-object v1, p0, Lj$/time/r;->a:Lj$/time/f;

    .line 1
    invoke-virtual {v0, v1}, Lj$/time/zone/c;->g(Lj$/time/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lj$/time/r;

    iget-object v1, p0, Lj$/time/r;->a:Lj$/time/f;

    iget-object v2, p0, Lj$/time/r;->c:Lj$/time/n;

    invoke-direct {v0, v1, p1, v2}, Lj$/time/r;-><init>(Lj$/time/f;Lj$/time/o;Lj$/time/n;)V

    return-object v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a(Lj$/time/temporal/l;)Lj$/time/temporal/j;
    .locals 2

    .line 1
    check-cast p1, Lj$/time/d;

    iget-object v0, p0, Lj$/time/r;->a:Lj$/time/f;

    invoke-virtual {v0}, Lj$/time/f;->D()Lj$/time/h;

    move-result-object v0

    invoke-static {p1, v0}, Lj$/time/f;->t(Lj$/time/d;Lj$/time/h;)Lj$/time/f;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lj$/time/r;->c:Lj$/time/n;

    iget-object v1, p0, Lj$/time/r;->b:Lj$/time/o;

    invoke-static {p1, v0, v1}, Lj$/time/r;->n(Lj$/time/f;Lj$/time/n;Lj$/time/o;)Lj$/time/r;

    move-result-object p1

    return-object p1
.end method

.method public b(Lj$/time/temporal/o;J)Lj$/time/temporal/j;
    .locals 3

    .line 1
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    sget-object v1, Lj$/time/q;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lj$/time/r;->a:Lj$/time/f;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/f;->G(Lj$/time/temporal/o;J)Lj$/time/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/r;->o(Lj$/time/f;)Lj$/time/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/a;->i(J)I

    move-result p1

    invoke-static {p1}, Lj$/time/o;->s(I)Lj$/time/o;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/r;->p(Lj$/time/o;)Lj$/time/r;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lj$/time/r;->a:Lj$/time/f;

    invoke-virtual {p1}, Lj$/time/f;->m()I

    move-result p1

    .line 3
    iget-object v0, p0, Lj$/time/r;->c:Lj$/time/n;

    invoke-static {p2, p3, p1, v0}, Lj$/time/r;->h(JILj$/time/n;)Lj$/time/r;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/o;->f(Lj$/time/temporal/j;J)Lj$/time/temporal/j;

    move-result-object p1

    check-cast p1, Lj$/time/r;

    :goto_0
    return-object p1
.end method

.method public c(Lj$/time/temporal/o;)I
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/q;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lj$/time/r;->a:Lj$/time/f;

    invoke-virtual {v0, p1}, Lj$/time/f;->c(Lj$/time/temporal/o;)I

    move-result p1

    return p1

    .line 1
    :cond_0
    iget-object p1, p0, Lj$/time/r;->b:Lj$/time/o;

    .line 2
    invoke-virtual {p1}, Lj$/time/o;->p()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Lj$/time/temporal/z;

    const-string v0, "Invalid field \'InstantSeconds\' for get() method, use getLong() instead"

    invoke-direct {p1, v0}, Lj$/time/temporal/z;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p0, p1}, Lj$/time/chrono/d;->a(Lj$/time/chrono/f;Lj$/time/temporal/o;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lj$/time/chrono/f;

    .line 2
    invoke-virtual {p0}, Lj$/time/r;->q()J

    move-result-wide v0

    check-cast p1, Lj$/time/r;

    invoke-virtual {p1}, Lj$/time/r;->q()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/time/r;->t()Lj$/time/h;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/h;->m()I

    move-result v0

    invoke-virtual {p1}, Lj$/time/r;->t()Lj$/time/h;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/h;->m()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/time/r;->s()Lj$/time/chrono/c;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/r;->s()Lj$/time/chrono/c;

    move-result-object v1

    check-cast v0, Lj$/time/f;

    invoke-virtual {v0, v1}, Lj$/time/f;->j(Lj$/time/chrono/c;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/time/r;->l()Lj$/time/n;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/n;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/r;->l()Lj$/time/n;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/n;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/time/r;->j()Lj$/time/chrono/g;

    sget-object v0, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    invoke-virtual {p1}, Lj$/time/r;->j()Lj$/time/chrono/g;

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public d(Lj$/time/temporal/o;)Lj$/time/temporal/A;
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/r;->a:Lj$/time/f;

    invoke-virtual {v0, p1}, Lj$/time/f;->d(Lj$/time/temporal/o;)Lj$/time/temporal/A;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Lj$/time/temporal/o;->a()Lj$/time/temporal/A;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->g(Lj$/time/temporal/k;)Lj$/time/temporal/A;

    move-result-object p1

    return-object p1
.end method

.method public e(Lj$/time/temporal/o;)J
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/q;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lj$/time/r;->a:Lj$/time/f;

    invoke-virtual {v0, p1}, Lj$/time/f;->e(Lj$/time/temporal/o;)J

    move-result-wide v0

    return-wide v0

    .line 1
    :cond_0
    iget-object p1, p0, Lj$/time/r;->b:Lj$/time/o;

    .line 2
    invoke-virtual {p1}, Lj$/time/o;->p()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lj$/time/r;->q()J

    move-result-wide v0

    return-wide v0

    :cond_2
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
    instance-of v1, p1, Lj$/time/r;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/r;

    iget-object v1, p0, Lj$/time/r;->a:Lj$/time/f;

    iget-object v3, p1, Lj$/time/r;->a:Lj$/time/f;

    invoke-virtual {v1, v3}, Lj$/time/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/r;->b:Lj$/time/o;

    iget-object v3, p1, Lj$/time/r;->b:Lj$/time/o;

    invoke-virtual {v1, v3}, Lj$/time/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/r;->c:Lj$/time/n;

    iget-object p1, p1, Lj$/time/r;->c:Lj$/time/n;

    invoke-virtual {v1, p1}, Lj$/time/n;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

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

    check-cast p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Lj$/time/temporal/ChronoUnit;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/r;->a:Lj$/time/f;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/f;->v(JLj$/time/temporal/y;)Lj$/time/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lj$/time/r;->o(Lj$/time/f;)Lj$/time/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/r;->a:Lj$/time/f;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/f;->v(JLj$/time/temporal/y;)Lj$/time/f;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lj$/time/r;->b:Lj$/time/o;

    iget-object p3, p0, Lj$/time/r;->c:Lj$/time/n;

    const-string v0, "localDateTime"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "offset"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p3}, Lj$/time/n;->k()Lj$/time/zone/c;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lj$/time/zone/c;->g(Lj$/time/f;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lj$/time/r;

    invoke-direct {v0, p1, p2, p3}, Lj$/time/r;-><init>(Lj$/time/f;Lj$/time/o;Lj$/time/n;)V

    move-object p1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lj$/time/f;->A(Lj$/time/o;)J

    move-result-wide v0

    invoke-virtual {p1}, Lj$/time/f;->m()I

    move-result p1

    invoke-static {v0, v1, p1, p3}, Lj$/time/r;->h(JILj$/time/n;)Lj$/time/r;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/r;->f(JLj$/time/temporal/y;)Lj$/time/temporal/j;

    move-result-object p1

    .line 9
    check-cast p1, Lj$/time/r;

    :goto_0
    return-object p1
.end method

.method public g(Lj$/time/temporal/x;)Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/time/temporal/w;->a:I

    sget-object v0, Lj$/time/temporal/u;->a:Lj$/time/temporal/u;

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lj$/time/r;->a:Lj$/time/f;

    invoke-virtual {p1}, Lj$/time/f;->B()Lj$/time/d;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lj$/time/temporal/t;->a:Lj$/time/temporal/t;

    if-eq p1, v0, :cond_6

    sget-object v0, Lj$/time/temporal/p;->a:Lj$/time/temporal/p;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lj$/time/temporal/s;->a:Lj$/time/temporal/s;

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lj$/time/r;->b:Lj$/time/o;

    goto :goto_1

    .line 4
    :cond_2
    sget-object v0, Lj$/time/temporal/v;->a:Lj$/time/temporal/v;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lj$/time/r;->t()Lj$/time/h;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget-object v0, Lj$/time/temporal/q;->a:Lj$/time/temporal/q;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lj$/time/r;->j()Lj$/time/chrono/g;

    sget-object p1, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    goto :goto_1

    :cond_4
    sget-object v0, Lj$/time/temporal/r;->a:Lj$/time/temporal/r;

    if-ne p1, v0, :cond_5

    sget-object p1, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    goto :goto_1

    :cond_5
    invoke-interface {p1, p0}, Lj$/time/temporal/x;->a(Lj$/time/temporal/k;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 5
    :cond_6
    :goto_0
    iget-object p1, p0, Lj$/time/r;->c:Lj$/time/n;

    :goto_1
    return-object p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lj$/time/r;->a:Lj$/time/f;

    invoke-virtual {v0}, Lj$/time/f;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/r;->b:Lj$/time/o;

    invoke-virtual {v1}, Lj$/time/o;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/r;->c:Lj$/time/n;

    invoke-virtual {v1}, Lj$/time/n;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i(Lj$/time/temporal/o;)Z
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lj$/time/temporal/o;->e(Lj$/time/temporal/k;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public j()Lj$/time/chrono/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj$/time/r;->r()Lj$/time/chrono/b;

    move-result-object v0

    check-cast v0, Lj$/time/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    return-object v0
.end method

.method public k()Lj$/time/o;
    .locals 1

    iget-object v0, p0, Lj$/time/r;->b:Lj$/time/o;

    return-object v0
.end method

.method public l()Lj$/time/n;
    .locals 1

    iget-object v0, p0, Lj$/time/r;->c:Lj$/time/n;

    return-object v0
.end method

.method public q()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lj$/time/r;->r()Lj$/time/chrono/b;

    move-result-object v0

    check-cast v0, Lj$/time/d;

    invoke-virtual {v0}, Lj$/time/d;->A()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lj$/time/r;->t()Lj$/time/h;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/h;->w()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Lj$/time/r;->k()Lj$/time/o;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/o;->p()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public r()Lj$/time/chrono/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lj$/time/r;->a:Lj$/time/f;

    invoke-virtual {v0}, Lj$/time/f;->B()Lj$/time/d;

    move-result-object v0

    return-object v0
.end method

.method public s()Lj$/time/chrono/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lj$/time/r;->a:Lj$/time/f;

    return-object v0
.end method

.method public t()Lj$/time/h;
    .locals 1

    iget-object v0, p0, Lj$/time/r;->a:Lj$/time/f;

    invoke-virtual {v0}, Lj$/time/f;->D()Lj$/time/h;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj$/time/r;->a:Lj$/time/f;

    invoke-virtual {v1}, Lj$/time/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/r;->b:Lj$/time/o;

    invoke-virtual {v1}, Lj$/time/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lj$/time/r;->b:Lj$/time/o;

    iget-object v2, p0, Lj$/time/r;->c:Lj$/time/n;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lj$/time/r;->c:Lj$/time/n;

    invoke-virtual {v0}, Lj$/time/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
