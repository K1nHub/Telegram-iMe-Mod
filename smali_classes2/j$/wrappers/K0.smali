.class public final synthetic Lj$/wrappers/K0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/stream/LongStream;


# instance fields
.field final synthetic a:Lj$/util/stream/e1;


# direct methods
.method private synthetic constructor <init>(Lj$/util/stream/e1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    return-void
.end method

.method public static synthetic m0(Lj$/util/stream/e1;)Ljava/util/stream/LongStream;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/wrappers/J0;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/wrappers/J0;

    iget-object p0, p0, Lj$/wrappers/J0;->a:Ljava/util/stream/LongStream;

    return-object p0

    :cond_1
    new-instance v0, Lj$/wrappers/K0;

    invoke-direct {v0, p0}, Lj$/wrappers/K0;-><init>(Lj$/util/stream/e1;)V

    return-object v0
.end method


# virtual methods
.method public synthetic allMatch(Ljava/util/function/LongPredicate;)Z
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p1}, Lj$/wrappers/g0;->a(Ljava/util/function/LongPredicate;)Lj$/wrappers/g0;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/e1;->K(Lj$/wrappers/g0;)Z

    move-result p1

    return p1
.end method

.method public synthetic anyMatch(Ljava/util/function/LongPredicate;)Z
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p1}, Lj$/wrappers/g0;->a(Ljava/util/function/LongPredicate;)Lj$/wrappers/g0;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/e1;->k(Lj$/wrappers/g0;)Z

    move-result p1

    return p1
.end method

