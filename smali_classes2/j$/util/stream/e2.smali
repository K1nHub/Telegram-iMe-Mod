.class final Lj$/util/stream/e2;
.super Lj$/util/stream/W3;

# interfaces
.implements Lj$/util/stream/w1;
.implements Lj$/util/stream/q1;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj$/util/stream/W3;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Lj$/util/Spliterator$b;
    .locals 1

    invoke-super {p0}, Lj$/util/stream/W3;->A()Lj$/util/Spliterator$b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic B(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/o1;->b(Lj$/util/stream/k3;Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic C([Ljava/lang/Integer;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj$/util/stream/o1;->i(Lj$/util/stream/w1;[Ljava/lang/Integer;I)V

    return-void
.end method

.method public synthetic D(JJLj$/util/function/IntFunction;)Lj$/util/stream/w1;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/o1;->o(Lj$/util/stream/w1;JJLj$/util/function/IntFunction;)Lj$/util/stream/w1;

    move-result-object p1

    return-object p1
.end method

.method public a()Lj$/util/stream/A1;
    .locals 0

    return-object p0
.end method

.method public a()Lj$/util/stream/w1;
    .locals 0

    return-object p0
.end method

.method public synthetic accept(D)V
    .locals 0

    invoke-static {p0}, Lj$/util/stream/o1;->f(Lj$/util/stream/m3;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public accept(I)V
    .locals 0

    invoke-super {p0, p1}, Lj$/util/stream/W3;->accept(I)V

    return-void
.end method

.method public synthetic accept(J)V
    .locals 0

    invoke-static {p0}, Lj$/util/stream/o1;->e(Lj$/util/stream/m3;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lj$/util/stream/e2;->B(Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic andThen(Lj$/util/function/Consumer;)Lj$/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Lj$/util/function/Consumer;Lj$/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(I)Lj$/util/stream/A1;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lj$/util/stream/e2;->b(I)Lj$/util/stream/z1;

    const/4 p1, 0x0

    throw p1
.end method

.method public b(I)Lj$/util/stream/z1;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public d(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, [I

    .line 1
    invoke-super {p0, p1, p2}, Lj$/util/stream/Z3;->d(Ljava/lang/Object;I)V

    return-void
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-super {p0}, Lj$/util/stream/Z3;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lj$/util/function/l;

    .line 1
    invoke-super {p0, p1}, Lj$/util/stream/Z3;->g(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic i([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/e2;->C([Ljava/lang/Integer;I)V

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m(J)V
    .locals 0

    invoke-virtual {p0}, Lj$/util/stream/Z3;->clear()V

    invoke-virtual {p0, p1, p2}, Lj$/util/stream/Z3;->w(J)V

    return-void
.end method

.method public synthetic n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic p(Lj$/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/o1;->g(Lj$/util/stream/z1;Lj$/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic q(JJLj$/util/function/IntFunction;)Lj$/util/stream/A1;
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lj$/util/stream/e2;->D(JJLj$/util/function/IntFunction;)Lj$/util/stream/w1;

    move-result-object p1

    return-object p1
.end method

.method public spliterator()Lj$/util/Spliterator$d;
    .locals 1

    .line 1
    invoke-super {p0}, Lj$/util/stream/W3;->A()Lj$/util/Spliterator$b;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Lj$/util/Spliterator;
    .locals 1

    .line 2
    invoke-super {p0}, Lj$/util/stream/W3;->A()Lj$/util/Spliterator$b;

    move-result-object v0

    return-object v0
.end method
