.class final Lj$/util/stream/K3;
.super Lj$/util/stream/J0;


# direct methods
.method constructor <init>(Lj$/util/stream/c;)V
    .locals 3

    sget-object v0, Lj$/util/stream/e4;->INT_VALUE:Lj$/util/stream/e4;

    sget v1, Lj$/util/stream/d4;->q:I

    sget v2, Lj$/util/stream/d4;->o:I

    or-int/2addr v1, v2

    invoke-direct {p0, p1, v0, v1}, Lj$/util/stream/J0;-><init>(Lj$/util/stream/c;Lj$/util/stream/e4;I)V

    return-void
.end method


# virtual methods
.method public D0(Lj$/util/stream/y2;Lj$/util/Spliterator;Lj$/util/function/IntFunction;)Lj$/util/stream/A1;
    .locals 2

    sget-object v0, Lj$/util/stream/d4;->SORTED:Lj$/util/stream/d4;

    invoke-virtual {p1}, Lj$/util/stream/y2;->r0()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/d4;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/y2;->o0(Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/A1;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/y2;->o0(Lj$/util/Spliterator;ZLj$/util/function/IntFunction;)Lj$/util/stream/A1;

    move-result-object p1

    check-cast p1, Lj$/util/stream/w1;

    invoke-interface {p1}, Lj$/util/stream/z1;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 1
    new-instance p2, Lj$/util/stream/c2;

    invoke-direct {p2, p1}, Lj$/util/stream/c2;-><init>([I)V

    return-object p2
.end method

.method public G0(ILj$/util/stream/m3;)Lj$/util/stream/m3;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lj$/util/stream/d4;->SORTED:Lj$/util/stream/d4;

    invoke-virtual {v0, p1}, Lj$/util/stream/d4;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lj$/util/stream/d4;->SIZED:Lj$/util/stream/d4;

    invoke-virtual {v0, p1}, Lj$/util/stream/d4;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lj$/util/stream/P3;

    invoke-direct {p1, p2}, Lj$/util/stream/P3;-><init>(Lj$/util/stream/m3;)V

    return-object p1

    :cond_1
    new-instance p1, Lj$/util/stream/H3;

    invoke-direct {p1, p2}, Lj$/util/stream/H3;-><init>(Lj$/util/stream/m3;)V

    return-object p1
.end method
