.class public final Lj$/time/f;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/temporal/j;
.implements Lj$/time/temporal/l;
.implements Lj$/time/chrono/c;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Lj$/time/f;

.field public static final d:Lj$/time/f;


# instance fields
.field private final a:Lj$/time/d;

.field private final b:Lj$/time/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lj$/time/d;->d:Lj$/time/d;

    sget-object v1, Lj$/time/h;->e:Lj$/time/h;

    invoke-static {v0, v1}, Lj$/time/f;->t(Lj$/time/d;Lj$/time/h;)Lj$/time/f;

    move-result-object v0

    sput-object v0, Lj$/time/f;->c:Lj$/time/f;

    sget-object v0, Lj$/time/d;->e:Lj$/time/d;

    sget-object v1, Lj$/time/h;->f:Lj$/time/h;

    invoke-static {v0, v1}, Lj$/time/f;->t(Lj$/time/d;Lj$/time/h;)Lj$/time/f;

    move-result-object v0

    sput-object v0, Lj$/time/f;->d:Lj$/time/f;

    return-void
.end method

.method private constructor <init>(Lj$/time/d;Lj$/time/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/f;->a:Lj$/time/d;

    iput-object p2, p0, Lj$/time/f;->b:Lj$/time/h;

    return-void
.end method

.method private E(Lj$/time/d;Lj$/time/h;)Lj$/time/f;
    .locals 1

    iget-object v0, p0, Lj$/time/f;->a:Lj$/time/d;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lj$/time/f;->b:Lj$/time/h;

    if-ne v0, p2, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/f;

    invoke-direct {v0, p1, p2}, Lj$/time/f;-><init>(Lj$/time/d;Lj$/time/h;)V

    return-object v0
.end method

.method private k(Lj$/time/f;)I
    .locals 2

    iget-object v0, p0, Lj$/time/f;->a:Lj$/time/d;

    .line 1
    iget-object v1, p1, Lj$/time/f;->a:Lj$/time/d;

    .line 2
    invoke-virtual {v0, v1}, Lj$/time/d;->k(Lj$/time/d;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/time/f;->b:Lj$/time/h;

    .line 3
    iget-object p1, p1, Lj$/time/f;->b:Lj$/time/h;

    .line 4
    invoke-virtual {v0, p1}, Lj$/time/h;->j(Lj$/time/h;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static r(IIIII)Lj$/time/f;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/time/d;->r(III)Lj$/time/d;

    move-result-object p0

    invoke-static {p3, p4}, Lj$/time/h;->o(II)Lj$/time/h;

    move-result-object p1

    new-instance p2, Lj$/time/f;

    invoke-direct {p2, p0, p1}, Lj$/time/f;-><init>(Lj$/time/d;Lj$/time/h;)V

    return-object p2
.end method

.method public static s(IIIIIII)Lj$/time/f;
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/time/d;->r(III)Lj$/time/d;

    move-result-object p0

    invoke-static {p3, p4, p5, p6}, Lj$/time/h;->p(IIII)Lj$/time/h;

    move-result-object p1

    new-instance p2, Lj$/time/f;

    invoke-direct {p2, p0, p1}, Lj$/time/f;-><init>(Lj$/time/d;Lj$/time/h;)V

    return-object p2
.end method

.method public static t(Lj$/time/d;Lj$/time/h;)Lj$/time/f;
    .locals 1

    const-string v0, "date"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "time"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lj$/time/f;

    invoke-direct {v0, p0, p1}, Lj$/time/f;-><init>(Lj$/time/d;Lj$/time/h;)V

    return-object v0
.end method

.method public static u(JILj$/time/o;)Lj$/time/f;
    .locals 5

    const-string v0, "offset"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->j(J)J

    invoke-virtual {p3}, Lj$/time/o;->p()I

    move-result p2

    int-to-long p2, p2

    add-long/2addr p0, p2

    const-wide/32 p2, 0x15180

    invoke-static {p0, p1, p2, p3}, Lj$/lang/d;->e(JJ)J

    move-result-wide v3

    invoke-static {p0, p1, p2, p3}, Lj$/lang/d;->d(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {v3, v4}, Lj$/time/d;->s(J)Lj$/time/d;

    move-result-object p1

    int-to-long p2, p0

    const-wide/32 v3, 0x3b9aca00

    mul-long/2addr p2, v3

    add-long/2addr p2, v1

    invoke-static {p2, p3}, Lj$/time/h;->q(J)Lj$/time/h;

    move-result-object p0

    new-instance p2, Lj$/time/f;

    invoke-direct {p2, p1, p0}, Lj$/time/f;-><init>(Lj$/time/d;Lj$/time/h;)V

    return-object p2
.end method

.method private z(Lj$/time/d;JJJJI)Lj$/time/f;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    or-long v2, p2, p4

    or-long v2, v2, p6

    or-long v2, v2, p8

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, v0, Lj$/time/f;->b:Lj$/time/h;

    :goto_0
    invoke-direct {v0, v1, v2}, Lj$/time/f;->E(Lj$/time/d;Lj$/time/h;)Lj$/time/f;

    move-result-object v1

    return-object v1

    :cond_0
    const-wide v2, 0x4e94914f0000L

    div-long v4, p8, v2

    const-wide/32 v6, 0x15180

    div-long v8, p6, v6

    add-long/2addr v8, v4

    const-wide/16 v4, 0x5a0

    div-long v10, p4, v4

    add-long/2addr v10, v8

    const-wide/16 v8, 0x18

    div-long v12, p2, v8

    add-long/2addr v12, v10

    move/from16 v10, p10

    int-to-long v10, v10

    mul-long/2addr v12, v10

    rem-long v14, p8, v2

    rem-long v6, p6, v6

    const-wide/32 v16, 0x3b9aca00

    mul-long v6, v6, v16

    add-long/2addr v6, v14

    rem-long v4, p4, v4

    const-wide v14, 0xdf8475800L

    mul-long/2addr v4, v14

    add-long/2addr v4, v6

    rem-long v6, p2, v8

    const-wide v8, 0x34630b8a000L

    mul-long/2addr v6, v8

    add-long/2addr v6, v4

    iget-object v4, v0, Lj$/time/f;->b:Lj$/time/h;

    invoke-virtual {v4}, Lj$/time/h;->v()J

    move-result-wide v4

    mul-long/2addr v6, v10

    add-long/2addr v6, v4

    invoke-static {v6, v7, v2, v3}, Lj$/lang/d;->e(JJ)J

    move-result-wide v8

    add-long/2addr v8, v12

    invoke-static {v6, v7, v2, v3}, Lj$/lang/d;->d(JJ)J

    move-result-wide v2

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    iget-object v2, v0, Lj$/time/f;->b:Lj$/time/h;

    goto :goto_1

    :cond_1
    invoke-static {v2, v3}, Lj$/time/h;->q(J)Lj$/time/h;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v8, v9}, Lj$/time/d;->v(J)Lj$/time/d;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public A(Lj$/time/o;)J
    .locals 4

    const-string v0, "offset"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lj$/time/f;->C()Lj$/time/chrono/b;

    move-result-object v0

    check-cast v0, Lj$/time/d;

    invoke-virtual {v0}, Lj$/time/d;->A()J

    move-result-wide v0

    const-wide/32 v2, 0x15180

    mul-long/2addr v0, v2

    invoke-virtual {p0}, Lj$/time/f;->D()Lj$/time/h;

    move-result-object v2

    invoke-virtual {v2}, Lj$/time/h;->w()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p1}, Lj$/time/o;->p()I

    move-result p1

    int-to-long v2, p1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public B()Lj$/time/d;
    .locals 1

    iget-object v0, p0, Lj$/time/f;->a:Lj$/time/d;

    return-object v0
.end method

.method public C()Lj$/time/chrono/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lj$/time/f;->a:Lj$/time/d;

    return-object v0
.end method

.method public D()Lj$/time/h;
    .locals 1

    iget-object v0, p0, Lj$/time/f;->b:Lj$/time/h;

    return-object v0
.end method

.method public F(Lj$/time/temporal/l;)Lj$/time/f;
    .locals 1

    instance-of v0, p1, Lj$/time/d;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/d;

    iget-object v0, p0, Lj$/time/f;->b:Lj$/time/h;

    invoke-direct {p0, p1, v0}, Lj$/time/f;->E(Lj$/time/d;Lj$/time/h;)Lj$/time/f;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of v0, p1, Lj$/time/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/time/f;->a:Lj$/time/d;

    check-cast p1, Lj$/time/h;

    invoke-direct {p0, v0, p1}, Lj$/time/f;->E(Lj$/time/d;Lj$/time/h;)Lj$/time/f;

    move-result-object p1

    return-object p1

    :cond_1
    instance-of v0, p1, Lj$/time/f;

    if-eqz v0, :cond_2

    check-cast p1, Lj$/time/f;

    return-object p1

    :cond_2
    invoke-interface {p1, p0}, Lj$/time/temporal/l;->h(Lj$/time/temporal/j;)Lj$/time/temporal/j;

    move-result-object p1

    check-cast p1, Lj$/time/f;

    return-object p1
.end method

.method public G(Lj$/time/temporal/o;J)Lj$/time/f;
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/f;->a:Lj$/time/d;

    iget-object v1, p0, Lj$/time/f;->b:Lj$/time/h;

    invoke-virtual {v1, p1, p2, p3}, Lj$/time/h;->x(Lj$/time/temporal/o;J)Lj$/time/h;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lj$/time/f;->E(Lj$/time/d;Lj$/time/h;)Lj$/time/f;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lj$/time/f;->a:Lj$/time/d;

    invoke-virtual {v0, p1, p2, p3}, Lj$/time/d;->B(Lj$/time/temporal/o;J)Lj$/time/d;

    move-result-object p1

    iget-object p2, p0, Lj$/time/f;->b:Lj$/time/h;

    invoke-direct {p0, p1, p2}, Lj$/time/f;->E(Lj$/time/d;Lj$/time/h;)Lj$/time/f;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1, p0, p2, p3}, Lj$/time/temporal/o;->f(Lj$/time/temporal/j;J)Lj$/time/temporal/j;

    move-result-object p1

    check-cast p1, Lj$/time/f;

    return-object p1
.end method

.method public bridge synthetic a(Lj$/time/temporal/l;)Lj$/time/temporal/j;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/time/f;->F(Lj$/time/temporal/l;)Lj$/time/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lj$/time/temporal/o;J)Lj$/time/temporal/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/f;->G(Lj$/time/temporal/o;J)Lj$/time/f;

    move-result-object p1

    return-object p1
