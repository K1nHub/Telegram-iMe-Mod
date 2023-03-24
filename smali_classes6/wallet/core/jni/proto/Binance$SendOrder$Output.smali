.class public final Lwallet/core/jni/proto/Binance$SendOrder$Output;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SendOrder$OutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$SendOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$SendOrder$Output$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$SendOrder$Output;",
        "Lwallet/core/jni/proto/Binance$SendOrder$Output$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SendOrder$OutputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final COINS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Output;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address_:Lcom/google/protobuf/ByteString;

.field private coins_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4877
    new-instance v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Output;-><init>()V

    .line 4880
    sput-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    .line 4881
    const-class v1, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4349
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4350
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->address_:Lcom/google/protobuf/ByteString;

    .line 4351
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$7400()Lwallet/core/jni/proto/Binance$SendOrder$Output;
    .locals 1

    .line 4344
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object v0
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/Binance$SendOrder$Output;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4344
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->setAddress(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7600(Lwallet/core/jni/proto/Binance$SendOrder$Output;)V
    .locals 0

    .line 4344
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->clearAddress()V

    return-void
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/Binance$SendOrder$Output;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 4344
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->setCoins(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/Binance$SendOrder$Output;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 4344
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->addCoins(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/Binance$SendOrder$Output;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 4344
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->addCoins(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/Binance$SendOrder$Output;Ljava/lang/Iterable;)V
    .locals 0

    .line 4344
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->addAllCoins(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/Binance$SendOrder$Output;)V
    .locals 0

    .line 4344
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->clearCoins()V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/Binance$SendOrder$Output;I)V
    .locals 0

    .line 4344
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->removeCoins(I)V

    return-void
.end method

.method private addAllCoins(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;)V"
        }
    .end annotation

    .line 4504
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->ensureCoinsIsMutable()V

    .line 4505
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addCoins(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
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

    .line 4491
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4492
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->ensureCoinsIsMutable()V

    .line 4493
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCoins(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4478
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4479
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->ensureCoinsIsMutable()V

    .line 4480
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAddress()V
    .locals 1

    .line 4389
    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder$Output;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->getAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->address_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearCoins()V
    .locals 1

    .line 4516
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureCoinsIsMutable()V
    .locals 2

    .line 4450
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4451
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4453
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder$Output;
    .locals 1

    .line 4886
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$SendOrder$Output$Builder;
    .locals 1

    .line 4605
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Output$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$SendOrder$Output;)Lwallet/core/jni/proto/Binance$SendOrder$Output$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4608
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Output$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SendOrder$Output;
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

    .line 4582
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Output;
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

    .line 4588
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SendOrder$Output;
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

    .line 4546
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Output;
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

    .line 4553
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$SendOrder$Output;
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

    .line 4593
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Output;
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

    .line 4600
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SendOrder$Output;
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

    .line 4570
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Output;
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

    .line 4577
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$SendOrder$Output;
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

    .line 4533
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Output;
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

    .line 4540
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$SendOrder$Output;
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

    .line 4558
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Output;
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

    .line 4565
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Output;",
            ">;"
        }
    .end annotation

    .line 4892
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeCoins(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4526
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->ensureCoinsIsMutable()V

    .line 4527
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAddress(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4376
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4378
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->address_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setCoins(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
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

    .line 4466
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4467
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Output;->ensureCoinsIsMutable()V

    .line 4468
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 4826
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4870
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4864
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4849
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$SendOrder$Output;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4851
    const-class p2, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    monitor-enter p2

    .line 4852
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$SendOrder$Output;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4854
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4857
    sput-object p1, Lwallet/core/jni/proto/Binance$SendOrder$Output;->PARSER:Lcom/google/protobuf/Parser;

    .line 4859
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

    .line 4846
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "address_"

    aput-object v0, p1, p3

    const-string p3, "coins_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 4834
    const-class p3, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\n\u0002\u001b"

    .line 4842
    sget-object p3, Lwallet/core/jni/proto/Binance$SendOrder$Output;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4831
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$SendOrder$Output$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$SendOrder$Output$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 4828
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$SendOrder$Output;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$SendOrder$Output;-><init>()V

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

.method public getAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4365
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->address_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCoins(I)Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4436
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p1
.end method

.method public getCoinsCount()I
    .locals 1

    .line 4425
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCoinsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;"
        }
    .end annotation

    .line 4403
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCoinsOrBuilder(I)Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4447
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;

    return-object p1
.end method

.method public getCoinsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4414
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Output;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
