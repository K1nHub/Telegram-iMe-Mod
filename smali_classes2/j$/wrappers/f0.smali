.class public final synthetic Lj$/wrappers/f0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongFunction;


# instance fields
.field final synthetic a:Lj$/util/function/q;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/wrappers/f0;->a:Lj$/util/function/q;

    return-void
.end method

.method public static synthetic a(Lj$/util/function/q;)Ljava/util/function/LongFunction;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/wrappers/e0;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/wrappers/e0;

    iget-object p0, p0, Lj$/wrappers/e0;->a:Ljava/util/function/LongFunction;

    return-object p0

    :cond_1
    new-instance v0, Lj$/wrappers/f0;

    invoke-direct {v0, p0}, Lj$/wrappers/f0;-><init>(Lj$/util/function/q;)V

    return-object v0
.end method


# virtual methods
.method public synthetic apply(J)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/f0;->a:Lj$/util/function/q;

    invoke-interface {v0, p1, p2}, Lj$/util/function/q;->apply(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
