.class public final synthetic Lj$/wrappers/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Spliterator$OfPrimitive;


# instance fields
.field final synthetic a:Lj$/util/t;


# direct methods
.method private synthetic constructor <init>(Lj$/util/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/wrappers/p;->a:Lj$/util/t;

    return-void
.end method

.method public static synthetic a(Lj$/util/t;)Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/wrappers/o;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/wrappers/o;

    iget-object p0, p0, Lj$/wrappers/o;->a:Ljava/util/Spliterator$OfPrimitive;

    return-object p0

    :cond_1
    new-instance v0, Lj$/wrappers/p;

    invoke-direct {v0, p0}, Lj$/wrappers/p;-><init>(Lj$/util/t;)V

    return-object v0
.end method


# virtual methods
.method public synthetic characteristics()I
    .locals 1

    iget-object v0, p0, Lj$/wrappers/p;->a:Lj$/util/t;

    invoke-interface {v0}, Lj$/util/s;->characteristics()I

    move-result v0

    return v0
.end method

.method public synthetic estimateSize()J
    .locals 2

    iget-object v0, p0, Lj$/wrappers/p;->a:Lj$/util/t;

    invoke-interface {v0}, Lj$/util/s;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/wrappers/p;->a:Lj$/util/t;

    invoke-interface {v0, p1}, Lj$/util/t;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/wrappers/p;->a:Lj$/util/t;

    invoke-static {p1}, Lj$/wrappers/w;->b(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/s;->forEachRemaining(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public synthetic getComparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/p;->a:Lj$/util/t;

    invoke-interface {v0}, Lj$/util/s;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getExactSizeIfKnown()J
    .locals 2

    iget-object v0, p0, Lj$/wrappers/p;->a:Lj$/util/t;

    invoke-interface {v0}, Lj$/util/s;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic hasCharacteristics(I)Z
    .locals 1

    iget-object v0, p0, Lj$/wrappers/p;->a:Lj$/util/t;

    invoke-interface {v0, p1}, Lj$/util/s;->hasCharacteristics(I)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj$/wrappers/p;->a:Lj$/util/t;

    invoke-interface {v0, p1}, Lj$/util/t;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 1

    iget-object v0, p0, Lj$/wrappers/p;->a:Lj$/util/t;

    invoke-static {p1}, Lj$/wrappers/w;->b(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/s;->b(Lj$/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/p;->a:Lj$/util/t;

    invoke-interface {v0}, Lj$/util/t;->trySplit()Lj$/util/t;

    move-result-object v0

    invoke-static {v0}, Lj$/wrappers/p;->a(Lj$/util/t;)Ljava/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method

.method public synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/p;->a:Lj$/util/t;

    invoke-interface {v0}, Lj$/util/s;->trySplit()Lj$/util/s;

    move-result-object v0

    invoke-static {v0}, Lj$/wrappers/h;->a(Lj$/util/s;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
