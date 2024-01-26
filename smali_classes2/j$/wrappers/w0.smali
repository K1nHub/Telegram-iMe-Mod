.class public final synthetic Lj$/wrappers/w0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field final synthetic a:Lj$/util/function/x;


# direct methods
.method private synthetic constructor <init>(Lj$/util/function/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/wrappers/w0;->a:Lj$/util/function/x;

    return-void
.end method

.method public static synthetic a(Lj$/util/function/x;)Ljava/util/function/Supplier;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lj$/wrappers/v0;

    if-eqz v0, :cond_1

    check-cast p0, Lj$/wrappers/v0;

    iget-object p0, p0, Lj$/wrappers/v0;->a:Ljava/util/function/Supplier;

    return-object p0

    :cond_1
    new-instance v0, Lj$/wrappers/w0;

    invoke-direct {v0, p0}, Lj$/wrappers/w0;-><init>(Lj$/util/function/x;)V

    return-object v0
.end method


# virtual methods
.method public synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/wrappers/w0;->a:Lj$/util/function/x;

    invoke-interface {v0}, Lj$/util/function/x;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
