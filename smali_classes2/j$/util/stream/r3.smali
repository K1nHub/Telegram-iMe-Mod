.class Lj$/util/stream/r3;
.super Lj$/util/stream/g3;


# instance fields
.field b:J

.field c:J

.field final synthetic d:Lj$/util/stream/s3;


# direct methods
.method constructor <init>(Lj$/util/stream/s3;Lj$/util/stream/m3;)V
    .locals 2

    iput-object p1, p0, Lj$/util/stream/r3;->d:Lj$/util/stream/s3;

    invoke-direct {p0, p2}, Lj$/util/stream/g3;-><init>(Lj$/util/stream/m3;)V

    iget-wide v0, p1, Lj$/util/stream/s3;->l:J

    iput-wide v0, p0, Lj$/util/stream/r3;->b:J

    iget-wide p1, p1, Lj$/util/stream/s3;->m:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    :goto_0
    iput-wide p1, p0, Lj$/util/stream/r3;->c:J

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 7

    iget-wide v0, p0, Lj$/util/stream/r3;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x1

    if-nez v4, :cond_0

    iget-wide v0, p0, Lj$/util/stream/r3;->c:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    sub-long/2addr v0, v5

    iput-wide v0, p0, Lj$/util/stream/r3;->c:J

    iget-object v0, p0, Lj$/util/stream/g3;->a:Lj$/util/stream/m3;

    invoke-interface {v0, p1}, Lj$/util/stream/m3;->accept(I)V

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v5

    iput-wide v0, p0, Lj$/util/stream/r3;->b:J

    :cond_1
    :goto_0
    return-void
.end method

.method public m(J)V
    .locals 8

    iget-object v0, p0, Lj$/util/stream/g3;->a:Lj$/util/stream/m3;

    iget-object v1, p0, Lj$/util/stream/r3;->d:Lj$/util/stream/s3;

    iget-wide v4, v1, Lj$/util/stream/s3;->l:J

    iget-wide v6, p0, Lj$/util/stream/r3;->c:J

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Lj$/util/stream/B3;->c(JJJ)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lj$/util/stream/m3;->m(J)V

    return-void
.end method

.method public o()Z
    .locals 4

    iget-wide v0, p0, Lj$/util/stream/r3;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/g3;->a:Lj$/util/stream/m3;

    invoke-interface {v0}, Lj$/util/stream/m3;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
