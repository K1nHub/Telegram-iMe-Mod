.class abstract Lj$/util/stream/R1;
.super Lj$/util/stream/C1;

# interfaces
.implements Lj$/util/stream/z1;


# direct methods
.method constructor <init>(Lj$/util/stream/z1;Lj$/util/stream/z1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/C1;-><init>(Lj$/util/stream/A1;Lj$/util/stream/A1;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;I)V
    .locals 3

    iget-object v0, p0, Lj$/util/stream/C1;->a:Lj$/util/stream/A1;

    check-cast v0, Lj$/util/stream/z1;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/z1;->d(Ljava/lang/Object;I)V

    iget-object v0, p0, Lj$/util/stream/C1;->b:Lj$/util/stream/A1;

    check-cast v0, Lj$/util/stream/z1;

    iget-object v1, p0, Lj$/util/stream/C1;->a:Lj$/util/stream/A1;

    check-cast v1, Lj$/util/stream/z1;

    invoke-interface {v1}, Lj$/util/stream/A1;->count()J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr p2, v1

    invoke-interface {v0, p1, p2}, Lj$/util/stream/z1;->d(Ljava/lang/Object;I)V

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lj$/util/stream/C1;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    long-to-int v0, v0

    invoke-interface {p0, v0}, Lj$/util/stream/z1;->c(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lj$/util/stream/R1;->d(Ljava/lang/Object;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/C1;->a:Lj$/util/stream/A1;

    check-cast v0, Lj$/util/stream/z1;

    invoke-interface {v0, p1}, Lj$/util/stream/z1;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lj$/util/stream/C1;->b:Lj$/util/stream/A1;

    check-cast v0, Lj$/util/stream/z1;

    invoke-interface {v0, p1}, Lj$/util/stream/z1;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic p(Lj$/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/o1;->g(Lj$/util/stream/z1;Lj$/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lj$/util/stream/C1;->count()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-gez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v2, p0, Lj$/util/stream/C1;->a:Lj$/util/stream/A1;

    aput-object v2, v0, v1

    iget-object v1, p0, Lj$/util/stream/C1;->b:Lj$/util/stream/A1;

    aput-object v1, v0, v3

    const-string v1, "%s[%s.%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0}, Lj$/util/stream/C1;->count()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s[size=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
