.class public final Lj$/time/temporal/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:J


# direct methods
.method private constructor <init>(JJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lj$/time/temporal/m;->a:J

    iput-wide p3, p0, Lj$/time/temporal/m;->b:J

    iput-wide p5, p0, Lj$/time/temporal/m;->c:J

    iput-wide p7, p0, Lj$/time/temporal/m;->d:J

    return-void
.end method

.method public static c(JJ)Lj$/time/temporal/m;
    .locals 10

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    new-instance v0, Lj$/time/temporal/m;

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p0

    move-wide v6, p2

    move-wide v8, p2

    invoke-direct/range {v1 .. v9}, Lj$/time/temporal/m;-><init>(JJJJ)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum value must be less than maximum value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(JJJ)Lj$/time/temporal/m;
    .locals 10

    cmp-long v0, p0, p0

    if-gtz v0, :cond_2

    cmp-long v0, p2, p4

    if-gtz v0, :cond_1

    cmp-long v0, p0, p4

    if-gtz v0, :cond_0

    .line 1
    new-instance v0, Lj$/time/temporal/m;

    move-object v1, v0

    move-wide v2, p0

    move-wide v4, p0

    move-wide v6, p2

    move-wide v8, p4

    invoke-direct/range {v1 .. v9}, Lj$/time/temporal/m;-><init>(JJJJ)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum value must be less than maximum value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Smallest maximum value must be less than largest maximum value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Smallest minimum value must be less than largest minimum value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(JLj$/time/temporal/j;)J
    .locals 3

    .line 1
    iget-wide v0, p0, Lj$/time/temporal/m;->a:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 2
    iget-wide v0, p0, Lj$/time/temporal/m;->d:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-wide p1

    .line 3
    :cond_1
    new-instance v0, Lj$/time/a;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " (valid values "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "): "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {v0, p1}, Lj$/time/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 5

    iget-wide v0, p0, Lj$/time/temporal/m;->a:J

    iget-wide v2, p0, Lj$/time/temporal/m;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lj$/time/temporal/m;->c:J

    iget-wide v2, p0, Lj$/time/temporal/m;->d:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/temporal/m;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/temporal/m;

    iget-wide v3, p0, Lj$/time/temporal/m;->a:J

    iget-wide v5, p1, Lj$/time/temporal/m;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lj$/time/temporal/m;->b:J

    iget-wide v5, p1, Lj$/time/temporal/m;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lj$/time/temporal/m;->c:J

    iget-wide v5, p1, Lj$/time/temporal/m;->c:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lj$/time/temporal/m;->d:J

    iget-wide v5, p1, Lj$/time/temporal/m;->d:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 9

    iget-wide v0, p0, Lj$/time/temporal/m;->a:J

    iget-wide v2, p0, Lj$/time/temporal/m;->b:J

    const/16 v4, 0x10

    shl-long v5, v2, v4

    add-long/2addr v0, v5

    const/16 v5, 0x30

    shr-long/2addr v2, v5

    add-long/2addr v0, v2

    iget-wide v2, p0, Lj$/time/temporal/m;->c:J

    const/16 v6, 0x20

    shl-long v7, v2, v6

    add-long/2addr v0, v7

    shr-long/2addr v2, v6

    add-long/2addr v0, v2

    iget-wide v2, p0, Lj$/time/temporal/m;->d:J

    shl-long v7, v2, v5

    add-long/2addr v0, v7

    shr-long/2addr v2, v4

    add-long/2addr v0, v2

    ushr-long v2, v0, v6

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lj$/time/temporal/m;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lj$/time/temporal/m;->a:J

    iget-wide v3, p0, Lj$/time/temporal/m;->b:J

    const/16 v5, 0x2f

    cmp-long v6, v1, v3

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lj$/time/temporal/m;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lj$/time/temporal/m;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lj$/time/temporal/m;->c:J

    iget-wide v3, p0, Lj$/time/temporal/m;->d:J

    cmp-long v6, v1, v3

    if-eqz v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lj$/time/temporal/m;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
