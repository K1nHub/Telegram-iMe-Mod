.class final Lj$/util/stream/E1;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/stream/A1;


# instance fields
.field private final a:Ljava/util/Collection;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/E1;->a:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public b(I)Lj$/util/stream/A1;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public count()J
    .locals 2

    iget-object v0, p0, Lj$/util/stream/E1;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEach(Lj$/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/E1;->a:Ljava/util/Collection;

    invoke-static {v0, p1}, Lj$/util/Collection$-EL;->a(Ljava/util/Collection;Lj$/util/function/Consumer;)V

    return-void
.end method

.method public i([Ljava/lang/Object;I)V
    .locals 3

    iget-object v0, p0, Lj$/util/stream/E1;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    aput-object v1, p1, p2

    move p2, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic p()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public q(Lj$/util/function/m;)[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/E1;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1, v1}, Lj$/util/function/m;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic r(JJLj$/util/function/m;)Lj$/util/stream/A1;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/o1;->q(Lj$/util/stream/A1;JJLj$/util/function/m;)Lj$/util/stream/A1;

    move-result-object p1

    return-object p1
.end method

.method public spliterator()Lj$/util/s;
    .locals 2

    iget-object v0, p0, Lj$/util/stream/E1;->a:Ljava/util/Collection;

    .line 1
    instance-of v1, v0, Lj$/util/b;

    if-eqz v1, :cond_0

    check-cast v0, Lj$/util/b;

    invoke-interface {v0}, Lj$/util/b;->stream()Lj$/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lj$/util/a;->i(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Lj$/util/stream/g;->spliterator()Lj$/util/s;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lj$/util/stream/E1;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lj$/util/stream/E1;->a:Ljava/util/Collection;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "CollectionNode[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
