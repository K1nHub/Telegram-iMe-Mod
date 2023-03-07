.class public Lorg/web3j/abi/datatypes/DynamicArray;
.super Lorg/web3j/abi/datatypes/Array;
.source "DynamicArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/web3j/abi/datatypes/Type;",
        ">",
        "Lorg/web3j/abi/datatypes/Array<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/util/List;)V
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

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/web3j/abi/datatypes/Array;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bytes32PaddedLength()I
    .locals 1

    .line 50
    invoke-super {p0}, Lorg/web3j/abi/datatypes/Array;->bytes32PaddedLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    return v0
.end method

.method public getTypeAsString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/web3j/abi/datatypes/Array;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lorg/web3j/abi/datatypes/AbiTypes;->getTypeAString(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
