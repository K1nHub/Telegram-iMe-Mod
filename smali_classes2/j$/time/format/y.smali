.class final Lj$/time/format/y;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/temporal/k;


# instance fields
.field final a:Ljava/util/Map;

.field b:Lj$/time/n;

.field c:Lj$/time/chrono/g;

.field d:Z

.field private e:Lj$/time/format/z;

.field private f:Lj$/time/chrono/b;

.field private g:Lj$/time/h;

.field h:Lj$/time/l;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v0, Lj$/time/l;->d:Lj$/time/l;

    iput-object v0, p0, Lj$/time/format/y;->h:Lj$/time/l;

    return-void
.end method

.method private h(Lj$/time/temporal/k;)V
    .locals 8

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/temporal/o;

    invoke-interface {p1, v2}, Lj$/time/temporal/k;->i(Lj$/time/temporal/o;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {p1, v2}, Lj$/time/temporal/k;->e(Lj$/time/temporal/o;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    new-instance v0, Lj$/time/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conflict found: Field "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " differs from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " derived from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/time/format/y;->b:Lj$/time/n;

    if-eqz v0, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lj$/time/format/y;->l(Lj$/time/n;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lj$/time/o;->s(I)Lj$/time/o;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private l(Lj$/time/n;)V
    .locals 4

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lj$/time/Instant;->m(J)Lj$/time/Instant;

    move-result-object v0

    iget-object v2, p0, Lj$/time/format/y;->c:Lj$/time/chrono/g;

    check-cast v2, Lj$/time/chrono/h;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {v0, p1}, Lj$/time/r;->m(Lj$/time/Instant;Lj$/time/n;)Lj$/time/r;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lj$/time/r;->r()Lj$/time/chrono/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lj$/time/format/y;->p(Lj$/time/chrono/b;)V

    sget-object v0, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {p1}, Lj$/time/r;->t()Lj$/time/h;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/h;->w()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v1, v0, p1}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    return-void
.end method

.method private m(JJJJ)V
    .locals 2

    iget-object v0, p0, Lj$/time/format/y;->e:Lj$/time/format/z;

    sget-object v1, Lj$/time/format/z;->LENIENT:Lj$/time/format/z;

    if-ne v0, v1, :cond_0

    const-wide v0, 0x34630b8a000L

    invoke-static {p1, p2, v0, v1}, Lj$/lang/d;->f(JJ)J

    move-result-wide p1

    const-wide v0, 0xdf8475800L

    invoke-static {p3, p4, v0, v1}, Lj$/lang/d;->f(JJ)J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Lj$/lang/d;->c(JJ)J

    move-result-wide p1

    const-wide/32 p3, 0x3b9aca00

    invoke-static {p5, p6, p3, p4}, Lj$/lang/d;->f(JJ)J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Lj$/lang/d;->c(JJ)J

    move-result-wide p1

    invoke-static {p1, p2, p7, p8}, Lj$/lang/d;->c(JJ)J

    move-result-wide p1

    const-wide p3, 0x4e94914f0000L

    invoke-static {p1, p2, p3, p4}, Lj$/lang/d;->e(JJ)J

    move-result-wide p5

    long-to-int p5, p5

    invoke-static {p1, p2, p3, p4}, Lj$/lang/d;->d(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lj$/time/h;->q(J)Lj$/time/h;

    move-result-object p1

    invoke-static {p5}, Lj$/time/l;->d(I)Lj$/time/l;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2}, Lj$/time/format/y;->o(Lj$/time/h;Lj$/time/l;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    invoke-virtual {v0, p3, p4}, Lj$/time/temporal/a;->i(J)I

    move-result p3

    sget-object p4, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-virtual {p4, p7, p8}, Lj$/time/temporal/a;->i(J)I

    move-result p4

    iget-object p7, p0, Lj$/time/format/y;->e:Lj$/time/format/z;

    sget-object p8, Lj$/time/format/z;->SMART:Lj$/time/format/z;

    if-ne p7, p8, :cond_1

    const-wide/16 p7, 0x18

    cmp-long p7, p1, p7

    if-nez p7, :cond_1

    if-nez p3, :cond_1

    const-wide/16 p7, 0x0

    cmp-long p7, p5, p7

    if-nez p7, :cond_1

    if-nez p4, :cond_1

    sget-object p1, Lj$/time/h;->g:Lj$/time/h;

    const/4 p2, 0x1

    invoke-static {p2}, Lj$/time/l;->d(I)Lj$/time/l;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object p7, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-virtual {p7, p1, p2}, Lj$/time/temporal/a;->i(J)I

    move-result p1

    sget-object p2, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    invoke-virtual {p2, p5, p6}, Lj$/time/temporal/a;->i(J)I

    move-result p2

    invoke-static {p1, p3, p2, p4}, Lj$/time/h;->p(IIII)Lj$/time/h;

    move-result-object p1

    sget-object p2, Lj$/time/l;->d:Lj$/time/l;

    goto :goto_0

    :goto_1
    return-void
.end method

.method private n()V
    .locals 14

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->CLOCK_HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lj$/time/format/y;->e:Lj$/time/format/z;

    sget-object v6, Lj$/time/format/z;->STRICT:Lj$/time/format/z;

    if-eq v0, v6, :cond_0

    sget-object v6, Lj$/time/format/z;->SMART:Lj$/time/format/z;

    if-ne v0, v6, :cond_1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v1, v4, v5}, Lj$/time/temporal/a;->j(J)J

    :cond_1
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    const-wide/16 v6, 0x18

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    move-wide v4, v2

    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v1, v0, v4}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    :cond_3
    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->CLOCK_HOUR_OF_AMPM:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v4, 0xc

    if-eqz v0, :cond_7

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Lj$/time/format/y;->e:Lj$/time/format/z;

    sget-object v8, Lj$/time/format/z;->STRICT:Lj$/time/format/z;

    if-eq v0, v8, :cond_4

    sget-object v8, Lj$/time/format/z;->SMART:Lj$/time/format/z;

    if-ne v0, v8, :cond_5

    cmp-long v0, v6, v2

    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {v1, v6, v7}, Lj$/time/temporal/a;->j(J)J

    :cond_5
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    cmp-long v8, v6, v4

    if-nez v8, :cond_6

    goto :goto_0

    :cond_6
    move-wide v2, v6

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    :cond_7
    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->AMPM_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_AMPM:Lj$/time/temporal/a;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, p0, Lj$/time/format/y;->e:Lj$/time/format/z;

    sget-object v3, Lj$/time/format/z;->LENIENT:Lj$/time/format/z;

    if-ne v0, v3, :cond_8

    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-static {v6, v7, v4, v5}, Lj$/lang/d;->f(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, v8, v9}, Lj$/lang/d;->c(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    :cond_8
    invoke-virtual {v1, v6, v7}, Lj$/time/temporal/a;->j(J)J

    invoke-virtual {v2, v6, v7}, Lj$/time/temporal/a;->j(J)J

    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    mul-long/2addr v6, v4

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1
    invoke-direct {p0, v1, v0, v2}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    :cond_9
    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->NANO_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v2, 0x3c

    if-eqz v0, :cond_b

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lj$/time/format/y;->e:Lj$/time/format/z;

    sget-object v6, Lj$/time/format/z;->LENIENT:Lj$/time/format/z;

    if-eq v0, v6, :cond_a

    invoke-virtual {v1, v4, v5}, Lj$/time/temporal/a;->j(J)J

    :cond_a
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    const-wide v6, 0x34630b8a000L

    div-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v1, v0, v6}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    sget-object v0, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    const-wide v6, 0xdf8475800L

    div-long v6, v4, v6

    rem-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v1, v0, v6}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    sget-object v0, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    const-wide/32 v6, 0x3b9aca00

    div-long v8, v4, v6

    rem-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v1, v0, v8}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    sget-object v0, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v1, v0, v4}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    :cond_b
    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->MICRO_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/32 v4, 0xf4240

    if-eqz v0, :cond_d

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Lj$/time/format/y;->e:Lj$/time/format/z;

    sget-object v8, Lj$/time/format/z;->LENIENT:Lj$/time/format/z;

    if-eq v0, v8, :cond_c

    invoke-virtual {v1, v6, v7}, Lj$/time/temporal/a;->j(J)J

    :cond_c
    sget-object v0, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    div-long v8, v6, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v1, v0, v8}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    sget-object v0, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    rem-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {p0, v1, v0, v6}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    :cond_d
    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->MILLI_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v6, 0x3e8

    if-eqz v0, :cond_f

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, p0, Lj$/time/format/y;->e:Lj$/time/format/z;

    sget-object v10, Lj$/time/format/z;->LENIENT:Lj$/time/format/z;

    if-eq v0, v10, :cond_e

    invoke-virtual {v1, v8, v9}, Lj$/time/temporal/a;->j(J)J

    :cond_e
    sget-object v0, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    div-long v10, v8, v6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v1, v0, v10}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    sget-object v0, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    rem-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v1, v0, v8}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    :cond_f
    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, p0, Lj$/time/format/y;->e:Lj$/time/format/z;

    sget-object v10, Lj$/time/format/z;->LENIENT:Lj$/time/format/z;

    if-eq v0, v10, :cond_10

    invoke-virtual {v1, v8, v9}, Lj$/time/temporal/a;->j(J)J

    :cond_10
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    const-wide/16 v10, 0xe10

    div-long v10, v8, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v1, v0, v10}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    sget-object v0, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    div-long v10, v8, v2

    rem-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v1, v0, v10}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    sget-object v0, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    rem-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {p0, v1, v0, v8}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    :cond_11
    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->MINUTE_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, p0, Lj$/time/format/y;->e:Lj$/time/format/z;

    sget-object v10, Lj$/time/format/z;->LENIENT:Lj$/time/format/z;

    if-eq v0, v10, :cond_12

    invoke-virtual {v1, v8, v9}, Lj$/time/temporal/a;->j(J)J

    :cond_12
    sget-object v0, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    div-long v10, v8, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {p0, v1, v0, v10}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    sget-object v0, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    rem-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    :cond_13
    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lj$/time/format/y;->e:Lj$/time/format/z;

    sget-object v8, Lj$/time/format/z;->LENIENT:Lj$/time/format/z;

    if-eq v0, v8, :cond_14

    invoke-virtual {v1, v2, v3}, Lj$/time/temporal/a;->j(J)J

    :cond_14
    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v9, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v0, p0, Lj$/time/format/y;->e:Lj$/time/format/z;

    if-eq v0, v8, :cond_15

    invoke-virtual {v9, v10, v11}, Lj$/time/temporal/a;->j(J)J

    :cond_15
    mul-long/2addr v10, v6

    rem-long/2addr v2, v6

    add-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v9, v1, v0}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    :cond_16
    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v6, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v0, p0, Lj$/time/format/y;->e:Lj$/time/format/z;

    if-eq v0, v8, :cond_17

    invoke-virtual {v6, v9, v10}, Lj$/time/temporal/a;->j(J)J

    :cond_17
    mul-long/2addr v9, v4

    rem-long/2addr v2, v4

    add-long/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v6, v1, v0}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    :cond_18
    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v3, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v4, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object v5, p0

    invoke-direct/range {v5 .. v13}, Lj$/time/format/y;->m(JJJJ)V

    :cond_19
    return-void
