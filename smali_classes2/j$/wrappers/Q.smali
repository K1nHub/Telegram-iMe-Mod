.class public final synthetic Lj$/wrappers/Q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field final synthetic a:Lj$/util/function/IntFunction;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/IntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/wrappers/Q;->a:Lj$/util/function/IntFunction;

    return-void
.end method

.method public static synthetic a(Lj$/util/function/IntFunction;)Ljava/util/function/IntFunction;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/wrappers/P;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/wrappers/P;

    iget-object p0, p0, Lj$/wrappers/P;->a:Ljava/util/function/IntFunction;

    return-object p0

    :cond_1
    new-instance v0, Lj$/wrappers/Q;

    invoke-direct {v0, p0}, Lj$/wrappers/Q;-><init>(Lj$/util/function/IntFunction;)V

    return-object v0
.end method


# virtual methods
.method public synthetic apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/Q;->a:Lj$/util/function/IntFunction;

    invoke-interface {v0, p1}, Lj$/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
