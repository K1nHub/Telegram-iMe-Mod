.class public final synthetic Lj$/wrappers/Y;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Ljava/util/function/IntUnaryOperator;


# direct methods
.method private synthetic constructor <init>(Ljava/util/function/IntUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/wrappers/Y;->a:Ljava/util/function/IntUnaryOperator;

    return-void
.end method

.method public static synthetic b(Ljava/util/function/IntUnaryOperator;)Lj$/wrappers/Y;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/wrappers/Z;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/wrappers/Z;

    iget-object p0, p0, Lj$/wrappers/Z;->a:Lj$/wrappers/Y;

    return-object p0

    :cond_1
    new-instance v0, Lj$/wrappers/Y;

    invoke-direct {v0, p0}, Lj$/wrappers/Y;-><init>(Ljava/util/function/IntUnaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    iget-object v0, p0, Lj$/wrappers/Y;->a:Ljava/util/function/IntUnaryOperator;

    invoke-interface {v0, p1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    return p1
.end method