.method public synthetic asDoubleStream()Ljava/util/stream/DoubleStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->asDoubleStream()Lj$/util/stream/U;

    move-result-object v0

    invoke-static {v0}, Lj$/wrappers/I0;->m0(Lj$/util/stream/U;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic average()Ljava/util/OptionalDouble;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->average()Lj$/util/g;

    move-result-object v0

    invoke-static {v0}, Lj$/util/k;->n(Lj$/util/g;)Ljava/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public synthetic boxed()Ljava/util/stream/Stream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->boxed()Lj$/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lj$/wrappers/L0;->m0(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic close()V
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/g;->close()V

    return-void
.end method

.method public synthetic collect(Ljava/util/function/Supplier;Ljava/util/function/ObjLongConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p1}, Lj$/wrappers/v0;->a(Ljava/util/function/Supplier;)Lj$/util/function/x;

    move-result-object p1

    invoke-static {p2}, Lj$/wrappers/s0;->a(Ljava/util/function/ObjLongConsumer;)Lj$/util/function/v;

    move-result-object p2

    invoke-static {p3}, Lj$/wrappers/q;->a(Ljava/util/function/BiConsumer;)Lj$/util/function/BiConsumer;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lj$/util/stream/e1;->e0(Lj$/util/function/x;Lj$/util/function/v;Lj$/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic count()J
    .locals 2

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic distinct()Ljava/util/stream/LongStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->distinct()Lj$/util/stream/e1;

    move-result-object v0

    invoke-static {v0}, Lj$/wrappers/K0;->m0(Lj$/util/stream/e1;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic filter(Ljava/util/function/LongPredicate;)Ljava/util/stream/LongStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p1}, Lj$/wrappers/g0;->a(Ljava/util/function/LongPredicate;)Lj$/wrappers/g0;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/e1;->t(Lj$/wrappers/g0;)Lj$/util/stream/e1;

    move-result-object p1

    invoke-static {p1}, Lj$/wrappers/K0;->m0(Lj$/util/stream/e1;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic findAny()Ljava/util/OptionalLong;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->findAny()Lj$/util/i;

    move-result-object v0

    invoke-static {v0}, Lj$/util/k;->p(Lj$/util/i;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic findFirst()Ljava/util/OptionalLong;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->findFirst()Lj$/util/i;

    move-result-object v0

    invoke-static {v0}, Lj$/util/k;->p(Lj$/util/i;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic flatMap(Ljava/util/function/LongFunction;)Ljava/util/stream/LongStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p1}, Lj$/wrappers/e0;->a(Ljava/util/function/LongFunction;)Lj$/util/function/q;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/e1;->r(Lj$/util/function/q;)Lj$/util/stream/e1;

    move-result-object p1

    invoke-static {p1}, Lj$/wrappers/K0;->m0(Lj$/util/stream/e1;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic forEach(Ljava/util/function/LongConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p1}, Lj$/wrappers/c0;->b(Ljava/util/function/LongConsumer;)Lj$/util/function/p;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/e1;->d(Lj$/util/function/p;)V

    return-void
.end method

.method public synthetic forEachOrdered(Ljava/util/function/LongConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p1}, Lj$/wrappers/c0;->b(Ljava/util/function/LongConsumer;)Lj$/util/function/p;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/e1;->Y(Lj$/util/function/p;)V

    return-void
.end method

.method public synthetic isParallel()Z
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/g;->isParallel()Z

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/g;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic iterator()Ljava/util/PrimitiveIterator$OfLong;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->iterator()Lj$/util/p;

    move-result-object v0

    invoke-static {v0}, Lj$/wrappers/f;->a(Lj$/util/p;)Ljava/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic limit(J)Ljava/util/stream/LongStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/e1;->limit(J)Lj$/util/stream/e1;

    move-result-object p1

    invoke-static {p1}, Lj$/wrappers/K0;->m0(Lj$/util/stream/e1;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic map(Ljava/util/function/LongUnaryOperator;)Ljava/util/stream/LongStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p1}, Lj$/wrappers/m0;->c(Ljava/util/function/LongUnaryOperator;)Lj$/util/function/s;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/e1;->y(Lj$/util/function/s;)Lj$/util/stream/e1;

    move-result-object p1

    invoke-static {p1}, Lj$/wrappers/K0;->m0(Lj$/util/stream/e1;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToDouble(Ljava/util/function/LongToDoubleFunction;)Ljava/util/stream/DoubleStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p1}, Lj$/wrappers/i0;->b(Ljava/util/function/LongToDoubleFunction;)Lj$/wrappers/i0;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/e1;->N(Lj$/wrappers/i0;)Lj$/util/stream/U;

    move-result-object p1

    invoke-static {p1}, Lj$/wrappers/I0;->m0(Lj$/util/stream/U;)Ljava/util/stream/DoubleStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToInt(Ljava/util/function/LongToIntFunction;)Ljava/util/stream/IntStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p1}, Lj$/wrappers/k0;->b(Ljava/util/function/LongToIntFunction;)Lj$/wrappers/k0;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/e1;->d0(Lj$/wrappers/k0;)Lj$/util/stream/IntStream;

    move-result-object p1

    invoke-static {p1}, Lj$/wrappers/$r8$wrapper$java$util$stream$IntStream$-WRP;->convert(Lj$/util/stream/IntStream;)Ljava/util/stream/IntStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic mapToObj(Ljava/util/function/LongFunction;)Ljava/util/stream/Stream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p1}, Lj$/wrappers/e0;->a(Ljava/util/function/LongFunction;)Lj$/util/function/q;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/e1;->P(Lj$/util/function/q;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lj$/wrappers/L0;->m0(Lj$/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic max()Ljava/util/OptionalLong;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->max()Lj$/util/i;

    move-result-object v0

    invoke-static {v0}, Lj$/util/k;->p(Lj$/util/i;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic min()Ljava/util/OptionalLong;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->min()Lj$/util/i;

    move-result-object v0

    invoke-static {v0}, Lj$/util/k;->p(Lj$/util/i;)Ljava/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic noneMatch(Ljava/util/function/LongPredicate;)Z
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p1}, Lj$/wrappers/g0;->a(Ljava/util/function/LongPredicate;)Lj$/wrappers/g0;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/e1;->R(Lj$/wrappers/g0;)Z

    move-result p1

    return p1
.end method

.method public synthetic onClose(Ljava/lang/Runnable;)Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0, p1}, Lj$/util/stream/g;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/g;

    move-result-object p1

    invoke-static {p1}, Lj$/wrappers/E0;->m0(Lj$/util/stream/g;)Ljava/util/stream/BaseStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic parallel()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/g;->parallel()Lj$/util/stream/g;

    move-result-object v0

    invoke-static {v0}, Lj$/wrappers/E0;->m0(Lj$/util/stream/g;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parallel()Ljava/util/stream/LongStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->parallel()Lj$/util/stream/e1;

    move-result-object v0

    invoke-static {v0}, Lj$/wrappers/K0;->m0(Lj$/util/stream/e1;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic peek(Ljava/util/function/LongConsumer;)Ljava/util/stream/LongStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p1}, Lj$/wrappers/c0;->b(Ljava/util/function/LongConsumer;)Lj$/util/function/p;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/e1;->o(Lj$/util/function/p;)Lj$/util/stream/e1;

    move-result-object p1

    invoke-static {p1}, Lj$/wrappers/K0;->m0(Lj$/util/stream/e1;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic reduce(JLjava/util/function/LongBinaryOperator;)J
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p3}, Lj$/wrappers/a0;->a(Ljava/util/function/LongBinaryOperator;)Lj$/util/function/n;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lj$/util/stream/e1;->C(JLj$/util/function/n;)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic reduce(Ljava/util/function/LongBinaryOperator;)Ljava/util/OptionalLong;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-static {p1}, Lj$/wrappers/a0;->a(Ljava/util/function/LongBinaryOperator;)Lj$/util/function/n;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/stream/e1;->g(Lj$/util/function/n;)Lj$/util/i;

    move-result-object p1

    invoke-static {p1}, Lj$/util/k;->p(Lj$/util/i;)Ljava/util/OptionalLong;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sequential()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/g;->sequential()Lj$/util/stream/g;

    move-result-object v0

    invoke-static {v0}, Lj$/wrappers/E0;->m0(Lj$/util/stream/g;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic sequential()Ljava/util/stream/LongStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->sequential()Lj$/util/stream/e1;

    move-result-object v0

    invoke-static {v0}, Lj$/wrappers/K0;->m0(Lj$/util/stream/e1;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic skip(J)Ljava/util/stream/LongStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/e1;->skip(J)Lj$/util/stream/e1;

    move-result-object p1

    invoke-static {p1}, Lj$/wrappers/K0;->m0(Lj$/util/stream/e1;)Ljava/util/stream/LongStream;

    move-result-object p1

    return-object p1
.end method

.method public synthetic sorted()Ljava/util/stream/LongStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->sorted()Lj$/util/stream/e1;

    move-result-object v0

    invoke-static {v0}, Lj$/wrappers/K0;->m0(Lj$/util/stream/e1;)Ljava/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator$OfLong;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->spliterator()Lj$/util/Spliterator$c;

    move-result-object v0

    invoke-static {v0}, Lj$/wrappers/n;->a(Lj$/util/Spliterator$c;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/g;->spliterator()Lj$/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Lj$/wrappers/h;->a(Lj$/util/Spliterator;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic sum()J
    .locals 2

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->sum()J

    move-result-wide v0

    return-wide v0
.end method

.method public summaryStatistics()Ljava/util/LongSummaryStatistics;
    .locals 2

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->summaryStatistics()Lj$/util/f;

    .line 1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Java 8+ API desugaring (library desugaring) cannot convert to java.util.LongSummaryStatistics"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic toArray()[J
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/e1;->toArray()[J

    move-result-object v0

    return-object v0
.end method

.method public synthetic unordered()Ljava/util/stream/BaseStream;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/K0;->a:Lj$/util/stream/e1;

    invoke-interface {v0}, Lj$/util/stream/g;->unordered()Lj$/util/stream/g;

    move-result-object v0

    invoke-static {v0}, Lj$/wrappers/E0;->m0(Lj$/util/stream/g;)Ljava/util/stream/BaseStream;

    move-result-object v0

    return-object v0
.end method
