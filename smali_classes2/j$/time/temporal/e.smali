.class final enum Lj$/time/temporal/e;
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
    .locals 6

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x34

    const-wide/16 v4, 0x35

    invoke-static/range {v0 .. v5}, Lj$/time/temporal/A;->j(JJJ)Lj$/time/temporal/A;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/util/Map;Lj$/time/temporal/k;Lj$/time/format/z;)Lj$/time/temporal/k;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    sget-object v3, Lj$/time/temporal/g;->WEEK_BASED_YEAR:Lj$/time/temporal/g;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    sget-object v5, Lj$/time/temporal/a;->DAY_OF_WEEK:Lj$/time/temporal/a;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-eqz v4, :cond_7

    if-nez v6, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-interface {v3}, Lj$/time/temporal/o;->a()Lj$/time/temporal/A;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, v3}, Lj$/time/temporal/A;->a(JLj$/time/temporal/o;)I

    move-result v4

    sget-object v7, Lj$/time/temporal/g;->WEEK_OF_WEEK_BASED_YEAR:Lj$/time/temporal/g;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static/range {p2 .. p2}, Lj$/time/temporal/g;->j(Lj$/time/temporal/k;)V

    const/4 v9, 0x1

    const/4 v10, 0x4

    invoke-static {v4, v9, v10}, Lj$/time/d;->r(III)Lj$/time/d;

    move-result-object v4

    sget-object v9, Lj$/time/format/z;->LENIENT:Lj$/time/format/z;

    const-wide/16 v10, 0x1

    if-ne v2, v9, :cond_3

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    const-wide/16 v14, 0x7

    cmp-long v2, v12, v14

    if-lez v2, :cond_1

    sub-long/2addr v12, v10

    div-long v10, v12, v14

    invoke-virtual {v4, v10, v11}, Lj$/time/d;->x(J)Lj$/time/d;

    move-result-object v2

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_1
    move-wide v9, v10

    cmp-long v2, v12, v9

    if-gez v2, :cond_2

    invoke-static {v12, v13, v14, v15}, Lj$/lang/d;->g(JJ)J

    move-result-wide v16

    div-long v9, v16, v14

    invoke-virtual {v4, v9, v10}, Lj$/time/d;->x(J)Lj$/time/d;

    move-result-object v2

    const-wide/16 v9, 0x6

    add-long/2addr v12, v9

    goto :goto_0

    :goto_1
    rem-long/2addr v12, v14

    const-wide/16 v9, 0x1

    add-long/2addr v12, v9

    :cond_2
    invoke-static {v7, v8, v9, v10}, Lj$/lang/d;->g(JJ)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lj$/time/d;->x(J)Lj$/time/d;

    move-result-object v2

    invoke-virtual {v2, v5, v12, v13}, Lj$/time/d;->B(Lj$/time/temporal/o;J)Lj$/time/d;

    move-result-object v2

    goto :goto_6

    :cond_3
    move-wide v9, v10

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lj$/time/temporal/a;->i(J)I

    move-result v6

    cmp-long v11, v7, v9

    if-ltz v11, :cond_5

    const-wide/16 v9, 0x34

    cmp-long v9, v7, v9

    if-lez v9, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const-wide/16 v9, 0x1

    goto :goto_5

    :cond_5
    :goto_3
    sget-object v9, Lj$/time/format/z;->STRICT:Lj$/time/format/z;

    if-ne v2, v9, :cond_6

    invoke-static {v4}, Lj$/time/temporal/g;->k(Lj$/time/d;)Lj$/time/temporal/A;

    move-result-object v2

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lj$/time/temporal/e;->a()Lj$/time/temporal/A;

    move-result-object v2

    :goto_4
    invoke-virtual {v2, v7, v8, v0}, Lj$/time/temporal/A;->b(JLj$/time/temporal/o;)J

    goto :goto_2

    :goto_5
    sub-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Lj$/time/d;->x(J)Lj$/time/d;

    move-result-object v2

    int-to-long v6, v6

    invoke-virtual {v2, v5, v6, v7}, Lj$/time/d;->B(Lj$/time/temporal/o;J)Lj$/time/d;

    move-result-object v2

    :goto_6
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_7
    :goto_7
    const/4 v2, 0x0

    :goto_8
    return-object v2
.end method

.method public d(Lj$/time/temporal/k;)J
    .locals 2

    invoke-virtual {p0, p1}, Lj$/time/temporal/e;->e(Lj$/time/temporal/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lj$/time/d;->l(Lj$/time/temporal/k;)Lj$/time/d;

    move-result-object p1

    invoke-static {p1}, Lj$/time/temporal/g;->l(Lj$/time/d;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    new-instance p1, Lj$/time/temporal/z;

    const-string v0, "Unsupported field: WeekOfWeekBasedYear"

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
    .locals 2

    invoke-virtual {p0}, Lj$/time/temporal/e;->a()Lj$/time/temporal/A;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p0}, Lj$/time/temporal/A;->b(JLj$/time/temporal/o;)J

    invoke-virtual {p0, p1}, Lj$/time/temporal/e;->d(Lj$/time/temporal/k;)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Lj$/lang/d;->g(JJ)J

    move-result-wide p2

    sget-object v0, Lj$/time/temporal/ChronoUnit;->WEEKS:Lj$/time/temporal/ChronoUnit;

    invoke-interface {p1, p2, p3, v0}, Lj$/time/temporal/j;->f(JLj$/time/temporal/y;)Lj$/time/temporal/j;

    move-result-object p1

    return-object p1
.end method

.method public g(Lj$/time/temporal/k;)Lj$/time/temporal/A;
    .locals 1

    invoke-virtual {p0, p1}, Lj$/time/temporal/e;->e(Lj$/time/temporal/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lj$/time/d;->l(Lj$/time/temporal/k;)Lj$/time/d;

    move-result-object p1

    invoke-static {p1}, Lj$/time/temporal/g;->k(Lj$/time/d;)Lj$/time/temporal/A;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lj$/time/temporal/z;

    const-string v0, "Unsupported field: WeekOfWeekBasedYear"

    invoke-direct {p1, v0}, Lj$/time/temporal/z;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "WeekOfWeekBasedYear"

    return-object v0
.end method