.end method

.method public c(Lj$/time/temporal/o;)I
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/f;->b:Lj$/time/h;

    invoke-virtual {v0, p1}, Lj$/time/h;->c(Lj$/time/temporal/o;)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/f;->a:Lj$/time/d;

    invoke-virtual {v0, p1}, Lj$/time/d;->c(Lj$/time/temporal/o;)I

    move-result p1

    :goto_0
    return p1

    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/n;->a(Lj$/time/temporal/k;Lj$/time/temporal/o;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lj$/time/chrono/c;

    invoke-virtual {p0, p1}, Lj$/time/f;->j(Lj$/time/chrono/c;)I

    move-result p1

    return p1
.end method

.method public d(Lj$/time/temporal/o;)Lj$/time/temporal/A;
    .locals 1

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/f;->b:Lj$/time/h;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {v0, p1}, Lj$/time/temporal/n;->c(Lj$/time/temporal/k;Lj$/time/temporal/o;)Lj$/time/temporal/A;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lj$/time/f;->a:Lj$/time/d;

    invoke-virtual {v0, p1}, Lj$/time/d;->d(Lj$/time/temporal/o;)Lj$/time/temporal/A;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    invoke-interface {p1, p0}, Lj$/time/temporal/o;->g(Lj$/time/temporal/k;)Lj$/time/temporal/A;

    move-result-object p1

    return-object p1
.end method

.method public e(Lj$/time/temporal/o;)J
    .locals 2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lj$/time/temporal/a;

    invoke-virtual {v0}, Lj$/time/temporal/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/time/f;->b:Lj$/time/h;

    invoke-virtual {v0, p1}, Lj$/time/h;->e(Lj$/time/temporal/o;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj$/time/f;->a:Lj$/time/d;

    invoke-virtual {v0, p1}, Lj$/time/d;->e(Lj$/time/temporal/o;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_1
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
    instance-of v1, p1, Lj$/time/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/f;

    iget-object v1, p0, Lj$/time/f;->a:Lj$/time/d;

    iget-object v3, p1, Lj$/time/f;->a:Lj$/time/d;

    invoke-virtual {v1, v3}, Lj$/time/d;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/f;->b:Lj$/time/h;

    iget-object p1, p1, Lj$/time/f;->b:Lj$/time/h;

    invoke-virtual {v1, p1}, Lj$/time/h;->equals(Ljava/lang/Object;)Z

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

.method public bridge synthetic f(JLj$/time/temporal/y;)Lj$/time/temporal/j;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/f;->v(JLj$/time/temporal/y;)Lj$/time/f;

    move-result-object p1

    return-object p1
.end method

.method public g(Lj$/time/temporal/x;)Ljava/lang/Object;
    .locals 1

    sget v0, Lj$/time/temporal/w;->a:I

    sget-object v0, Lj$/time/temporal/u;->a:Lj$/time/temporal/u;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lj$/time/f;->a:Lj$/time/d;

    return-object p1

    .line 1
    :cond_0
    sget-object v0, Lj$/time/temporal/p;->a:Lj$/time/temporal/p;

    if-eq p1, v0, :cond_5

    sget-object v0, Lj$/time/temporal/t;->a:Lj$/time/temporal/t;

    if-eq p1, v0, :cond_5

    sget-object v0, Lj$/time/temporal/s;->a:Lj$/time/temporal/s;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lj$/time/temporal/v;->a:Lj$/time/temporal/v;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lj$/time/f;->D()Lj$/time/h;

    move-result-object p1

    goto :goto_1

    :cond_2
    sget-object v0, Lj$/time/temporal/q;->a:Lj$/time/temporal/q;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lj$/time/f;->l()Lj$/time/chrono/g;

    sget-object p1, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    goto :goto_1

    :cond_3
    sget-object v0, Lj$/time/temporal/r;->a:Lj$/time/temporal/r;

    if-ne p1, v0, :cond_4

    sget-object p1, Lj$/time/temporal/ChronoUnit;->NANOS:Lj$/time/temporal/ChronoUnit;

    goto :goto_1

    :cond_4
    invoke-interface {p1, p0}, Lj$/time/temporal/x;->a(Lj$/time/temporal/k;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public h(Lj$/time/temporal/j;)Lj$/time/temporal/j;
    .locals 3

    .line 1
    sget-object v0, Lj$/time/temporal/a;->EPOCH_DAY:Lj$/time/temporal/a;

    .line 2
    iget-object v1, p0, Lj$/time/f;->a:Lj$/time/d;

    .line 3
    invoke-virtual {v1}, Lj$/time/d;->A()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/j;->b(Lj$/time/temporal/o;J)Lj$/time/temporal/j;

    move-result-object p1

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    .line 4
    iget-object v1, p0, Lj$/time/f;->b:Lj$/time/h;

    .line 5
    invoke-virtual {v1}, Lj$/time/h;->v()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lj$/time/temporal/j;->b(Lj$/time/temporal/o;J)Lj$/time/temporal/j;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lj$/time/f;->a:Lj$/time/d;

    invoke-virtual {v0}, Lj$/time/d;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/f;->b:Lj$/time/h;

    invoke-virtual {v1}, Lj$/time/h;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i(Lj$/time/temporal/o;)Z
    .locals 3

    instance-of v0, p1, Lj$/time/temporal/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/temporal/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lj$/time/temporal/a;->b()Z

    move-result p1

    if-eqz p1, :cond_0

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

.method public j(Lj$/time/chrono/c;)I
    .locals 2

    instance-of v0, p1, Lj$/time/f;

    if-eqz v0, :cond_0

    check-cast p1, Lj$/time/f;

    invoke-direct {p0, p1}, Lj$/time/f;->k(Lj$/time/f;)I

    move-result p1

    return p1

    .line 1
    :cond_0
    invoke-virtual {p0}, Lj$/time/f;->C()Lj$/time/chrono/b;

    move-result-object v0

    check-cast p1, Lj$/time/f;

    invoke-virtual {p1}, Lj$/time/f;->C()Lj$/time/chrono/b;

    move-result-object v1

    check-cast v0, Lj$/time/d;

    invoke-virtual {v0, v1}, Lj$/time/d;->j(Lj$/time/chrono/b;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj$/time/f;->D()Lj$/time/h;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/f;->D()Lj$/time/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/time/h;->j(Lj$/time/h;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lj$/time/f;->l()Lj$/time/chrono/g;

    sget-object v0, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    invoke-virtual {p1}, Lj$/time/f;->l()Lj$/time/chrono/g;

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public l()Lj$/time/chrono/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj$/time/f;->C()Lj$/time/chrono/b;

    move-result-object v0

    check-cast v0, Lj$/time/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lj$/time/f;->b:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->m()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lj$/time/f;->b:Lj$/time/h;

    invoke-virtual {v0}, Lj$/time/h;->n()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lj$/time/f;->a:Lj$/time/d;

    invoke-virtual {v0}, Lj$/time/d;->p()I

    move-result v0

    return v0
.end method

.method public p(Lj$/time/chrono/c;)Z
    .locals 7

    instance-of v0, p1, Lj$/time/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/f;

    invoke-direct {p0, p1}, Lj$/time/f;->k(Lj$/time/f;)I

    move-result p1

    if-lez p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Lj$/time/f;->C()Lj$/time/chrono/b;

    move-result-object v0

    check-cast v0, Lj$/time/d;

    invoke-virtual {v0}, Lj$/time/d;->A()J

    move-result-wide v3

    check-cast p1, Lj$/time/f;

    invoke-virtual {p1}, Lj$/time/f;->C()Lj$/time/chrono/b;

    move-result-object v0

    check-cast v0, Lj$/time/d;

    invoke-virtual {v0}, Lj$/time/d;->A()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lj$/time/f;->D()Lj$/time/h;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/h;->v()J

    move-result-wide v3

    invoke-virtual {p1}, Lj$/time/f;->D()Lj$/time/h;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/h;->v()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public q(Lj$/time/chrono/c;)Z
    .locals 7

    instance-of v0, p1, Lj$/time/f;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lj$/time/f;

    invoke-direct {p0, p1}, Lj$/time/f;->k(Lj$/time/f;)I

    move-result p1

    if-gez p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1
    :cond_1
    invoke-virtual {p0}, Lj$/time/f;->C()Lj$/time/chrono/b;

    move-result-object v0

    check-cast v0, Lj$/time/d;

    invoke-virtual {v0}, Lj$/time/d;->A()J

    move-result-wide v3

    check-cast p1, Lj$/time/f;

    invoke-virtual {p1}, Lj$/time/f;->C()Lj$/time/chrono/b;

    move-result-object v0

    check-cast v0, Lj$/time/d;

    invoke-virtual {v0}, Lj$/time/d;->A()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lj$/time/f;->D()Lj$/time/h;

    move-result-object v0

    invoke-virtual {v0}, Lj$/time/h;->v()J

    move-result-wide v3

    invoke-virtual {p1}, Lj$/time/f;->D()Lj$/time/h;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/h;->v()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lj$/time/f;->a:Lj$/time/d;

    invoke-virtual {v1}, Lj$/time/d;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/f;->b:Lj$/time/h;

    invoke-virtual {v1}, Lj$/time/h;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v(JLj$/time/temporal/y;)Lj$/time/f;
    .locals 23

    move-object/from16 v11, p0

    move-wide/from16 v4, p1

    move-object/from16 v0, p3

    instance-of v1, v0, Lj$/time/temporal/ChronoUnit;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lj$/time/temporal/ChronoUnit;

    sget-object v2, Lj$/time/e;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    iget-object v1, v11, Lj$/time/f;->a:Lj$/time/d;

    invoke-virtual {v1, v4, v5, v0}, Lj$/time/d;->u(JLj$/time/temporal/y;)Lj$/time/d;

    move-result-object v0

    iget-object v1, v11, Lj$/time/f;->b:Lj$/time/h;

    invoke-direct {v11, v0, v1}, Lj$/time/f;->E(Lj$/time/d;Lj$/time/h;)Lj$/time/f;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-wide/16 v0, 0x100

    div-long v2, v4, v0

    invoke-virtual {v11, v2, v3}, Lj$/time/f;->w(J)Lj$/time/f;

    move-result-object v12

    rem-long v0, v4, v0

    const-wide/16 v2, 0xc

    mul-long v14, v0, v2

    .line 1
    iget-object v13, v12, Lj$/time/f;->a:Lj$/time/d;

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x1

    invoke-direct/range {v12 .. v22}, Lj$/time/f;->z(Lj$/time/d;JJJJI)Lj$/time/f;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v1, v11, Lj$/time/f;->a:Lj$/time/d;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move-wide v4, v6

    move-wide v6, v8

    move-wide v8, v12

    invoke-direct/range {v0 .. v10}, Lj$/time/f;->z(Lj$/time/d;JJJJI)Lj$/time/f;

    move-result-object v0

    return-object v0

    .line 2
    :pswitch_2
    iget-object v1, v11, Lj$/time/f;->a:Lj$/time/d;

    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v4, p1

    invoke-direct/range {v0 .. v10}, Lj$/time/f;->z(Lj$/time/d;JJJJI)Lj$/time/f;

    move-result-object v0

    return-object v0

    .line 3
    :pswitch_3
    invoke-virtual/range {p0 .. p2}, Lj$/time/f;->y(J)Lj$/time/f;

    move-result-object v0

    return-object v0

    :pswitch_4
    const-wide/32 v0, 0x5265c00

    div-long v2, v4, v0

    invoke-virtual {v11, v2, v3}, Lj$/time/f;->w(J)Lj$/time/f;

    move-result-object v2

    rem-long v0, v4, v0

    const-wide/32 v3, 0xf4240

    mul-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lj$/time/f;->x(J)Lj$/time/f;

    move-result-object v0

    return-object v0

    :pswitch_5
    const-wide v0, 0x141dd76000L

    div-long v2, v4, v0

    invoke-virtual {v11, v2, v3}, Lj$/time/f;->w(J)Lj$/time/f;

    move-result-object v2

    rem-long v0, v4, v0

    const-wide/16 v3, 0x3e8

    mul-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lj$/time/f;->x(J)Lj$/time/f;

    move-result-object v0

    return-object v0

    :pswitch_6
    invoke-virtual/range {p0 .. p2}, Lj$/time/f;->x(J)Lj$/time/f;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0, v11, v4, v5}, Lj$/time/temporal/y;->a(Lj$/time/temporal/j;J)Lj$/time/temporal/j;

    move-result-object v0

    check-cast v0, Lj$/time/f;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public w(J)Lj$/time/f;
    .locals 1

    iget-object v0, p0, Lj$/time/f;->a:Lj$/time/d;

    invoke-virtual {v0, p1, p2}, Lj$/time/d;->v(J)Lj$/time/d;

    move-result-object p1

    iget-object p2, p0, Lj$/time/f;->b:Lj$/time/h;

    invoke-direct {p0, p1, p2}, Lj$/time/f;->E(Lj$/time/d;Lj$/time/h;)Lj$/time/f;

    move-result-object p1

    return-object p1
.end method

.method public x(J)Lj$/time/f;
    .locals 11

    iget-object v1, p0, Lj$/time/f;->a:Lj$/time/d;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Lj$/time/f;->z(Lj$/time/d;JJJJI)Lj$/time/f;

    move-result-object p1

    return-object p1
.end method

.method public y(J)Lj$/time/f;
    .locals 11

    iget-object v1, p0, Lj$/time/f;->a:Lj$/time/d;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v10}, Lj$/time/f;->z(Lj$/time/d;JJJJI)Lj$/time/f;

    move-result-object p1

    return-object p1
.end method
