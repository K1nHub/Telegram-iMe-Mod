.class public final Lwallet/core/jni/proto/VeChain$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "VeChain.java"

# interfaces
.implements Lwallet/core/jni/proto/VeChain$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/VeChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/VeChain$SigningInput;",
        "Lwallet/core/jni/proto/VeChain$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/VeChain$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final BLOCK_REF_FIELD_NUMBER:I = 0x2

.field public static final CHAIN_TAG_FIELD_NUMBER:I = 0x1

.field public static final CLAUSES_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

.field public static final DEPENDS_ON_FIELD_NUMBER:I = 0x7

.field public static final EXPIRATION_FIELD_NUMBER:I = 0x3

.field public static final GAS_FIELD_NUMBER:I = 0x6

.field public static final GAS_PRICE_COEF_FIELD_NUMBER:I = 0x5

.field public static final NONCE_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/VeChain$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x9


# instance fields
.field private blockRef_:J

.field private chainTag_:I

.field private clauses_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/VeChain$Clause;",
            ">;"
        }
    .end annotation
.end field

.field private dependsOn_:Lcom/google/protobuf/ByteString;

.field private expiration_:I

.field private gasPriceCoef_:I

.field private gas_:J

.field private nonce_:J

.field private privateKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1825
    new-instance v0, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;-><init>()V

    .line 1828
    sput-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    .line 1829
    const-class v1, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 673
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 674
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->clauses_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 675
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->dependsOn_:Lcom/google/protobuf/ByteString;

    .line 676
    iput-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/VeChain$SigningInput;I)V
    .locals 0

    .line 668
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->setChainTag(I)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/VeChain$SigningInput;)V
    .locals 0

    .line 668
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput;->clearChainTag()V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/VeChain$SigningInput;J)V
    .locals 0

    .line 668
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/VeChain$SigningInput;->setBlockRef(J)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/VeChain$SigningInput;)V
    .locals 0

    .line 668
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput;->clearBlockRef()V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/VeChain$SigningInput;I)V
    .locals 0

    .line 668
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->setExpiration(I)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/VeChain$SigningInput;)V
    .locals 0

    .line 668
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput;->clearExpiration()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/VeChain$SigningInput;ILwallet/core/jni/proto/VeChain$Clause;)V
    .locals 0

    .line 668
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/VeChain$SigningInput;->setClauses(ILwallet/core/jni/proto/VeChain$Clause;)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/VeChain$SigningInput;Lwallet/core/jni/proto/VeChain$Clause;)V
    .locals 0

    .line 668
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->addClauses(Lwallet/core/jni/proto/VeChain$Clause;)V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/VeChain$SigningInput;ILwallet/core/jni/proto/VeChain$Clause;)V
    .locals 0

    .line 668
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/VeChain$SigningInput;->addClauses(ILwallet/core/jni/proto/VeChain$Clause;)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/VeChain$SigningInput;Ljava/lang/Iterable;)V
    .locals 0

    .line 668
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->addAllClauses(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/VeChain$SigningInput;)V
    .locals 0

    .line 668
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput;->clearClauses()V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/VeChain$SigningInput;I)V
    .locals 0

    .line 668
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->removeClauses(I)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/VeChain$SigningInput;I)V
    .locals 0

    .line 668
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->setGasPriceCoef(I)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/VeChain$SigningInput;)V
    .locals 0

    .line 668
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput;->clearGasPriceCoef()V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/VeChain$SigningInput;J)V
    .locals 0

    .line 668
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/VeChain$SigningInput;->setGas(J)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/VeChain$SigningInput;)V
    .locals 0

    .line 668
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput;->clearGas()V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/VeChain$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 668
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->setDependsOn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/VeChain$SigningInput;)V
    .locals 0

    .line 668
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput;->clearDependsOn()V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/VeChain$SigningInput;J)V
    .locals 0

    .line 668
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/VeChain$SigningInput;->setNonce(J)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/VeChain$SigningInput;)V
    .locals 0

    .line 668
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput;->clearNonce()V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/VeChain$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 668
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/VeChain$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/VeChain$SigningInput;)V
    .locals 0

    .line 668
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$900()Lwallet/core/jni/proto/VeChain$SigningInput;
    .locals 1

    .line 668
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object v0
.end method

