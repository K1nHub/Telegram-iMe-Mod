.class public Lorg/web3j/abi/datatypes/Bool;
.super Ljava/lang/Object;
.source "Bool.java"

# interfaces
.implements Lorg/web3j/abi/datatypes/Type;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/web3j/abi/datatypes/Type<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lorg/web3j/abi/datatypes/Bool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/web3j/abi/datatypes/Bool;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lorg/web3j/abi/datatypes/Bool;->value:Z

    return-void
.end method


# virtual methods
.method public synthetic bytes32PaddedLength()I
    .locals 1

    invoke-static {p0}, Lorg/web3j/abi/datatypes/Type$-CC;->$default$bytes32PaddedLength(Lorg/web3j/abi/datatypes/Type;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 46
    const-class v2, Lorg/web3j/abi/datatypes/Bool;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 50
    :cond_1
    check-cast p1, Lorg/web3j/abi/datatypes/Bool;

    .line 52
    iget-boolean v2, p0, Lorg/web3j/abi/datatypes/Bool;->value:Z

    iget-boolean p1, p1, Lorg/web3j/abi/datatypes/Bool;->value:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getTypeAsString()Ljava/lang/String;
    .locals 1

    const-string v0, "bool"

    return-object v0
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 1

    .line 38
    iget-boolean v0, p0, Lorg/web3j/abi/datatypes/Bool;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Bool;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 57
    iget-boolean v0, p0, Lorg/web3j/abi/datatypes/Bool;->value:Z

    return v0
.end method
