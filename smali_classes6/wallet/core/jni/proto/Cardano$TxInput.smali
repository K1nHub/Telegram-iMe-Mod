.class public final Lwallet/core/jni/proto/Cardano$TxInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$TxInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TxInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cardano$TxInput;",
        "Lwallet/core/jni/proto/Cardano$TxInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$TxInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

.field public static final OUT_POINT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$TxInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOKEN_AMOUNT_FIELD_NUMBER:I = 0x4


# instance fields
.field private address_:Ljava/lang/String;

.field private amount_:J

.field private outPoint_:Lwallet/core/jni/proto/Cardano$OutPoint;

.field private tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1873
    new-instance v0, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cardano$TxInput;-><init>()V

    .line 1876
    sput-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    .line 1877
    const-class v1, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1071
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1072
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->address_:Ljava/lang/String;

    .line 1073
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1600()Lwallet/core/jni/proto/Cardano$TxInput;
    .locals 1

    .line 1066
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    return-object v0
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Cardano$TxInput;Lwallet/core/jni/proto/Cardano$OutPoint;)V
    .locals 0

    .line 1066
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->setOutPoint(Lwallet/core/jni/proto/Cardano$OutPoint;)V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Cardano$TxInput;Lwallet/core/jni/proto/Cardano$OutPoint;)V
    .locals 0

    .line 1066
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->mergeOutPoint(Lwallet/core/jni/proto/Cardano$OutPoint;)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Cardano$TxInput;)V
    .locals 0

    .line 1066
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxInput;->clearOutPoint()V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Cardano$TxInput;Ljava/lang/String;)V
    .locals 0

    .line 1066
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->setAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Cardano$TxInput;)V
    .locals 0

    .line 1066
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxInput;->clearAddress()V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Cardano$TxInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1066
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->setAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Cardano$TxInput;J)V
    .locals 0

    .line 1066
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxInput;->setAmount(J)V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Cardano$TxInput;)V
    .locals 0

    .line 1066
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxInput;->clearAmount()V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Cardano$TxInput;ILwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 1066
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxInput;->setTokenAmount(ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Cardano$TxInput;Lwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 1066
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->addTokenAmount(Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Cardano$TxInput;ILwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 1066
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxInput;->addTokenAmount(ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Cardano$TxInput;Ljava/lang/Iterable;)V
    .locals 0

    .line 1066
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->addAllTokenAmount(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Cardano$TxInput;)V
    .locals 0

    .line 1066
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxInput;->clearTokenAmount()V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Cardano$TxInput;I)V
    .locals 0

    .line 1066
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TxInput;->removeTokenAmount(I)V

    return-void
.end method

.method private addAllTokenAmount(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;)V"
        }
    .end annotation

    .line 1358
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxInput;->ensureTokenAmountIsMutable()V

    .line 1359
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addTokenAmount(ILwallet/core/jni/proto/Cardano$TokenAmount;)V
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

    .line 1345
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1346
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxInput;->ensureTokenAmountIsMutable()V

    .line 1347
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTokenAmount(Lwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1333
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxInput;->ensureTokenAmountIsMutable()V

    .line 1334
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAddress()V
    .locals 1

    .line 1191
    invoke-static {}, Lwallet/core/jni/proto/Cardano$TxInput;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$TxInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TxInput;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->address_:Ljava/lang/String;

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1243
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->amount_:J

    return-void
.end method

.method private clearOutPoint()V
    .locals 1

    const/4 v0, 0x0

    .line 1137
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->outPoint_:Lwallet/core/jni/proto/Cardano$OutPoint;

    return-void
.end method

.method private clearTokenAmount()V
    .locals 1

    .line 1370
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureTokenAmountIsMutable()V
    .locals 2

    .line 1304
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1305
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1307
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cardano$TxInput;
    .locals 1

    .line 1882
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    return-object v0
.end method

.method private mergeOutPoint(Lwallet/core/jni/proto/Cardano$OutPoint;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1121
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->outPoint_:Lwallet/core/jni/proto/Cardano$OutPoint;

    if-eqz v0, :cond_0

    .line 1122
    invoke-static {}, Lwallet/core/jni/proto/Cardano$OutPoint;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$OutPoint;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1123
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->outPoint_:Lwallet/core/jni/proto/Cardano$OutPoint;

    .line 1124
    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$OutPoint;->newBuilder(Lwallet/core/jni/proto/Cardano$OutPoint;)Lwallet/core/jni/proto/Cardano$OutPoint$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$OutPoint$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$OutPoint;

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$TxInput;->outPoint_:Lwallet/core/jni/proto/Cardano$OutPoint;

    goto :goto_0

    .line 1126
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$TxInput;->outPoint_:Lwallet/core/jni/proto/Cardano$OutPoint;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1

    .line 1459
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cardano$TxInput;)Lwallet/core/jni/proto/Cardano$TxInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1462
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$TxInput;
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

    .line 1436
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TxInput;
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

    .line 1442
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$TxInput;
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

    .line 1400
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TxInput;
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

    .line 1407
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cardano$TxInput;
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

    .line 1447
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TxInput;
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

    .line 1454
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$TxInput;
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

    .line 1424
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TxInput;
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

    .line 1431
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cardano$TxInput;
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

    .line 1387
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TxInput;
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

    .line 1394
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cardano$TxInput;
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

    .line 1412
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TxInput;
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

    .line 1419
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$TxInput;",
            ">;"
        }
    .end annotation

    .line 1888
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeTokenAmount(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1380
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxInput;->ensureTokenAmountIsMutable()V

    .line 1381
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1180
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$TxInput;->address_:Ljava/lang/String;

    return-void
.end method

.method private setAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1203
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1204
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$TxInput;->address_:Ljava/lang/String;

    return-void
.end method

.method private setAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1232
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$TxInput;->amount_:J

    return-void
.end method

.method private setOutPoint(Lwallet/core/jni/proto/Cardano$OutPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1108
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$TxInput;->outPoint_:Lwallet/core/jni/proto/Cardano$OutPoint;

    return-void
.end method

.method private setTokenAmount(ILwallet/core/jni/proto/Cardano$TokenAmount;)V
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

    .line 1320
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1321
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxInput;->ensureTokenAmountIsMutable()V

    .line 1322
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 1820
    sget-object p2, Lwallet/core/jni/proto/Cardano$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1866
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1860
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1845
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cardano$TxInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1847
    const-class p2, Lwallet/core/jni/proto/Cardano$TxInput;

    monitor-enter p2

    .line 1848
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cardano$TxInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1850
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1853
    sput-object p1, Lwallet/core/jni/proto/Cardano$TxInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1855
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

    .line 1842
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "outPoint_"

    aput-object v0, p1, p3

    const-string p3, "address_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "tokenAmount_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 1828
    const-class p3, Lwallet/core/jni/proto/Cardano$TokenAmount;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\t\u0002\u0208\u0003\u0003\u0004\u001b"

    .line 1838
    sget-object p3, Lwallet/core/jni/proto/Cardano$TxInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1825
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cardano$TxInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cardano$TxInput$Builder;-><init>(Lwallet/core/jni/proto/Cardano$1;)V

    return-object p1

    .line 1822
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cardano$TxInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cardano$TxInput;-><init>()V

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

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1153
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1166
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->address_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAmount()J
    .locals 2

    .line 1220
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->amount_:J

    return-wide v0
.end method

.method public getOutPoint()Lwallet/core/jni/proto/Cardano$OutPoint;
    .locals 1

    .line 1097
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->outPoint_:Lwallet/core/jni/proto/Cardano$OutPoint;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cardano$OutPoint;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$OutPoint;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTokenAmount(I)Lwallet/core/jni/proto/Cardano$TokenAmount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1290
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p1
.end method

.method public getTokenAmountCount()I
    .locals 1

    .line 1279
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTokenAmountList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation

    .line 1257
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTokenAmountOrBuilder(I)Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1301
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;

    return-object p1
.end method

.method public getTokenAmountOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1268
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasOutPoint()Z
    .locals 1

    .line 1086
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxInput;->outPoint_:Lwallet/core/jni/proto/Cardano$OutPoint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
