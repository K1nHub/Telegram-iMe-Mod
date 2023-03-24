.class public final Lwallet/core/jni/proto/Cardano$TxOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$TxOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TxOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cardano$TxOutput;",
        "Lwallet/core/jni/proto/Cardano$TxOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$TxOutputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final AMOUNT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$TxOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOKEN_AMOUNT_FIELD_NUMBER:I = 0x3


# instance fields
.field private address_:Ljava/lang/String;

.field private amount_:J

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

    .line 2628
    new-instance v0, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cardano$TxOutput;-><init>()V

    .line 2631
    sput-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    .line 2632
    const-class v1, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1964
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1965
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->address_:Ljava/lang/String;

    .line 1966
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$3200()Lwallet/core/jni/proto/Cardano$TxOutput;
    .locals 1

    .line 1959
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object v0
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/Cardano$TxOutput;Ljava/lang/String;)V
    .locals 0

    .line 1959
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TxOutput;->setAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Cardano$TxOutput;)V
    .locals 0

    .line 1959
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxOutput;->clearAddress()V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Cardano$TxOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1959
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TxOutput;->setAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Cardano$TxOutput;J)V
    .locals 0

    .line 1959
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxOutput;->setAmount(J)V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Cardano$TxOutput;)V
    .locals 0

    .line 1959
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxOutput;->clearAmount()V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/Cardano$TxOutput;ILwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 1959
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxOutput;->setTokenAmount(ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/Cardano$TxOutput;Lwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 1959
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TxOutput;->addTokenAmount(Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/Cardano$TxOutput;ILwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 1959
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TxOutput;->addTokenAmount(ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/Cardano$TxOutput;Ljava/lang/Iterable;)V
    .locals 0

    .line 1959
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TxOutput;->addAllTokenAmount(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/Cardano$TxOutput;)V
    .locals 0

    .line 1959
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxOutput;->clearTokenAmount()V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Cardano$TxOutput;I)V
    .locals 0

    .line 1959
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TxOutput;->removeTokenAmount(I)V

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

    .line 2185
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxOutput;->ensureTokenAmountIsMutable()V

    .line 2186
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 2172
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2173
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxOutput;->ensureTokenAmountIsMutable()V

    .line 2174
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 2159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2160
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxOutput;->ensureTokenAmountIsMutable()V

    .line 2161
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAddress()V
    .locals 1

    .line 2018
    invoke-static {}, Lwallet/core/jni/proto/Cardano$TxOutput;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$TxOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$TxOutput;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->address_:Ljava/lang/String;

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2070
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->amount_:J

    return-void
.end method

.method private clearTokenAmount()V
    .locals 1

    .line 2197
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureTokenAmountIsMutable()V
    .locals 2

    .line 2131
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2132
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2134
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cardano$TxOutput;
    .locals 1

    .line 2637
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
    .locals 1

    .line 2286
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cardano$TxOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cardano$TxOutput;)Lwallet/core/jni/proto/Cardano$TxOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2289
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$TxOutput;
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

    .line 2263
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TxOutput;
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

    .line 2269
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$TxOutput;
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

    .line 2227
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TxOutput;
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

    .line 2234
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cardano$TxOutput;
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

    .line 2274
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TxOutput;
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

    .line 2281
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$TxOutput;
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

    .line 2251
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TxOutput;
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

    .line 2258
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cardano$TxOutput;
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

    .line 2214
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TxOutput;
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

    .line 2221
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cardano$TxOutput;
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

    .line 2239
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TxOutput;
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

    .line 2246
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$TxOutput;",
            ">;"
        }
    .end annotation

    .line 2643
    sget-object v0, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

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

    .line 2207
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxOutput;->ensureTokenAmountIsMutable()V

    .line 2208
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 2005
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2007
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->address_:Ljava/lang/String;

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

    .line 2030
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2031
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->address_:Ljava/lang/String;

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

    .line 2059
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->amount_:J

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

    .line 2147
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2148
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TxOutput;->ensureTokenAmountIsMutable()V

    .line 2149
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 2576
    sget-object p2, Lwallet/core/jni/proto/Cardano$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2621
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2615
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2600
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cardano$TxOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2602
    const-class p2, Lwallet/core/jni/proto/Cardano$TxOutput;

    monitor-enter p2

    .line 2603
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cardano$TxOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2605
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2608
    sput-object p1, Lwallet/core/jni/proto/Cardano$TxOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 2610
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

    .line 2597
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "address_"

    aput-object v0, p1, p3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "tokenAmount_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 2584
    const-class p3, Lwallet/core/jni/proto/Cardano$TokenAmount;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0208\u0002\u0003\u0003\u001b"

    .line 2593
    sget-object p3, Lwallet/core/jni/proto/Cardano$TxOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2581
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cardano$TxOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cardano$TxOutput$Builder;-><init>(Lwallet/core/jni/proto/Cardano$1;)V

    return-object p1

    .line 2578
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cardano$TxOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cardano$TxOutput;-><init>()V

    return-object p1

    nop

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

    .line 1980
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1993
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->address_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAmount()J
    .locals 2

    .line 2047
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->amount_:J

    return-wide v0
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

    .line 2117
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p1
.end method

.method public getTokenAmountCount()I
    .locals 1

    .line 2106
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 2084
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 2128
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 2095
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TxOutput;->tokenAmount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
