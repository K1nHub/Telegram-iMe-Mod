.class public abstract Lorg/web3j/abi/datatypes/Array;
.super Ljava/lang/Object;
.source "Array.java"

# interfaces
.implements Lorg/web3j/abi/datatypes/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/web3j/abi/datatypes/Type;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/web3j/abi/datatypes/Type<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/web3j/abi/datatypes/Array;->checkValid(Ljava/lang/Class;Ljava/util/List;)V

    .line 52
    iput-object p1, p0, Lorg/web3j/abi/datatypes/Array;->type:Ljava/lang/Class;

    .line 53
    iput-object p2, p0, Lorg/web3j/abi/datatypes/Array;->value:Ljava/util/List;

    return-void
.end method

.method private checkValid(Ljava/lang/Class;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 79
    invoke-static {p1}, Lorg/web3j/compat/Compat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p2}, Lorg/web3j/compat/Compat;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bytes32PaddedLength()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    :goto_0
    iget-object v2, p0, Lorg/web3j/abi/datatypes/Array;->value:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 60
    iget-object v2, p0, Lorg/web3j/abi/datatypes/Array;->value:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/web3j/abi/datatypes/Type;

    invoke-interface {v2}, Lorg/web3j/abi/datatypes/Type;->bytes32PaddedLength()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    check-cast p1, Lorg/web3j/abi/datatypes/Array;

    .line 94
    iget-object v1, p0, Lorg/web3j/abi/datatypes/Array;->type:Ljava/lang/Class;

    iget-object v2, p1, Lorg/web3j/abi/datatypes/Array;->type:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 97
    :cond_2
    iget-object v0, p0, Lorg/web3j/abi/datatypes/Array;->value:Ljava/util/List;

    iget-object p1, p1, Lorg/web3j/abi/datatypes/Array;->value:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/web3j/compat/Compat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public getComponentType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/web3j/abi/datatypes/Array;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getValue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/web3j/abi/datatypes/Array;->value:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/web3j/abi/datatypes/Array;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget-object v1, p0, Lorg/web3j/abi/datatypes/Array;->value:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
