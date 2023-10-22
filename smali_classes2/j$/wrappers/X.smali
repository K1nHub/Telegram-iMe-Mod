.class public final synthetic Lj$/wrappers/X;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntToLongFunction;


# instance fields
.field final synthetic a:Lj$/util/function/m;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/wrappers/X;->a:Lj$/util/function/m;

    return-void
.end method

.method public static synthetic a(Lj$/util/function/m;)Ljava/util/function/IntToLongFunction;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/wrappers/W;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/wrappers/W;

    iget-object p0, p0, Lj$/wrappers/W;->a:Ljava/util/function/IntToLongFunction;

    return-object p0

    :cond_1
    new-instance v0, Lj$/wrappers/X;

    invoke-direct {v0, p0}, Lj$/wrappers/X;-><init>(Lj$/util/function/m;)V

    return-object v0
.end method


# virtual methods
.method public synthetic applyAsLong(I)J
    .locals 2

    iget-object v0, p0, Lj$/wrappers/X;->a:Lj$/util/function/m;

    invoke-interface {v0, p1}, Lj$/util/function/m;->applyAsLong(I)J

    move-result-wide v0

    return-wide v0
.end method
