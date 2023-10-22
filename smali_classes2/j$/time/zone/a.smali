.class public final Lj$/time/zone/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Lj$/time/f;

.field private final b:Lj$/time/o;

.field private final c:Lj$/time/o;


# direct methods
.method constructor <init>(JLj$/time/o;Lj$/time/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, p3}, Lj$/time/f;->u(JILj$/time/o;)Lj$/time/f;

    move-result-object p1

    iput-object p1, p0, Lj$/time/zone/a;->a:Lj$/time/f;

    iput-object p3, p0, Lj$/time/zone/a;->b:Lj$/time/o;

    iput-object p4, p0, Lj$/time/zone/a;->c:Lj$/time/o;

    return-void
.end method

.method constructor <init>(Lj$/time/f;Lj$/time/o;Lj$/time/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/time/zone/a;->a:Lj$/time/f;

    iput-object p2, p0, Lj$/time/zone/a;->b:Lj$/time/o;

    iput-object p3, p0, Lj$/time/zone/a;->c:Lj$/time/o;

    return-void
.end method


# virtual methods
.method public a()Lj$/time/f;
    .locals 3

    iget-object v0, p0, Lj$/time/zone/a;->a:Lj$/time/f;

    .line 1
    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/o;

    .line 2
    invoke-virtual {v1}, Lj$/time/o;->p()I

    move-result v1

    .line 3
    iget-object v2, p0, Lj$/time/zone/a;->b:Lj$/time/o;

    .line 4
    invoke-virtual {v2}, Lj$/time/o;->p()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-long v1, v1

    .line 5
    invoke-virtual {v0, v1, v2}, Lj$/time/f;->y(J)Lj$/time/f;

    move-result-object v0

    return-object v0
.end method

.method public b()Lj$/time/f;
    .locals 1

    iget-object v0, p0, Lj$/time/zone/a;->a:Lj$/time/f;

    return-object v0
.end method

.method public c()Lj$/time/Duration;
    .locals 2

    .line 1
    iget-object v0, p0, Lj$/time/zone/a;->c:Lj$/time/o;

    .line 2
    invoke-virtual {v0}, Lj$/time/o;->p()I

    move-result v0

    .line 3
    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/o;

    .line 4
    invoke-virtual {v1}, Lj$/time/o;->p()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 5
    invoke-static {v0, v1}, Lj$/time/Duration;->d(J)Lj$/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lj$/time/zone/a;

    .line 1
    invoke-virtual {p0}, Lj$/time/zone/a;->d()Lj$/time/Instant;

    move-result-object v0

    invoke-virtual {p1}, Lj$/time/zone/a;->d()Lj$/time/Instant;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj$/time/Instant;->compareTo(Lj$/time/Instant;)I

    move-result p1

    return p1
.end method

.method public d()Lj$/time/Instant;
    .locals 5

    iget-object v0, p0, Lj$/time/zone/a;->a:Lj$/time/f;

    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/o;

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

.method public e()Lj$/time/o;
    .locals 1

    iget-object v0, p0, Lj$/time/zone/a;->c:Lj$/time/o;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lj$/time/zone/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lj$/time/zone/a;

    iget-object v1, p0, Lj$/time/zone/a;->a:Lj$/time/f;

    iget-object v3, p1, Lj$/time/zone/a;->a:Lj$/time/f;

    invoke-virtual {v1, v3}, Lj$/time/f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/o;

    iget-object v3, p1, Lj$/time/zone/a;->b:Lj$/time/o;

    invoke-virtual {v1, v3}, Lj$/time/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/o;

    iget-object p1, p1, Lj$/time/zone/a;->c:Lj$/time/o;

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

.method public f()Lj$/time/o;
    .locals 1

    iget-object v0, p0, Lj$/time/zone/a;->b:Lj$/time/o;

    return-object v0
.end method

.method g()Ljava/util/List;
    .locals 3

    invoke-virtual {p0}, Lj$/time/zone/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Lj$/time/o;

    .line 1
    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/o;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/o;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lj$/time/zone/a;->c:Lj$/time/o;

    .line 2
    invoke-virtual {v0}, Lj$/time/o;->p()I

    move-result v0

    .line 3
    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/o;

    .line 4
    invoke-virtual {v1}, Lj$/time/o;->p()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lj$/time/zone/a;->a:Lj$/time/f;

    invoke-virtual {v0}, Lj$/time/f;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/o;

    invoke-virtual {v1}, Lj$/time/o;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/o;

    invoke-virtual {v1}, Lj$/time/o;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lj$/time/zone/a;->a:Lj$/time/f;

    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/o;

    invoke-virtual {v0, v1}, Lj$/time/f;->A(Lj$/time/o;)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Transition["

    invoke-static {v0}, Lj$/time/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lj$/time/zone/a;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Gap"

    goto :goto_0

    :cond_0
    const-string v1, "Overlap"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/zone/a;->a:Lj$/time/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/zone/a;->b:Lj$/time/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lj$/time/zone/a;->c:Lj$/time/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
