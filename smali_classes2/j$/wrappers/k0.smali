.class public final synthetic Lj$/wrappers/k0;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Ljava/util/function/LongToIntFunction;


# direct methods
.method private synthetic constructor <init>(Ljava/util/function/LongToIntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/wrappers/k0;->a:Ljava/util/function/LongToIntFunction;

    return-void
.end method

.method public static synthetic b(Ljava/util/function/LongToIntFunction;)Lj$/wrappers/k0;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/wrappers/l0;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/wrappers/l0;

    iget-object p0, p0, Lj$/wrappers/l0;->a:Lj$/wrappers/k0;

    return-object p0

    :cond_1
    new-instance v0, Lj$/wrappers/k0;

    invoke-direct {v0, p0}, Lj$/wrappers/k0;-><init>(Ljava/util/function/LongToIntFunction;)V

    return-object v0
.end method


# virtual methods
.method public a(J)I
    .locals 1

    iget-object v0, p0, Lj$/wrappers/k0;->a:Ljava/util/function/LongToIntFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongToIntFunction;->applyAsInt(J)I

    move-result p1

    return p1
.end method