.method private addAllClauses(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/VeChain$Clause;",
            ">;)V"
        }
    .end annotation

    .line 931
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput;->ensureClausesIsMutable()V

    .line 932
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->clauses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addClauses(ILwallet/core/jni/proto/VeChain$Clause;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 915
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 916
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput;->ensureClausesIsMutable()V

    .line 917
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->clauses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addClauses(Lwallet/core/jni/proto/VeChain$Clause;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 899
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 900
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput;->ensureClausesIsMutable()V

    .line 901
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->clauses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearBlockRef()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 751
    iput-wide v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->blockRef_:J

    return-void
.end method

.method private clearChainTag()V
    .locals 1

    const/4 v0, 0x0

    .line 713
    iput v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->chainTag_:I

    return-void
.end method

.method private clearClauses()V
    .locals 1

    .line 946
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->clauses_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDependsOn()V
    .locals 1

    .line 1075
    invoke-static {}, Lwallet/core/jni/proto/VeChain$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/VeChain$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->getDependsOn()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->dependsOn_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearExpiration()V
    .locals 1

    const/4 v0, 0x0

    .line 789
    iput v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->expiration_:I

    return-void
.end method

.method private clearGas()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1036
    iput-wide v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->gas_:J

    return-void
.end method

.method private clearGasPriceCoef()V
    .locals 1

    const/4 v0, 0x0

    .line 998
    iput v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->gasPriceCoef_:I

    return-void
.end method

.method private clearNonce()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1113
    iput-wide v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->nonce_:J

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 1152
    invoke-static {}, Lwallet/core/jni/proto/VeChain$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/VeChain$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/VeChain$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private ensureClausesIsMutable()V
    .locals 2

    .line 865
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->clauses_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 866
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 868
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->clauses_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/VeChain$SigningInput;
    .locals 1

    .line 1834
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1

    .line 1230
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/VeChain$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/VeChain$SigningInput;)Lwallet/core/jni/proto/VeChain$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1233
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/VeChain$SigningInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1207
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/VeChain$SigningInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1213
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/VeChain$SigningInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1171
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/VeChain$SigningInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1178
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/VeChain$SigningInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1218
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/VeChain$SigningInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1225
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/VeChain$SigningInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1195
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/VeChain$SigningInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1202
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/VeChain$SigningInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1158
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/VeChain$SigningInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1165
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/VeChain$SigningInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1183
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/VeChain$SigningInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1190
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/VeChain$SigningInput;",
            ">;"
        }
    .end annotation

    .line 1840
    sget-object v0, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeClauses(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 959
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput;->ensureClausesIsMutable()V

    .line 960
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->clauses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setBlockRef(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 740
    iput-wide p1, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->blockRef_:J

    return-void
.end method

.method private setChainTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 702
    iput p1, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->chainTag_:I

    return-void
.end method

.method private setClauses(ILwallet/core/jni/proto/VeChain$Clause;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 884
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 885
    invoke-direct {p0}, Lwallet/core/jni/proto/VeChain$SigningInput;->ensureClausesIsMutable()V

    .line 886
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->clauses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDependsOn(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1062
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1064
    iput-object p1, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->dependsOn_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setExpiration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 778
    iput p1, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->expiration_:I

    return-void
.end method

.method private setGas(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1025
    iput-wide p1, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->gas_:J

    return-void
.end method

.method private setGasPriceCoef(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 987
    iput p1, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->gasPriceCoef_:I

    return-void
.end method

.method private setNonce(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1102
    iput-wide p1, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->nonce_:J

    return-void
.end method

.method private setPrivateKey(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1139
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1141
    iput-object p1, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 1767
    sget-object p2, Lwallet/core/jni/proto/VeChain$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1818
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1812
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1797
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/VeChain$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1799
    const-class p2, Lwallet/core/jni/proto/VeChain$SigningInput;

    monitor-enter p2

    .line 1800
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/VeChain$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1802
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1805
    sput-object p1, Lwallet/core/jni/proto/VeChain$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1807
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 1794
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "chainTag_"

    aput-object v0, p1, p3

    const-string p3, "blockRef_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "expiration_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "clauses_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 1775
    const-class p3, Lwallet/core/jni/proto/VeChain$Clause;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "gasPriceCoef_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "gas_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "dependsOn_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0001\u0000\u0001\u000b\u0002\u0003\u0003\u000b\u0004\u001b\u0005\u000b\u0006\u0003\u0007\n\u0008\u0003\t\n"

    .line 1790
    sget-object p3, Lwallet/core/jni/proto/VeChain$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1772
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/VeChain$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/VeChain$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/VeChain$1;)V

    return-object p1

    .line 1769
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/VeChain$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/VeChain$SigningInput;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBlockRef()J
    .locals 2

    .line 728
    iget-wide v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->blockRef_:J

    return-wide v0
.end method

.method public getChainTag()I
    .locals 1

    .line 690
    iget v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->chainTag_:I

    return v0
.end method

.method public getClauses(I)Lwallet/core/jni/proto/VeChain$Clause;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->clauses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/VeChain$Clause;

    return-object p1
.end method

.method public getClausesCount()I
    .locals 1

    .line 834
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->clauses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getClausesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/VeChain$Clause;",
            ">;"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->clauses_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getClausesOrBuilder(I)Lwallet/core/jni/proto/VeChain$ClauseOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->clauses_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/VeChain$ClauseOrBuilder;

    return-object p1
.end method

.method public getClausesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/VeChain$ClauseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 820
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->clauses_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDependsOn()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1051
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->dependsOn_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getExpiration()I
    .locals 1

    .line 766
    iget v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->expiration_:I

    return v0
.end method

.method public getGas()J
    .locals 2

    .line 1013
    iget-wide v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->gas_:J

    return-wide v0
.end method

.method public getGasPriceCoef()I
    .locals 1

    .line 975
    iget v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->gasPriceCoef_:I

    return v0
.end method

.method public getNonce()J
    .locals 2

    .line 1090
    iget-wide v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->nonce_:J

    return-wide v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1128
    iget-object v0, p0, Lwallet/core/jni/proto/VeChain$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
