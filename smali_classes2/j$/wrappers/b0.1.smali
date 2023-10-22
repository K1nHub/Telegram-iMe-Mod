.class public final synthetic Lj$/wrappers/b0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/LongBinaryOperator;


# instance fields
.field final synthetic a:Lj$/util/function/n;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/wrappers/b0;->a:Lj$/util/function/n;

    return-void
.end method

.method public static synthetic a(Lj$/util/function/n;)Ljava/util/function/LongBinaryOperator;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/wrappers/a0;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/wrappers/a0;

    iget-object p0, p0, Lj$/wrappers/a0;->a:Ljava/util/function/LongBinaryOperator;

    return-object p0

    :cond_1
    new-instance v0, Lj$/wrappers/b0;

    invoke-direct {v0, p0}, Lj$/wrappers/b0;-><init>(Lj$/util/function/n;)V

    return-object v0
.end method


# virtual methods
.method public synthetic applyAsLong(JJ)J
    .locals 1

    iget-object v0, p0, Lj$/wrappers/b0;->a:Lj$/util/function/n;

    invoke-interface {v0, p1, p2, p3, p4}, Lj$/util/function/n;->applyAsLong(JJ)J

    move-result-wide p1

    return-wide p1
.end method
