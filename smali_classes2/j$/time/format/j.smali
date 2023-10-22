.class final Lj$/time/format/j;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/format/h;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lj$/time/format/v;Ljava/lang/StringBuilder;)Z
    .locals 18

    move-object/from16 v0, p2

    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lj$/time/format/v;->e(Lj$/time/temporal/o;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/v;->d()Lj$/time/temporal/k;

    move-result-object v3

    sget-object v4, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    invoke-interface {v3, v4}, Lj$/time/temporal/k;->i(Lj$/time/temporal/o;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/v;->d()Lj$/time/temporal/k;

    move-result-object v2

    invoke-interface {v2, v4}, Lj$/time/temporal/k;->e(Lj$/time/temporal/o;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_1

    :cond_2
    move-wide v1, v7

    :goto_1
    invoke-virtual {v4, v1, v2}, Lj$/time/temporal/a;->i(J)I

    move-result v1

    const-wide v9, -0xe79747c00L

    cmp-long v2, v5, v9

    const-string v4, ":00"

    const-wide/16 v9, 0x1

    const/4 v11, 0x1

    const-wide v12, 0xe79747c00L

    const-wide v14, 0x497968bd80L

    if-ltz v2, :cond_4

    sub-long/2addr v5, v14

    add-long/2addr v5, v12

    invoke-static {v5, v6, v14, v15}, Lj$/lang/d;->e(JJ)J

    move-result-wide v16

    add-long v9, v16, v9

    invoke-static {v5, v6, v14, v15}, Lj$/lang/d;->d(JJ)J

    move-result-wide v5

    sub-long/2addr v5, v12

    sget-object v2, Lj$/time/o;->e:Lj$/time/o;

    invoke-static {v5, v6, v3, v2}, Lj$/time/f;->u(JILj$/time/o;)Lj$/time/f;

    move-result-object v2

    cmp-long v5, v9, v7

    if-lez v5, :cond_3

    const/16 v5, 0x2b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lj$/time/f;->n()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    add-long/2addr v5, v12

    div-long v9, v5, v14

    rem-long/2addr v5, v14

    sub-long v12, v5, v12

    sget-object v2, Lj$/time/o;->e:Lj$/time/o;

    invoke-static {v12, v13, v3, v2}, Lj$/time/f;->u(JILj$/time/o;)Lj$/time/f;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lj$/time/f;->n()I

    move-result v13

    if-nez v13, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    cmp-long v4, v9, v7

    if-gez v4, :cond_8

    invoke-virtual {v2}, Lj$/time/f;->o()I

    move-result v2

    const/16 v4, -0x2710

    if-ne v2, v4, :cond_6

    add-int/lit8 v2, v12, 0x2

    const-wide/16 v4, 0x1

    sub-long/2addr v9, v4

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v12, v2, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    cmp-long v2, v5, v7

    if-nez v2, :cond_7

    invoke-virtual {v0, v12, v9, v10}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    add-int/2addr v12, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-virtual {v0, v12, v4, v5}, Ljava/lang/StringBuilder;->insert(IJ)Ljava/lang/StringBuilder;

    :cond_8
    :goto_2
    if-gtz v1, :cond_9

    goto :goto_4

    :cond_9
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const v2, 0x5f5e100

    :goto_3
    const/4 v4, -0x2

    if-gtz v1, :cond_b

    rem-int/lit8 v5, v3, 0x3

    if-nez v5, :cond_b

    if-ge v3, v4, :cond_a

    goto :goto_5

    :cond_a
    :goto_4
    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v11

    :cond_b
    :goto_5
    div-int v4, v1, v2

    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int/2addr v4, v2

    sub-int/2addr v1, v4

    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public b(Lj$/time/format/t;Ljava/lang/CharSequence;I)I
    .locals 19

    move/from16 v6, p3

    const/16 v0, 0x9

    new-instance v1, Lj$/time/format/s;

    invoke-direct {v1}, Lj$/time/format/s;-><init>()V

    sget-object v2, Lj$/time/format/a;->h:Lj$/time/format/a;

    invoke-virtual {v1, v2}, Lj$/time/format/s;->a(Lj$/time/format/a;)Lj$/time/format/s;

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Lj$/time/format/s;->e(C)Lj$/time/format/s;

    sget-object v2, Lj$/time/temporal/a;->HOUR_OF_DAY:Lj$/time/temporal/a;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lj$/time/format/s;->k(Lj$/time/temporal/o;I)Lj$/time/format/s;

    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Lj$/time/format/s;->e(C)Lj$/time/format/s;

    sget-object v5, Lj$/time/temporal/a;->MINUTE_OF_HOUR:Lj$/time/temporal/a;

    invoke-virtual {v1, v5, v3}, Lj$/time/format/s;->k(Lj$/time/temporal/o;I)Lj$/time/format/s;

    invoke-virtual {v1, v4}, Lj$/time/format/s;->e(C)Lj$/time/format/s;

    sget-object v4, Lj$/time/temporal/a;->SECOND_OF_MINUTE:Lj$/time/temporal/a;

    invoke-virtual {v1, v4, v3}, Lj$/time/format/s;->k(Lj$/time/temporal/o;I)Lj$/time/format/s;

    sget-object v7, Lj$/time/temporal/a;->NANO_OF_SECOND:Lj$/time/temporal/a;

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v3, v0, v8}, Lj$/time/format/s;->b(Lj$/time/temporal/o;IIZ)Lj$/time/format/s;

    const/16 v0, 0x5a

    invoke-virtual {v1, v0}, Lj$/time/format/s;->e(C)Lj$/time/format/s;

    invoke-virtual {v1}, Lj$/time/format/s;->s()Lj$/time/format/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lj$/time/format/a;->h(Z)Lj$/time/format/g;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/t;->c()Lj$/time/format/t;

    move-result-object v1

    move-object/from16 v9, p2

    invoke-virtual {v0, v1, v9, v6}, Lj$/time/format/g;->b(Lj$/time/format/t;Ljava/lang/CharSequence;I)I

    move-result v9

    if-gez v9, :cond_0

    return v9

    :cond_0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    invoke-virtual {v1, v0}, Lj$/time/format/t;->i(Lj$/time/temporal/o;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sget-object v0, Lj$/time/temporal/a;->MONTH_OF_YEAR:Lj$/time/temporal/a;

    invoke-virtual {v1, v0}, Lj$/time/format/t;->i(Lj$/time/temporal/o;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v13

    sget-object v0, Lj$/time/temporal/a;->DAY_OF_MONTH:Lj$/time/temporal/a;

    invoke-virtual {v1, v0}, Lj$/time/format/t;->i(Lj$/time/temporal/o;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v14

    invoke-virtual {v1, v2}, Lj$/time/format/t;->i(Lj$/time/temporal/o;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-virtual {v1, v5}, Lj$/time/format/t;->i(Lj$/time/temporal/o;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-virtual {v1, v4}, Lj$/time/format/t;->i(Lj$/time/temporal/o;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v7}, Lj$/time/format/t;->i(Lj$/time/temporal/o;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    move v5, v1

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    const/16 v1, 0x18

    const/16 v12, 0x3b

    if-ne v0, v1, :cond_3

    if-nez v2, :cond_3

    if-nez v4, :cond_3

    if-nez v5, :cond_3

    move v15, v3

    move/from16 v17, v4

    move v3, v8

    goto :goto_2

    :cond_3
    const/16 v1, 0x17

    if-ne v0, v1, :cond_4

    if-ne v2, v12, :cond_4

    const/16 v1, 0x3c

    if-ne v4, v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/t;->o()V

    move v15, v0

    move/from16 v17, v12

    goto :goto_2

    :cond_4
    move v15, v0

    move/from16 v17, v4

    :goto_2
    long-to-int v0, v10

    rem-int/lit16 v12, v0, 0x2710

    const/16 v18, 0x0

    move/from16 v16, v2

    :try_start_0
    invoke-static/range {v12 .. v18}, Lj$/time/f;->s(IIIIIII)Lj$/time/f;

    move-result-object v0

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Lj$/time/f;->w(J)Lj$/time/f;

    move-result-object v0

    sget-object v1, Lj$/time/o;->e:Lj$/time/o;

    invoke-virtual {v0, v1}, Lj$/time/f;->A(Lj$/time/o;)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    div-long/2addr v10, v2

    const-wide v2, 0x497968bd80L

    invoke-static {v10, v11, v2, v3}, Lj$/lang/d;->f(JJ)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v2, v0

    sget-object v1, Lj$/time/temporal/a;->INSTANT_SECONDS:Lj$/time/temporal/a;

    move-object/from16 v0, p1

    move/from16 v4, p3

    move v8, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/t;->n(Lj$/time/temporal/o;JII)I

    move-result v5

    int-to-long v2, v8

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Lj$/time/format/t;->n(Lj$/time/temporal/o;JII)I

    move-result v0

    return v0

    :catch_0
    not-int v0, v6

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Instant()"

    return-object v0
.end method
