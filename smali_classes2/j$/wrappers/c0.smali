.class public final synthetic Lj$/wrappers/c0;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/p;


# instance fields
.field final synthetic a:Ljava/util/function/LongConsumer;


# direct methods
.method private synthetic constructor <init>(Ljava/util/function/LongConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/wrappers/c0;->a:Ljava/util/function/LongConsumer;

    return-void
.end method

.method public static synthetic b(Ljava/util/function/LongConsumer;)Lj$/util/function/p;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/wrappers/d0;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/wrappers/d0;

    iget-object p0, p0, Lj$/wrappers/d0;->a:Lj$/util/function/p;

    return-object p0

    :cond_1
    new-instance v0, Lj$/wrappers/c0;

    invoke-direct {v0, p0}, Lj$/wrappers/c0;-><init>(Ljava/util/function/LongConsumer;)V

    return-object v0
.end method


# virtual methods
.method public synthetic accept(J)V
    .locals 1

    iget-object v0, p0, Lj$/wrappers/c0;->a:Ljava/util/function/LongConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method public synthetic f(Lj$/util/function/p;)Lj$/util/function/p;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/c0;->a:Ljava/util/function/LongConsumer;

    invoke-static {p1}, Lj$/wrappers/d0;->a(Lj$/util/function/p;)Ljava/util/function/LongConsumer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/LongConsumer;->andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    invoke-static {p1}, Lj$/wrappers/c0;->b(Ljava/util/function/LongConsumer;)Lj$/util/function/p;

    move-result-object p1

    return-object p1
.end method
