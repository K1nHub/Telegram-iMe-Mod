.class Lj$/time/format/k;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/time/format/h;


# static fields
.field static final f:[J


# instance fields
.field final a:Lj$/time/temporal/o;

.field final b:I

.field final c:I

.field private final d:Lj$/time/format/A;

.field final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lj$/time/format/k;->f:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
    .end array-data
.end method

.method constructor <init>(Lj$/time/temporal/o;IILj$/time/format/A;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/k;->a:Lj$/time/temporal/o;

    iput p2, p0, Lj$/time/format/k;->b:I

    iput p3, p0, Lj$/time/format/k;->c:I

    iput-object p4, p0, Lj$/time/format/k;->d:Lj$/time/format/A;

    const/4 p1, 0x0

    iput p1, p0, Lj$/time/format/k;->e:I

    return-void
.end method

.method protected constructor <init>(Lj$/time/temporal/o;IILj$/time/format/A;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/format/k;->a:Lj$/time/temporal/o;

    iput p2, p0, Lj$/time/format/k;->b:I

    iput p3, p0, Lj$/time/format/k;->c:I

    iput-object p4, p0, Lj$/time/format/k;->d:Lj$/time/format/A;

    iput p5, p0, Lj$/time/format/k;->e:I

    return-void
.end method

.method static synthetic c(Lj$/time/format/k;)Lj$/time/format/A;
    .locals 0

    iget-object p0, p0, Lj$/time/format/k;->d:Lj$/time/format/A;

    return-object p0
.end method


# virtual methods
.method public a(Lj$/time/format/v;Ljava/lang/StringBuilder;)Z
    .locals 10

    iget-object v0, p0, Lj$/time/format/k;->a:Lj$/time/temporal/o;

    invoke-virtual {p1, v0}, Lj$/time/format/v;->e(Lj$/time/temporal/o;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lj$/time/format/v;->b()Lj$/time/format/x;

    move-result-object p1

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const-string v0, "9223372036854775808"

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lj$/time/format/k;->c:I

    const-string v6, " cannot be printed as the value "

    const-string v7, "Field "

    if-gt v4, v5, :cond_9

    invoke-virtual {p1, v0}, Lj$/time/format/x;->a(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/4 v5, 0x2

    const/4 v8, 0x1

    if-ltz v4, :cond_4

    sget-object v4, Lj$/time/format/e;->a:[I

    iget-object v6, p0, Lj$/time/format/k;->d:Lj$/time/format/A;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    if-eq v4, v8, :cond_2

    if-eq v4, v5, :cond_3

    goto :goto_2

    :cond_2
    iget v4, p0, Lj$/time/format/k;->b:I

    const/16 v5, 0x13

    if-ge v4, v5, :cond_7

    sget-object v5, Lj$/time/format/k;->f:[J

    aget-wide v4, v5, v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_7

    :cond_3
    invoke-virtual {p1}, Lj$/time/format/x;->e()C

    move-result v2

    goto :goto_1

    :cond_4
    sget-object v4, Lj$/time/format/e;->a:[I

    iget-object v9, p0, Lj$/time/format/k;->d:Lj$/time/format/A;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v4, v4, v9

    if-eq v4, v8, :cond_6

    if-eq v4, v5, :cond_6

    const/4 v5, 0x3

    if-eq v4, v5, :cond_6

    const/4 v5, 0x4

    if-eq v4, v5, :cond_5

    goto :goto_2

    :cond_5
    new-instance p1, Lj$/time/DateTimeException;

    invoke-static {v7}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lj$/time/format/k;->a:Lj$/time/temporal/o;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " cannot be negative according to the SignStyle"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {p1}, Lj$/time/format/x;->d()C

    move-result v2

    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    iget v2, p0, Lj$/time/format/k;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_8

    invoke-virtual {p1}, Lj$/time/format/x;->f()C

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v8

    :cond_9
    new-instance p1, Lj$/time/DateTimeException;

    invoke-static {v7}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lj$/time/format/k;->a:Lj$/time/temporal/o;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " exceeds the maximum print width of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lj$/time/format/k;->c:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lj$/time/format/t;Ljava/lang/CharSequence;I)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/t;->f()Lj$/time/format/x;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/format/x;->e()C

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_3

    iget-object v3, v0, Lj$/time/format/k;->d:Lj$/time/format/A;

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/t;->k()Z

    move-result v4

    iget v7, v0, Lj$/time/format/k;->b:I

    iget v8, v0, Lj$/time/format/k;->c:I

    if-ne v7, v8, :cond_1

    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v5

    :goto_0
    invoke-virtual {v3, v6, v4, v7}, Lj$/time/format/A;->a(ZZZ)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_c

    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v11, v1

    move v1, v5

    move v3, v6

    goto :goto_2

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/t;->f()Lj$/time/format/x;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/format/x;->d()C

    move-result v4

    if-ne v3, v4, :cond_6

    iget-object v3, v0, Lj$/time/format/k;->d:Lj$/time/format/A;

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/t;->k()Z

    move-result v4

    iget v7, v0, Lj$/time/format/k;->b:I

    iget v8, v0, Lj$/time/format/k;->c:I

    if-ne v7, v8, :cond_4

    move v7, v6

    goto :goto_1

    :cond_4
    move v7, v5

    :goto_1
    invoke-virtual {v3, v5, v4, v7}, Lj$/time/format/A;->a(ZZZ)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_c

    :cond_5
    add-int/lit8 v1, v1, 0x1

    move v11, v1

    move v3, v5

    move v1, v6

    goto :goto_2

    :cond_6
    iget-object v3, v0, Lj$/time/format/k;->d:Lj$/time/format/A;

    sget-object v4, Lj$/time/format/A;->ALWAYS:Lj$/time/format/A;

    if-ne v3, v4, :cond_7

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/t;->k()Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_c

    :cond_7
    move v11, v1

    move v1, v5

    move v3, v1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/t;->k()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual/range {p0 .. p1}, Lj$/time/format/k;->d(Lj$/time/format/t;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    move v4, v6

    goto :goto_4

    :cond_9
    :goto_3
    iget v4, v0, Lj$/time/format/k;->b:I

    :goto_4
    add-int v7, v11, v4

    if-le v7, v2, :cond_a

    goto/16 :goto_b

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lj$/time/format/t;->k()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual/range {p0 .. p1}, Lj$/time/format/k;->d(Lj$/time/format/t;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_5

    :cond_b
    const/16 v8, 0x9

    goto :goto_6

    :cond_c
    :goto_5
    iget v8, v0, Lj$/time/format/k;->c:I

    :goto_6
    iget v9, v0, Lj$/time/format/k;->e:I

    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/2addr v9, v8

    :goto_7
    const/4 v8, 0x0

    const/4 v10, 0x2

    if-ge v5, v10, :cond_12

    add-int/2addr v9, v11

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v10, v11

    const-wide/16 v14, 0x0

    :goto_8
    if-ge v10, v9, :cond_10

    add-int/lit8 v16, v10, 0x1

    move-object/from16 v6, p2

    invoke-interface {v6, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/t;->f()Lj$/time/format/x;

    move-result-object v12

    invoke-virtual {v12, v10}, Lj$/time/format/x;->b(C)I

    move-result v10

    if-gez v10, :cond_d

    add-int/lit8 v10, v16, -0x1

    if-ge v10, v7, :cond_11

    goto/16 :goto_b

    :cond_d
    sub-int v12, v16, v11

    const/16 v13, 0x12

    if-le v12, v13, :cond_f

    if-nez v8, :cond_e

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    :cond_e
    sget-object v12, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    int-to-long v12, v10

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_9

    :cond_f
    const-wide/16 v12, 0xa

    mul-long/2addr v14, v12

    int-to-long v12, v10

    add-long/2addr v14, v12

    :goto_9
    move/from16 v10, v16

    const/4 v6, 0x1

    goto :goto_8

    :cond_10
    move-object/from16 v6, p2

    :cond_11
    iget v9, v0, Lj$/time/format/k;->e:I

    if-lez v9, :cond_13

    if-nez v5, :cond_13

    sub-int/2addr v10, v11

    sub-int/2addr v10, v9

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    goto :goto_7

    :cond_12
    move v10, v11

    const-wide/16 v14, 0x0

    :cond_13
    if-eqz v1, :cond_17

    if-eqz v8, :cond_15

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/t;->k()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_a

    :cond_14
    invoke-virtual {v8}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    move-object v8, v1

    goto :goto_d

    :cond_15
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-nez v1, :cond_16

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/t;->k()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_a

    :cond_16
    neg-long v14, v14

    goto :goto_d

    :cond_17
    iget-object v1, v0, Lj$/time/format/k;->d:Lj$/time/format/A;

    sget-object v2, Lj$/time/format/A;->EXCEEDS_PAD:Lj$/time/format/A;

    if-ne v1, v2, :cond_19

    invoke-virtual/range {p1 .. p1}, Lj$/time/format/t;->k()Z

    move-result v1

    if-eqz v1, :cond_19

    sub-int v1, v10, v11

    iget v2, v0, Lj$/time/format/k;->b:I

    if-eqz v3, :cond_18

    if-gt v1, v2, :cond_19

    :goto_a
    const/4 v1, 0x1

    sub-int/2addr v11, v1

    not-int v1, v11

    goto :goto_f

    :cond_18
    if-le v1, v2, :cond_19

    :goto_b
    move v1, v11

    :goto_c
    not-int v1, v1

    goto :goto_f

    :cond_19
    :goto_d
    if-eqz v8, :cond_1b

    invoke-virtual {v8}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_1a

    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    add-int/lit8 v10, v10, -0x1

    :cond_1a
    invoke-virtual {v8}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    move v12, v10

    move-wide v9, v1

    goto :goto_e

    :cond_1b
    move v12, v10

    move-wide v9, v14

    .line 1
    :goto_e
    iget-object v8, v0, Lj$/time/format/k;->a:Lj$/time/temporal/o;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Lj$/time/format/t;->n(Lj$/time/temporal/o;JII)I

    move-result v1

    :goto_f
    return v1
.end method

.method d(Lj$/time/format/t;)Z
    .locals 1

    iget p1, p0, Lj$/time/format/k;->e:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-lez p1, :cond_0

    iget p1, p0, Lj$/time/format/k;->b:I

    iget v0, p0, Lj$/time/format/k;->c:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lj$/time/format/k;->d:Lj$/time/format/A;

    sget-object v0, Lj$/time/format/A;->NOT_NEGATIVE:Lj$/time/format/A;

    if-ne p1, v0, :cond_0

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

.method e()Lj$/time/format/k;
    .locals 8

    iget v0, p0, Lj$/time/format/k;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/format/k;

    iget-object v3, p0, Lj$/time/format/k;->a:Lj$/time/temporal/o;

    iget v4, p0, Lj$/time/format/k;->b:I

    iget v5, p0, Lj$/time/format/k;->c:I

    iget-object v6, p0, Lj$/time/format/k;->d:Lj$/time/format/A;

    const/4 v7, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lj$/time/format/k;-><init>(Lj$/time/temporal/o;IILj$/time/format/A;I)V

    return-object v0
.end method

.method f(I)Lj$/time/format/k;
    .locals 7

    new-instance v6, Lj$/time/format/k;

    iget-object v1, p0, Lj$/time/format/k;->a:Lj$/time/temporal/o;

    iget v2, p0, Lj$/time/format/k;->b:I

    iget v3, p0, Lj$/time/format/k;->c:I

    iget-object v4, p0, Lj$/time/format/k;->d:Lj$/time/format/A;

    iget v0, p0, Lj$/time/format/k;->e:I

    add-int v5, v0, p1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/time/format/k;-><init>(Lj$/time/temporal/o;IILj$/time/format/A;I)V

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, Lj$/time/format/k;->b:I

    const-string v1, ")"

    const-string v2, "Value("

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget v3, p0, Lj$/time/format/k;->c:I

    const/16 v4, 0x13

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lj$/time/format/k;->d:Lj$/time/format/A;

    sget-object v4, Lj$/time/format/A;->NORMAL:Lj$/time/format/A;

    if-ne v3, v4, :cond_0

    invoke-static {v2}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lj$/time/format/k;->a:Lj$/time/temporal/o;

    goto :goto_0

    :cond_0
    iget v3, p0, Lj$/time/format/k;->c:I

    const-string v4, ","

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lj$/time/format/k;->d:Lj$/time/format/A;

    sget-object v3, Lj$/time/format/A;->NOT_NEGATIVE:Lj$/time/format/A;

    if-ne v0, v3, :cond_1

    invoke-static {v2}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lj$/time/format/k;->a:Lj$/time/temporal/o;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lj$/time/format/k;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lj$/time/format/k;->a:Lj$/time/temporal/o;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lj$/time/format/k;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lj$/time/format/k;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj$/time/format/k;->d:Lj$/time/format/A;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
