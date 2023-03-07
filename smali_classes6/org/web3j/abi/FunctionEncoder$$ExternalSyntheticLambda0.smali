.class public final synthetic Lorg/web3j/abi/FunctionEncoder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/web3j/utils/Collection$Function;


# static fields
.field public static final synthetic INSTANCE:Lorg/web3j/abi/FunctionEncoder$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/web3j/abi/FunctionEncoder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/web3j/abi/FunctionEncoder$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/web3j/abi/FunctionEncoder$$ExternalSyntheticLambda0;->INSTANCE:Lorg/web3j/abi/FunctionEncoder$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/web3j/abi/datatypes/Type;

    invoke-interface {p1}, Lorg/web3j/abi/datatypes/Type;->getTypeAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
