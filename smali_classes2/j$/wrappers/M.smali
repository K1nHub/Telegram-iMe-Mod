.class public final synthetic Lj$/wrappers/M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntBinaryOperator;


# instance fields
.field final synthetic a:Lj$/util/function/j;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/wrappers/M;->a:Lj$/util/function/j;

    return-void
.end method

.method public static synthetic a(Lj$/util/function/j;)Ljava/util/function/IntBinaryOperator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/wrappers/L;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/wrappers/L;

    iget-object p0, p0, Lj$/wrappers/L;->a:Ljava/util/function/IntBinaryOperator;

    return-object p0

    :cond_1
    new-instance v0, Lj$/wrappers/M;

    invoke-direct {v0, p0}, Lj$/wrappers/M;-><init>(Lj$/util/function/j;)V

    return-object v0
.end method


# virtual methods
.method public synthetic applyAsInt(II)I
    .locals 1

    iget-object v0, p0, Lj$/wrappers/M;->a:Lj$/util/function/j;

    invoke-interface {v0, p1, p2}, Lj$/util/function/j;->applyAsInt(II)I

    move-result p1

    return p1
.end method
