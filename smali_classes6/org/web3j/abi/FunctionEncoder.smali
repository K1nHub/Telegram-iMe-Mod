.class public abstract Lorg/web3j/abi/FunctionEncoder;
.super Ljava/lang/Object;
.source "FunctionEncoder.java"


# static fields
.field private static DEFAULT_ENCODER:Lorg/web3j/abi/FunctionEncoder;

.field private static final loader:Ljava/util/ServiceLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader<",
            "Lorg/web3j/abi/spi/FunctionEncoderProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lorg/web3j/abi/spi/FunctionEncoderProvider;

    .line 43
    invoke-static {v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    sput-object v0, Lorg/web3j/abi/FunctionEncoder;->loader:Ljava/util/ServiceLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static buildMethodId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 90
    invoke-static {p0}, Lorg/web3j/crypto/Hash;->sha3([B)[B

    move-result-object p0

    .line 91
    invoke-static {p0}, Lorg/web3j/utils/Numeric;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static buildMethodSignature(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/web3j/abi/datatypes/Type;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    sget-object p0, Lorg/web3j/abi/FunctionEncoder$$ExternalSyntheticLambda0;->INSTANCE:Lorg/web3j/abi/FunctionEncoder$$ExternalSyntheticLambda0;

    const-string v1, ","

    invoke-static {p1, v1, p0}, Lorg/web3j/utils/Collection;->join(Ljava/util/List;Ljava/lang/String;Lorg/web3j/utils/Collection$Function;)Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 84
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static defaultEncoder()Lorg/web3j/abi/FunctionEncoder;
    .locals 1

    .line 101
    sget-object v0, Lorg/web3j/abi/FunctionEncoder;->DEFAULT_ENCODER:Lorg/web3j/abi/FunctionEncoder;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lorg/web3j/abi/DefaultFunctionEncoder;

    invoke-direct {v0}, Lorg/web3j/abi/DefaultFunctionEncoder;-><init>()V

    sput-object v0, Lorg/web3j/abi/FunctionEncoder;->DEFAULT_ENCODER:Lorg/web3j/abi/FunctionEncoder;

    .line 104
    :cond_0
    sget-object v0, Lorg/web3j/abi/FunctionEncoder;->DEFAULT_ENCODER:Lorg/web3j/abi/FunctionEncoder;

    return-object v0
.end method

.method public static encode(Lorg/web3j/abi/datatypes/Function;)Ljava/lang/String;
    .locals 1

    .line 46
    invoke-static {}, Lorg/web3j/abi/FunctionEncoder;->encoder()Lorg/web3j/abi/FunctionEncoder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/web3j/abi/FunctionEncoder;->encodeFunction(Lorg/web3j/abi/datatypes/Function;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encoder()Lorg/web3j/abi/FunctionEncoder;
    .locals 2

    .line 95
    sget-object v0, Lorg/web3j/abi/FunctionEncoder;->loader:Ljava/util/ServiceLoader;

    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/web3j/abi/spi/FunctionEncoderProvider;

    invoke-interface {v0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/web3j/abi/FunctionEncoder;

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/web3j/abi/FunctionEncoder;->defaultEncoder()Lorg/web3j/abi/FunctionEncoder;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected abstract encodeFunction(Lorg/web3j/abi/datatypes/Function;)Ljava/lang/String;
.end method
