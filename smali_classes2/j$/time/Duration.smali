.class public final Lj$/time/Duration;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lj$/time/Duration;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final c:Lj$/time/Duration;


# instance fields
.field private final a:J

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lj$/time/Duration;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lj$/time/Duration;-><init>(JI)V

    sput-object v0, Lj$/time/Duration;->c:Lj$/time/Duration;

    const-wide/32 v0, 0x3b9aca00

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    const-string v0, "([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lj$/time/Duration;->a:J

    iput p3, p0, Lj$/time/Duration;->b:I

    return-void
.end method

.method private static a(JI)Lj$/time/Duration;
    .locals 4

    int-to-long v0, p2

    or-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object p0, Lj$/time/Duration;->c:Lj$/time/Duration;

    return-object p0

    :cond_0
    new-instance v0, Lj$/time/Duration;

    invoke-direct {v0, p0, p1, p2}, Lj$/time/Duration;-><init>(JI)V

    return-object v0
.end method

.method public static b(J)Lj$/time/Duration;
    .locals 4

    const-wide/32 v0, 0x3b9aca00

    div-long v2, p0, v0

    rem-long/2addr p0, v0

    long-to-int p0, p0

    if-gez p0, :cond_0

    int-to-long p0, p0

    add-long/2addr p0, v0

    long-to-int p0, p0

    const-wide/16 v0, 0x1

    sub-long/2addr v2, v0

    :cond_0
    invoke-static {v2, v3, p0}, Lj$/time/Duration;->a(JI)Lj$/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static c(J)Lj$/time/Duration;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lj$/time/Duration;->a(JI)Lj$/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method public static d(JJ)Lj$/time/Duration;
    .locals 12

    const-wide/32 v0, 0x3b9aca00

    .line 1
    div-long v2, p2, v0

    mul-long v4, v0, v2

    sub-long v4, p2, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-wide/16 v8, 0x1

    const/16 v5, 0x3f

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    xor-long v10, p2, v0

    shr-long/2addr v10, v5

    or-long/2addr v10, v8

    cmp-long v4, v10, v6

    if-gez v4, :cond_1

    sub-long/2addr v2, v8

    .line 2
    :cond_1
    :goto_0
    invoke-static {p0, p1, v2, v3}, Lj$/lang/d;->c(JJ)J

    move-result-wide p0

    .line 3
    rem-long v2, p2, v0

    cmp-long v4, v2, v6

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    xor-long/2addr p2, v0

    shr-long/2addr p2, v5

    or-long/2addr p2, v8

    cmp-long p2, p2, v6

    if-lez p2, :cond_3

    goto :goto_1

    :cond_3
    add-long/2addr v2, v0

    :goto_1
    move-wide v6, v2

    :goto_2
    long-to-int p2, v6

    .line 4
    invoke-static {p0, p1, p2}, Lj$/time/Duration;->a(JI)Lj$/time/Duration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lj$/time/Duration;

    .line 1
    iget-wide v0, p0, Lj$/time/Duration;->a:J

    iget-wide v2, p1, Lj$/time/Duration;->a:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lj$/time/Duration;->b:I

    iget p1, p1, Lj$/time/Duration;->b:I

    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/Duration;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/Duration;

    iget-wide v3, p0, Lj$/time/Duration;->a:J

    iget-wide v5, p1, Lj$/time/Duration;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lj$/time/Duration;->b:I

    iget p1, p1, Lj$/time/Duration;->b:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lj$/time/Duration;->a:J

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lj$/time/Duration;->b:I

    mul-int/lit8 v1, v1, 0x33

    add-int/2addr v1, v0

    return v1
.end method

.method public toMillis()J
    .locals 8

    iget-wide v0, p0, Lj$/time/Duration;->a:J

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    not-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v3, v2

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    add-int/2addr v2, v3

    const-wide/16 v6, -0x3e9

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    add-int/2addr v3, v2

    const/16 v2, 0x41

    if-le v3, v2, :cond_0

    mul-long/2addr v0, v4

    goto :goto_0

    :cond_0
    const/16 v2, 0x40

    if-lt v3, v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-ltz v2, :cond_1

    move v3, v6

    :cond_1
    or-int/2addr v3, v6

    if-eqz v3, :cond_3

    mul-long v6, v0, v4

    if-eqz v2, :cond_2

    div-long v0, v6, v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    :cond_2
    move-wide v0, v6

    .line 2
    :goto_0
    iget v2, p0, Lj$/time/Duration;->b:I

    const v3, 0xf4240

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lj$/lang/d;->c(JJ)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    invoke-direct {v0}, Ljava/lang/ArithmeticException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    sget-object v0, Lj$/time/Duration;->c:Lj$/time/Duration;

    if-ne p0, v0, :cond_0

    const-string v0, "PT0S"

    return-object v0

    :cond_0
    iget-wide v0, p0, Lj$/time/Duration;->a:J

    const-wide/16 v2, 0xe10

    div-long v4, v0, v2

    rem-long v2, v0, v2

    const-wide/16 v6, 0x3c

    div-long/2addr v2, v6

    long-to-int v2, v2

    rem-long/2addr v0, v6

    long-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x18

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "PT"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v3, 0x48

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    if-nez v0, :cond_3

    iget v2, p0, Lj$/time/Duration;->b:I

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-gez v0, :cond_5

    iget v2, p0, Lj$/time/Duration;->b:I

    if-lez v2, :cond_5

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4

    const-string v2, "-0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    iget v2, p0, Lj$/time/Duration;->b:I

    if-lez v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gez v0, :cond_6

    iget v0, p0, Lj$/time/Duration;->b:I

    int-to-long v3, v0

    const-wide/32 v5, 0x77359400

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget v0, p0, Lj$/time/Duration;->b:I

    int-to-long v3, v0

    const-wide/32 v5, 0x3b9aca00

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-ne v0, v3, :cond_7

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_7
    const/16 v0, 0x2e

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_8
    const/16 v0, 0x53

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