.end method

.method private o(Lj$/time/h;Lj$/time/l;)V
    .locals 3

    iget-object v0, p0, Lj$/time/format/y;->g:Lj$/time/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lj$/time/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_1

    iget-object p1, p0, Lj$/time/format/y;->h:Lj$/time/l;

    invoke-virtual {p1}, Lj$/time/l;->c()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p2}, Lj$/time/l;->c()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lj$/time/format/y;->h:Lj$/time/l;

    invoke-virtual {p1, p2}, Lj$/time/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lj$/time/DateTimeException;

    const-string v0, "Conflict found: Fields resolved to different excess periods: "

    invoke-static {v0}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lj$/time/format/y;->h:Lj$/time/l;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Lj$/time/DateTimeException;

    const-string v0, "Conflict found: Fields resolved to different times: "

    invoke-static {v0}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lj$/time/format/y;->g:Lj$/time/h;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    iput-object p1, p0, Lj$/time/format/y;->g:Lj$/time/h;

    :cond_3
    :goto_0
    iput-object p2, p0, Lj$/time/format/y;->h:Lj$/time/l;

    return-void
.end method

.method private p(Lj$/time/chrono/b;)V
    .locals 3

    iget-object v0, p0, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    check-cast v0, Lj$/time/d;

    invoke-virtual {v0, p1}, Lj$/time/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "Conflict found: Fields resolved to two different dates: "

    invoke-static {v1}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lj$/time/format/y;->c:Lj$/time/chrono/g;

    .line 1
    sget-object v1, Lj$/time/chrono/h;->a:Lj$/time/chrono/h;

    .line 2
    check-cast v0, Lj$/time/chrono/a;

    invoke-virtual {v0, v1}, Lj$/time/chrono/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    goto :goto_0

    :cond_2
    new-instance p1, Lj$/time/DateTimeException;

    const-string v0, "ChronoLocalDate must use the effective parsed chronology: "

    invoke-static {v0}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj$/time/format/y;->c:Lj$/time/chrono/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method private q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V
    .locals 5

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lj$/time/DateTimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " differs from "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " while resolving  "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic c(Lj$/time/temporal/o;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/n;->a(Lj$/time/temporal/k;Lj$/time/temporal/o;)I

    move-result p1

    return p1
.end method

.method public synthetic d(Lj$/time/temporal/o;)Lj$/time/temporal/A;
    .locals 0

    invoke-static {p0, p1}, Lj$/time/temporal/n;->c(Lj$/time/temporal/k;Lj$/time/temporal/o;)Lj$/time/temporal/A;

    move-result-object p1

    return-object p1
.end method

.method public e(Lj$/time/temporal/o;)J
    .locals 3

    const-string v0, "field"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    if-eqz v0, :cond_1

    check-cast v0, Lj$/time/d;

    invoke-virtual {v0, p1}, Lj$/time/d;->i(Lj$/time/temporal/o;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    check-cast v0, Lj$/time/d;

    invoke-virtual {v0, p1}, Lj$/time/d;->e(Lj$/time/temporal/o;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lj$/time/format/y;->g:Lj$/time/h;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lj$/time/h;->i(Lj$/time/temporal/o;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lj$/time/format/y;->g:Lj$/time/h;

    invoke-virtual {v0, p1}, Lj$/time/h;->e(Lj$/time/temporal/o;)J

    move-result-wide v0

    return-wide v0

    :cond_2
    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_3

    invoke-interface {p1, p0}, Lj$/time/temporal/o;->d(Lj$/time/temporal/k;)J

    move-result-wide v0

    return-wide v0

    :cond_3
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
.end method

.method public g(Lj$/time/temporal/x;)Ljava/lang/Object;
    .locals 2

    sget v0, Lj$/time/temporal/w;->a:I

    sget-object v0, Lj$/time/temporal/p;->a:Lj$/time/temporal/p;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lj$/time/format/y;->b:Lj$/time/n;

    return-object p1

    :cond_0
    sget-object v0, Lj$/time/temporal/q;->a:Lj$/time/temporal/q;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lj$/time/format/y;->c:Lj$/time/chrono/g;

    return-object p1

    :cond_1
    sget-object v0, Lj$/time/temporal/u;->a:Lj$/time/temporal/u;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lj$/time/d;->l(Lj$/time/temporal/k;)Lj$/time/d;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    sget-object v0, Lj$/time/temporal/v;->a:Lj$/time/temporal/v;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lj$/time/format/y;->g:Lj$/time/h;

    return-object p1

    :cond_4
    sget-object v0, Lj$/time/temporal/t;->a:Lj$/time/temporal/t;

    if-eq p1, v0, :cond_7

    sget-object v0, Lj$/time/temporal/s;->a:Lj$/time/temporal/s;

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    sget-object v0, Lj$/time/temporal/r;->a:Lj$/time/temporal/r;

    if-ne p1, v0, :cond_6

    return-object v1

    :cond_6
    invoke-interface {p1, p0}, Lj$/time/temporal/x;->a(Lj$/time/temporal/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_0
    invoke-interface {p1, p0}, Lj$/time/temporal/x;->a(Lj$/time/temporal/k;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lj$/time/temporal/o;)Z
    .locals 2

    iget-object v0, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    if-eqz v0, :cond_0

    check-cast v0, Lj$/time/d;

    invoke-virtual {v0, p1}, Lj$/time/d;->i(Lj$/time/temporal/o;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lj$/time/format/y;->g:Lj$/time/h;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lj$/time/h;->i(Lj$/time/temporal/o;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    instance-of v0, p1, Lj$/time/temporal/a;

    if-nez v0, :cond_2

    invoke-interface {p1, p0}, Lj$/time/temporal/o;->e(Lj$/time/temporal/k;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method j(Lj$/time/format/z;Ljava/util/Set;)Lj$/time/temporal/k;
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    if-eqz v0, :cond_0

    iget-object v1, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    :cond_0
    move-object/from16 v0, p1

    iput-object v0, v9, Lj$/time/format/y;->e:Lj$/time/format/z;

    .line 1
    invoke-direct/range {p0 .. p0}, Lj$/time/format/y;->k()V

    .line 2
    iget-object v0, v9, Lj$/time/format/y;->c:Lj$/time/chrono/g;

    iget-object v1, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    iget-object v2, v9, Lj$/time/format/y;->e:Lj$/time/format/z;

    check-cast v0, Lj$/time/chrono/h;

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/h;->d(Ljava/util/Map;Lj$/time/format/z;)Lj$/time/chrono/b;

    move-result-object v0

    invoke-direct {v9, v0}, Lj$/time/format/y;->p(Lj$/time/chrono/b;)V

    .line 3
    invoke-direct/range {p0 .. p0}, Lj$/time/format/y;->n()V

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x32

    if-ge v0, v1, :cond_9

    iget-object v2, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj$/time/temporal/o;

    iget-object v4, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    iget-object v5, v9, Lj$/time/format/y;->e:Lj$/time/format/z;

    invoke-interface {v3, v4, v9, v5}, Lj$/time/temporal/o;->c(Ljava/util/Map;Lj$/time/temporal/k;Lj$/time/format/z;)Lj$/time/temporal/k;

    move-result-object v4

    if-eqz v4, :cond_8

    instance-of v1, v4, Lj$/time/chrono/f;

    if-eqz v1, :cond_4

    check-cast v4, Lj$/time/chrono/f;

    iget-object v1, v9, Lj$/time/format/y;->b:Lj$/time/n;

    if-nez v1, :cond_2

    move-object v1, v4

    check-cast v1, Lj$/time/r;

    invoke-virtual {v1}, Lj$/time/r;->l()Lj$/time/n;

    move-result-object v1

    iput-object v1, v9, Lj$/time/format/y;->b:Lj$/time/n;

    goto :goto_1

    :cond_2
    move-object v2, v4

    check-cast v2, Lj$/time/r;

    invoke-virtual {v2}, Lj$/time/r;->l()Lj$/time/n;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/time/n;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    check-cast v4, Lj$/time/r;

    invoke-virtual {v4}, Lj$/time/r;->s()Lj$/time/chrono/c;

    move-result-object v4

    goto :goto_2

    :cond_3
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "ChronoZonedDateTime must use the effective parsed zone: "

    invoke-static {v1}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lj$/time/format/y;->b:Lj$/time/n;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    instance-of v1, v4, Lj$/time/chrono/c;

    if-eqz v1, :cond_5

    check-cast v4, Lj$/time/chrono/c;

    check-cast v4, Lj$/time/f;

    invoke-virtual {v4}, Lj$/time/f;->D()Lj$/time/h;

    move-result-object v1

    sget-object v2, Lj$/time/l;->d:Lj$/time/l;

    invoke-direct {v9, v1, v2}, Lj$/time/format/y;->o(Lj$/time/h;Lj$/time/l;)V

    invoke-virtual {v4}, Lj$/time/f;->C()Lj$/time/chrono/b;

    move-result-object v1

    invoke-direct {v9, v1}, Lj$/time/format/y;->p(Lj$/time/chrono/b;)V

    goto :goto_3

    :cond_5
    instance-of v1, v4, Lj$/time/chrono/b;

    if-eqz v1, :cond_6

    check-cast v4, Lj$/time/chrono/b;

    invoke-direct {v9, v4}, Lj$/time/format/y;->p(Lj$/time/chrono/b;)V

    goto :goto_3

    :cond_6
    instance-of v1, v4, Lj$/time/h;

    if-eqz v1, :cond_7

    check-cast v4, Lj$/time/h;

    sget-object v1, Lj$/time/l;->d:Lj$/time/l;

    invoke-direct {v9, v4, v1}, Lj$/time/format/y;->o(Lj$/time/h;Lj$/time/l;)V

    goto :goto_3

    :cond_7
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "Method resolve() can only return ChronoZonedDateTime, ChronoLocalDateTime, ChronoLocalDate or LocalTime"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v4, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    if-eq v0, v1, :cond_a

    if-lez v0, :cond_b

    invoke-direct/range {p0 .. p0}, Lj$/time/format/y;->k()V

    .line 4
    iget-object v0, v9, Lj$/time/format/y;->c:Lj$/time/chrono/g;

    iget-object v1, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    iget-object v2, v9, Lj$/time/format/y;->e:Lj$/time/format/z;

    check-cast v0, Lj$/time/chrono/h;

    invoke-virtual {v0, v1, v2}, Lj$/time/chrono/h;->d(Ljava/util/Map;Lj$/time/format/z;)Lj$/time/chrono/b;

    move-result-object v0

    invoke-direct {v9, v0}, Lj$/time/format/y;->p(Lj$/time/chrono/b;)V

    .line 5
    invoke-direct/range {p0 .. p0}, Lj$/time/format/y;->n()V

    goto :goto_4

    :cond_a
    new-instance v0, Lj$/time/DateTimeException;

    const-string v1, "One of the parsed fields has an incorrectly implemented resolve method"

    invoke-direct {v0, v1}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_b
    :goto_4
    iget-object v0, v9, Lj$/time/format/y;->g:Lj$/time/h;

    const-wide/32 v1, 0xf4240

    const-wide/16 v10, 0x3e8

    if-nez v0, :cond_14

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v3, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v6, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    invoke-interface {v0, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    mul-long/2addr v4, v10

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    rem-long/2addr v0, v10

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v9, v3, v6, v2}, Lj$/time/format/y;->q(Lj$/time/temporal/o;Lj$/time/temporal/o;Ljava/lang/Long;)V

    iget-object v2, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_c
    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v3, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    mul-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    :cond_d
    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_5
    iget-object v2, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v3, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    mul-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_6
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v12, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_14

    iget-object v1, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v13, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v14, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iget-object v3, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v15, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v1, :cond_f

    if-nez v2, :cond_16

    if-nez v3, :cond_16

    :cond_f
    if-eqz v1, :cond_10

    if-nez v2, :cond_10

    if-eqz v3, :cond_10

    goto/16 :goto_b

    :cond_10
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_7

    :cond_11
    const-wide/16 v4, 0x0

    :goto_7
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_8

    :cond_12
    const-wide/16 v1, 0x0

    :goto_8
    move-wide v6, v1

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_9

    :cond_13
    const-wide/16 v1, 0x0

    :goto_9
    move-wide/from16 v16, v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v0, p0

    move-wide v3, v4

    move-wide v5, v6

    move-wide/from16 v7, v16

    invoke-direct/range {v0 .. v8}, Lj$/time/format/y;->m(JJJJ)V

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v14}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    iget-object v0, v9, Lj$/time/format/y;->e:Lj$/time/format/z;

    sget-object v1, Lj$/time/format/z;->LENIENT:Lj$/time/format/z;

    if-eq v0, v1, :cond_16

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_16

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj$/time/temporal/o;

    instance-of v3, v2, Lj$/time/temporal/a;

    if-eqz v3, :cond_15

    invoke-interface {v2}, Lj$/time/temporal/o;->b()Z

    move-result v3

    if-eqz v3, :cond_15

    check-cast v2, Lj$/time/temporal/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lj$/time/temporal/a;->j(J)J

    goto :goto_a

    .line 7
    :cond_16
    :goto_b
    iget-object v0, v9, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    if-eqz v0, :cond_17

    invoke-direct {v9, v0}, Lj$/time/format/y;->h(Lj$/time/temporal/k;)V

    :cond_17
    iget-object v0, v9, Lj$/time/format/y;->g:Lj$/time/h;

    if-eqz v0, :cond_18

    invoke-direct {v9, v0}, Lj$/time/format/y;->h(Lj$/time/temporal/k;)V

    iget-object v0, v9, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    if-eqz v0, :cond_18

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_18

    iget-object v0, v9, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    iget-object v1, v9, Lj$/time/format/y;->g:Lj$/time/h;

    check-cast v0, Lj$/time/d;

    .line 8
    invoke-static {v0, v1}, Lj$/time/f;->t(Lj$/time/d;Lj$/time/h;)Lj$/time/f;

    move-result-object v0

    .line 9
    invoke-direct {v9, v0}, Lj$/time/format/y;->h(Lj$/time/temporal/k;)V

    .line 10
    :cond_18
    iget-object v0, v9, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    if-eqz v0, :cond_1a

    iget-object v0, v9, Lj$/time/format/y;->g:Lj$/time/h;

    if-eqz v0, :cond_1a

    iget-object v0, v9, Lj$/time/format/y;->h:Lj$/time/l;

    invoke-virtual {v0}, Lj$/time/l;->c()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v9, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    iget-object v1, v9, Lj$/time/format/y;->h:Lj$/time/l;

    check-cast v0, Lj$/time/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    instance-of v2, v1, Lj$/time/l;

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Lj$/time/l;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lj$/time/d;->w(J)Lj$/time/d;

    move-result-object v0

    invoke-virtual {v1}, Lj$/time/l;->b()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lj$/time/d;->v(J)Lj$/time/d;

    move-result-object v0

    goto :goto_c

    :cond_19
    const-string v2, "amountToAdd"

    .line 12
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v1, v0}, Lj$/time/l;->a(Lj$/time/temporal/j;)Lj$/time/temporal/j;

    move-result-object v0

    check-cast v0, Lj$/time/d;

    .line 14
    :goto_c
    iput-object v0, v9, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    sget-object v0, Lj$/time/l;->d:Lj$/time/l;

    iput-object v0, v9, Lj$/time/format/y;->h:Lj$/time/l;

    .line 15
    :cond_1a
    iget-object v0, v9, Lj$/time/format/y;->g:Lj$/time/h;

    if-nez v0, :cond_1d

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->SECOND_OF_DAY:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v3, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    div-long v4, v0, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v3, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_1c
    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->MICRO_OF_SECOND:Lj$/time/temporal/a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->MILLI_OF_SECOND:Lj$/time/temporal/a;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_1d
    :goto_d
    iget-object v0, v9, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    if-eqz v0, :cond_1f

    iget-object v1, v9, Lj$/time/format/y;->g:Lj$/time/h;

    if-eqz v1, :cond_1f

    iget-object v2, v9, Lj$/time/format/y;->b:Lj$/time/n;

    const/4 v3, 0x0

    if-eqz v2, :cond_1e

    check-cast v0, Lj$/time/d;

    .line 17
    invoke-static {v0, v1}, Lj$/time/f;->t(Lj$/time/d;Lj$/time/h;)Lj$/time/f;

    move-result-object v0

    .line 18
    iget-object v1, v9, Lj$/time/format/y;->b:Lj$/time/n;

    .line 19
    invoke-static {v0, v1, v3}, Lj$/time/r;->n(Lj$/time/f;Lj$/time/n;Lj$/time/o;)Lj$/time/r;

    move-result-object v0

    goto :goto_e

    .line 20
    :cond_1e
    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    sget-object v1, Lj$/time/temporal/a;->OFFSET_SECONDS:Lj$/time/temporal/a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Lj$/time/o;->s(I)Lj$/time/o;

    move-result-object v0

    iget-object v1, v9, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    iget-object v2, v9, Lj$/time/format/y;->g:Lj$/time/h;

    check-cast v1, Lj$/time/d;

    .line 21
    invoke-static {v1, v2}, Lj$/time/f;->t(Lj$/time/d;Lj$/time/h;)Lj$/time/f;

    move-result-object v1

    .line 22
    invoke-static {v1, v0, v3}, Lj$/time/r;->n(Lj$/time/f;Lj$/time/n;Lj$/time/o;)Lj$/time/r;

    move-result-object v0

    .line 23
    :goto_e
    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    invoke-virtual {v0, v1}, Lj$/time/r;->e(Lj$/time/temporal/o;)J

    move-result-wide v2

    iget-object v0, v9, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    return-object v9
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lj$/time/format/y;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj$/time/format/y;->c:Lj$/time/chrono/g;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj$/time/format/y;->b:Lj$/time/n;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/format/y;->b:Lj$/time/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    if-nez v1, :cond_1

    iget-object v1, p0, Lj$/time/format/y;->g:Lj$/time/h;

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, " resolved to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/format/y;->f:Lj$/time/chrono/b;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/format/y;->g:Lj$/time/h;

    if-eqz v1, :cond_3

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lj$/time/format/y;->g:Lj$/time/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
