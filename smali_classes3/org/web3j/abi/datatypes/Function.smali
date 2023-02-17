.class public Lorg/web3j/abi/datatypes/Function;
.super Ljava/lang/Object;
.source "Function.java"


# instance fields
.field private inputParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/web3j/abi/datatypes/Type;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private outputParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/web3j/abi/TypeReference<",
            "Lorg/web3j/abi/datatypes/Type;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/web3j/abi/datatypes/Type;",
            ">;",
            "Ljava/util/List<",
            "Lorg/web3j/abi/TypeReference<",
            "*>;>;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/web3j/abi/datatypes/Function;->name:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lorg/web3j/abi/datatypes/Function;->inputParameters:Ljava/util/List;

    .line 31
    invoke-static {p3}, Lorg/web3j/abi/Utils;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/web3j/abi/datatypes/Function;->outputParameters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getInputParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/web3j/abi/datatypes/Type;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lorg/web3j/abi/datatypes/Function;->inputParameters:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lorg/web3j/abi/datatypes/Function;->name:Ljava/lang/String;

    return-object v0
.end method
