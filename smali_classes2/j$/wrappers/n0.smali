.class public final synthetic Lj$/wrappers/n0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongUnaryOperator;


# instance fields
.field final synthetic a:Lj$/util/function/s;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/wrappers/n0;->a:Lj$/util/function/s;

    return-void
.end method

.method public static synthetic a(Lj$/util/function/s;)Ljava/util/function/LongUnaryOperator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/wrappers/m0;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/wrappers/m0;

    iget-object p0, p0, Lj$/wrappers/m0;->a:Ljava/util/function/LongUnaryOperator;

    return-object p0

    :cond_1
    new-instance v0, Lj$/wrappers/n0;

    invoke-direct {v0, p0}, Lj$/wrappers/n0;-><init>(Lj$/util/function/s;)V

    return-object v0
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/n0;->a:Lj$/util/function/s;

    invoke-static {p1}, Lj$/wrappers/m0;->c(Ljava/util/function/LongUnaryOperator;)Lj$/util/function/s;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/s;->a(Lj$/util/function/s;)Lj$/util/function/s;

    move-result-object p1

    invoke-static {p1}, Lj$/wrappers/n0;->a(Lj$/util/function/s;)Ljava/util/function/LongUnaryOperator;

    move-result-object p1

    return-object p1
.end method

.method public synthetic applyAsLong(J)J
    .locals 1

    iget-object v0, p0, Lj$/wrappers/n0;->a:Lj$/util/function/s;

    invoke-interface {v0, p1, p2}, Lj$/util/function/s;->applyAsLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public synthetic compose(Ljava/util/function/LongUnaryOperator;)Ljava/util/function/LongUnaryOperator;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/n0;->a:Lj$/util/function/s;

    invoke-static {p1}, Lj$/wrappers/m0;->c(Ljava/util/function/LongUnaryOperator;)Lj$/util/function/s;

    move-result-object p1

    invoke-interface {v0, p1}, Lj$/util/function/s;->b(Lj$/util/function/s;)Lj$/util/function/s;

    move-result-object p1

    invoke-static {p1}, Lj$/wrappers/n0;->a(Lj$/util/function/s;)Ljava/util/function/LongUnaryOperator;

    move-result-object p1

    return-object p1
.end method
