.class public final synthetic Lj$/wrappers/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/PrimitiveIterator$OfLong;


# instance fields
.field final synthetic a:Lj$/util/p;


# direct methods
.method private synthetic constructor <init>(Lj$/util/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/wrappers/f;->a:Lj$/util/p;

    return-void
.end method

.method public static synthetic a(Lj$/util/p;)Ljava/util/PrimitiveIterator$OfLong;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/wrappers/e;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/wrappers/e;

    iget-object p0, p0, Lj$/wrappers/e;->a:Ljava/util/PrimitiveIterator$OfLong;

    return-object p0

    :cond_1
    new-instance v0, Lj$/wrappers/f;

    invoke-direct {v0, p0}, Lj$/wrappers/f;-><init>(Lj$/util/p;)V

    return-object v0
.end method


# virtual methods
.method public synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lj$/wrappers/f;->a:Lj$/util/p;

    invoke-interface {v0, p1}, Lj$/util/n;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lj$/wrappers/f;->a:Lj$/util/p;

    invoke-static {p1}, Lj$/wrappers/v;->b(Ljava/util/function/Consumer;)Lj$/util/function/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/p;->forEachRemaining(Lj$/util/function/Consumer;)V

    return-void
.end method

.method public synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 1

    iget-object v0, p0, Lj$/wrappers/f;->a:Lj$/util/p;

    invoke-static {p1}, Lj$/wrappers/c0;->b(Ljava/util/function/LongConsumer;)Lj$/util/function/p;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/p;->d(Lj$/util/function/p;)V

    return-void
.end method

.method public synthetic hasNext()Z
    .locals 1

    iget-object v0, p0, Lj$/wrappers/f;->a:Lj$/util/p;

    invoke-interface {v0}, Lj$/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/f;->a:Lj$/util/p;

    invoke-interface {v0}, Lj$/util/p;->next()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/f;->a:Lj$/util/p;

    invoke-interface {v0}, Lj$/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic nextLong()J
    .locals 2

    iget-object v0, p0, Lj$/wrappers/f;->a:Lj$/util/p;

    invoke-interface {v0}, Lj$/util/p;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic remove()V
    .locals 1

    iget-object v0, p0, Lj$/wrappers/f;->a:Lj$/util/p;

    invoke-interface {v0}, Lj$/util/Iterator;->remove()V

    return-void
.end method
