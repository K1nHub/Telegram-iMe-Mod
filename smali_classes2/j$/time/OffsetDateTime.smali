.class public final Lj$/time/OffsetDateTime;
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
        "Lj$/time/OffsetDateTime;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Lj$/time/f;

.field private final b:Lj$/time/o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lj$/time/f;->c:Lj$/time/f;

    sget-object v1, Lj$/time/o;->g:Lj$/time/o;

    .line 1
    new-instance v2, Lj$/time/OffsetDateTime;

    invoke-direct {v2, v0, v1}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/f;Lj$/time/o;)V

    .line 2
    sget-object v0, Lj$/time/f;->d:Lj$/time/f;

    sget-object v1, Lj$/time/o;->f:Lj$/time/o;

    .line 3
    new-instance v2, Lj$/time/OffsetDateTime;

    invoke-direct {v2, v0, v1}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/f;Lj$/time/o;)V

    return-void
.end method

.method private constructor <init>(Lj$/time/f;Lj$/time/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dateTime"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    const-string p1, "offset"

    .line 3
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    return-void
.end method

.method public static j(Lj$/time/temporal/k;)Lj$/time/OffsetDateTime;
    .locals 4

    instance-of v0, p0, Lj$/time/OffsetDateTime;

    if-eqz v0, :cond_0

    check-cast p0, Lj$/time/OffsetDateTime;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lj$/time/o;->o(Lj$/time/temporal/k;)Lj$/time/o;

    move-result-object v0

    sget v1, Lj$/time/temporal/w;->a:I

    sget-object v1, Lj$/time/temporal/u;->a:Lj$/time/temporal/u;

    invoke-interface {p0, v1}, Lj$/time/temporal/k;->g(Lj$/time/temporal/x;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj$/time/d;

    sget-object v2, Lj$/time/temporal/v;->a:Lj$/time/temporal/v;

    invoke-interface {p0, v2}, Lj$/time/temporal/k;->g(Lj$/time/temporal/x;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/h;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 1
    invoke-static {v1, v2}, Lj$/time/f;->t(Lj$/time/d;Lj$/time/h;)Lj$/time/f;

    move-result-object v1

    new-instance v2, Lj$/time/OffsetDateTime;

    invoke-direct {v2, v1, v0}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/f;Lj$/time/o;)V

    return-object v2

    .line 2
    :cond_1
    invoke-static {p0}, Lj$/time/Instant;->k(Lj$/time/temporal/k;)Lj$/time/Instant;

    move-result-object v1

    invoke-static {v1, v0}, Lj$/time/OffsetDateTime;->k(Lj$/time/Instant;Lj$/time/n;)Lj$/time/OffsetDateTime;

    move-result-object p0
    :try_end_0
    .catch Lj$/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain OffsetDateTime from TemporalAccessor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static k(Lj$/time/Instant;Lj$/time/n;)Lj$/time/OffsetDateTime;
    .locals 2

    const-string v0, "instant"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "zone"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    check-cast p1, Lj$/time/o;

    .line 3
    invoke-static {p1}, Lj$/time/zone/c;->i(Lj$/time/o;)Lj$/time/zone/c;

    move-result-object p1

    .line 4
    invoke-virtual {p1, p0}, Lj$/time/zone/c;->d(Lj$/time/Instant;)Lj$/time/o;

    move-result-object p1

    invoke-virtual {p0}, Lj$/time/Instant;->getEpochSecond()J

    move-result-wide v0

    invoke-virtual {p0}, Lj$/time/Instant;->getNano()I

    move-result p0

    invoke-static {v0, v1, p0, p1}, Lj$/time/f;->u(JILj$/time/o;)Lj$/time/f;

    move-result-object p0

    new-instance v0, Lj$/time/OffsetDateTime;

    invoke-direct {v0, p0, p1}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/f;Lj$/time/o;)V

    return-object v0
.end method

.method private n(Lj$/time/f;Lj$/time/o;)Lj$/time/OffsetDateTime;
    .locals 1

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    invoke-virtual {v0, p2}, Lj$/time/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/OffsetDateTime;

    invoke-direct {v0, p1, p2}, Lj$/time/OffsetDateTime;-><init>(Lj$/time/f;Lj$/time/o;)V

    return-object v0
.end method

.method public static parse(Ljava/lang/CharSequence;)Lj$/time/OffsetDateTime;
    .locals 2

    sget-object v0, Lj$/time/format/a;->i:Lj$/time/format/a;

    const-string v1, "formatter"

    .line 1
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v1, Lj$/time/k;->a:Lj$/time/k;

    invoke-virtual {v0, p0, v1}, Lj$/time/format/a;->f(Ljava/lang/CharSequence;Lj$/time/temporal/x;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj$/time/OffsetDateTime;

    return-object p0
.end method


# virtual methods
.method public a(Lj$/time/temporal/l;)Lj$/time/temporal/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    invoke-virtual {v0, p1}, Lj$/time/f;->F(Lj$/time/temporal/l;)Lj$/time/f;

    move-result-object p1

    iget-object v0, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    invoke-direct {p0, p1, v0}, Lj$/time/OffsetDateTime;->n(Lj$/time/f;Lj$/time/o;)Lj$/time/OffsetDateTime;

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

    sget-object v1, Lj$/time/OffsetDateTime$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/f;->G(Lj$/time/temporal/o;J)Lj$/time/f;

    move-result-object p1

    iget-object p2, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    invoke-virtual {v0, p2, p3}, Lj$/time/temporal/a;->i(J)I

    move-result p2

    invoke-static {p2}, Lj$/time/o;->s(I)Lj$/time/o;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lj$/time/OffsetDateTime;->n(Lj$/time/f;Lj$/time/o;)Lj$/time/OffsetDateTime;

    move-result-object p1

    goto :goto_1

    .line 2
    :cond_1
    iget-object p1, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    invoke-virtual {p1}, Lj$/time/f;->m()I

    move-result p1

    int-to-long v0, p1

    .line 3
    invoke-static {p2, p3, v0, v1}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object p1

    iget-object p2, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    invoke-static {p1, p2}, Lj$/time/OffsetDateTime;->k(Lj$/time/Instant;Lj$/time/n;)Lj$/time/OffsetDateTime;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/o;->f(Lj$/time/temporal/j;J)Lj$/time/temporal/j;

    move-result-object p1

    check-cast p1, Lj$/time/OffsetDateTime;

    :goto_1
    return-object p1
.end method

.method public c(Lj$/time/temporal/o;)I
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_2

    sget-object v0, Lj$/time/OffsetDateTime$a;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    invoke-virtual {v0, p1}, Lj$/time/f;->c(Lj$/time/temporal/o;)I

    move-result p1

    return p1

    .line 1
    :cond_0
    iget-object p1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

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
    invoke-static {p0, p1}, Lj$/time/temporal/n;->a(Lj$/time/temporal/k;Lj$/time/temporal/o;)I

    move-result p1

    return p1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lj$/time/OffsetDateTime;

    .line 1
    iget-object v0, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    iget-object v1, p1, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    .line 2
    invoke-virtual {v0, v1}, Lj$/time/o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    iget-object v1, p1, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    .line 4
    invoke-virtual {v0, v1}, Lj$/time/f;->j(Lj$/time/chrono/c;)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->l()J

    move-result-wide v0

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->l()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->m()Lj$/time/h;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/h;->m()I

    move-result v0

    invoke-virtual {p1}, Lj$/time/OffsetDateTime;->m()Lj$/time/h;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/h;->m()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    iget-object p1, p1, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    .line 6
    invoke-virtual {v0, p1}, Lj$/time/f;->j(Lj$/time/chrono/c;)I

    move-result v0

    :cond_2
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
    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

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

    sget-object v0, Lj$/time/OffsetDateTime$a;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    invoke-virtual {v0, p1}, Lj$/time/f;->e(Lj$/time/temporal/o;)J

    move-result-wide v0

    return-wide v0

    .line 1
    :cond_0
    iget-object p1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    .line 2
    invoke-virtual {p1}, Lj$/time/o;->p()I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->l()J

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
    instance-of v1, p1, Lj$/time/OffsetDateTime;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/OffsetDateTime;

    iget-object v1, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    iget-object v3, p1, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    invoke-virtual {v1, v3}, Lj$/time/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    iget-object p1, p1, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    invoke-virtual {v1, p1}, Lj$/time/o;->equals(Ljava/lang/Object;)Z

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
    .locals 1

    .line 1
    instance-of v0, p3, Lj$/time/temporal/ChronoUnit;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/f;->v(JLj$/time/temporal/y;)Lj$/time/f;

    move-result-object p1

    iget-object p2, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    invoke-direct {p0, p1, p2}, Lj$/time/OffsetDateTime;->n(Lj$/time/f;Lj$/time/o;)Lj$/time/OffsetDateTime;

    move-result-object p1

    goto :goto_0

    :cond_0
    check-cast p3, Lj$/time/temporal/ChronoUnit;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/OffsetDateTime;->f(JLj$/time/temporal/y;)Lj$/time/temporal/j;

    move-result-object p1

    .line 3
    check-cast p1, Lj$/time/OffsetDateTime;

    :goto_0
    return-object p1
.end method

.method public g(Lj$/time/temporal/x;)Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/time/temporal/w;->a:I

    sget-object v0, Lj$/time/temporal/s;->a:Lj$/time/temporal/s;

    if-eq p1, v0, :cond_6

    sget-object v0, Lj$/time/temporal/t;->a:Lj$/time/temporal/t;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lj$/time/temporal/p;->a:Lj$/time/temporal/p;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object v0, Lj$/time/temporal/u;->a:Lj$/time/temporal/u;

    if-ne p1, v0, :cond_2

    .line 1
    iget-object p1, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    invoke-virtual {p1}, Lj$/time/f;->B()Lj$/time/d;

    move-result-object p1

    return-object p1

    .line 2
    :cond_2
    sget-object v0, Lj$/time/temporal/v;->a:Lj$/time/temporal/v;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->m()Lj$/time/h;

    move-result-object p1

    return-object p1

    :cond_3
    sget-object v0, Lj$/time/temporal/q;->a:Lj$/time/temporal/q;

    if-ne p1, v0, :cond_4

    sget-object p1, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    return-object p1

    :cond_4
    sget-object v0, Lj$/time/temporal/r;->a:Lj$/time/temporal/r;

    if-ne p1, v0, :cond_5

    sget-object p1, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    return-object p1

    :cond_5
    invoke-interface {p1, p0}, Lj$/time/temporal/x;->a(Lj$/time/temporal/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_6
    :goto_0
    iget-object p1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    return-object p1
.end method

.method public h(Lj$/time/temporal/j;)Lj$/time/temporal/j;
    .locals 3

    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    .line 1
    iget-object v1, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    invoke-virtual {v1}, Lj$/time/f;->B()Lj$/time/d;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Lj$/time/d;->A()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/j;->b(Lj$/time/temporal/o;J)Lj$/time/temporal/j;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/OffsetDateTime;->m()Lj$/time/h;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/h;->v()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/j;->b(Lj$/time/temporal/o;J)Lj$/time/temporal/j;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    .line 3
    iget-object v1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    .line 4
    invoke-virtual {v1}, Lj$/time/o;->p()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/j;->b(Lj$/time/temporal/o;J)Lj$/time/temporal/j;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    invoke-virtual {v0}, Lj$/time/f;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    invoke-virtual {v1}, Lj$/time/o;->hashCode()I

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

.method public l()J
    .locals 2

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    iget-object v1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    invoke-virtual {v0, v1}, Lj$/time/f;->A(Lj$/time/o;)J

    move-result-wide v0

    return-wide v0
.end method

.method public m()Lj$/time/h;
    .locals 1

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    invoke-virtual {v0}, Lj$/time/f;->D()Lj$/time/h;

    move-result-object v0

    return-object v0
.end method

.method public toInstant()Lj$/time/Instant;
    .locals 5

    iget-object v0, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    iget-object v1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    .line 1
    invoke-virtual {v0, v1}, Lj$/time/f;->A(Lj$/time/o;)J

    move-result-wide v1

    invoke-virtual {v0}, Lj$/time/f;->D()Lj$/time/h;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/h;->m()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Lj$/time/Instant;->ofEpochSecond(JJ)Lj$/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj$/time/OffsetDateTime;->a:Lj$/time/f;

    invoke-virtual {v1}, Lj$/time/f;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/OffsetDateTime;->b:Lj$/time/o;

    invoke-virtual {v1}, Lj$/time/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
