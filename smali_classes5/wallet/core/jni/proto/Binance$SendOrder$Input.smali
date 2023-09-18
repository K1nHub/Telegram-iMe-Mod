.class public final Lwallet/core/jni/proto/Binance$SendOrder$Input;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SendOrder$InputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$SendOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$SendOrder$Input;",
        "Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SendOrder$InputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final COINS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Input;",
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

    .line 4278
    new-instance v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Input;-><init>()V

    .line 4281
    sput-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    .line 4282
    const-class v1, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3750
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3751
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->address_:Lcom/google/protobuf/ByteString;

    .line 3752
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$6400()Lwallet/core/jni/proto/Binance$SendOrder$Input;
    .locals 1

    .line 3745
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object v0
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/Binance$SendOrder$Input;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3745
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->setAddress(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/Binance$SendOrder$Input;)V
    .locals 0

    .line 3745
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->clearAddress()V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/Binance$SendOrder$Input;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 3745
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->setCoins(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/Binance$SendOrder$Input;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 3745
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->addCoins(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$6900(Lwallet/core/jni/proto/Binance$SendOrder$Input;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 3745
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->addCoins(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$7000(Lwallet/core/jni/proto/Binance$SendOrder$Input;Ljava/lang/Iterable;)V
    .locals 0

    .line 3745
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->addAllCoins(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$7100(Lwallet/core/jni/proto/Binance$SendOrder$Input;)V
    .locals 0

    .line 3745
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->clearCoins()V

    return-void
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/Binance$SendOrder$Input;I)V
    .locals 0

    .line 3745
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->removeCoins(I)V

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

    .line 3905
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->ensureCoinsIsMutable()V

    .line 3906
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 3892
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3893
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->ensureCoinsIsMutable()V

    .line 3894
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 3879
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3880
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->ensureCoinsIsMutable()V

    .line 3881
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAddress()V
    .locals 1

    .line 3790
    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder$Input;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->getAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->address_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearCoins()V
    .locals 1

    .line 3917
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureCoinsIsMutable()V
    .locals 2

    .line 3851
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3852
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3854
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder$Input;
    .locals 1

    .line 4287
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
    .locals 1

    .line 4006
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$SendOrder$Input;)Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4009
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SendOrder$Input;
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

    .line 3983
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Input;
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

    .line 3989
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SendOrder$Input;
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

    .line 3947
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Input;
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

    .line 3954
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$SendOrder$Input;
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

    .line 3994
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Input;
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

    .line 4001
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SendOrder$Input;
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

    .line 3971
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Input;
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

    .line 3978
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$SendOrder$Input;
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

    .line 3934
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Input;
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

    .line 3941
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$SendOrder$Input;
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

    .line 3959
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Input;
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

    .line 3966
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Input;",
            ">;"
        }
    .end annotation

    .line 4293
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

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

    .line 3927
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->ensureCoinsIsMutable()V

    .line 3928
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 3777
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3779
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->address_:Lcom/google/protobuf/ByteString;

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

    .line 3867
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3868
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Input;->ensureCoinsIsMutable()V

    .line 3869
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 4227
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4271
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4265
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4250
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$SendOrder$Input;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4252
    const-class p2, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    monitor-enter p2

    .line 4253
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$SendOrder$Input;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4255
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4258
    sput-object p1, Lwallet/core/jni/proto/Binance$SendOrder$Input;->PARSER:Lcom/google/protobuf/Parser;

    .line 4260
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

    .line 4247
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

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

    .line 4235
    const-class p3, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\n\u0002\u001b"

    .line 4243
    sget-object p3, Lwallet/core/jni/proto/Binance$SendOrder$Input;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4232
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$SendOrder$Input$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 4229
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$SendOrder$Input;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$SendOrder$Input;-><init>()V

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

    .line 3766
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->address_:Lcom/google/protobuf/ByteString;

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

    .line 3837
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p1
.end method

.method public getCoinsCount()I
    .locals 1

    .line 3826
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 3804
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 3848
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 3815
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Input;->coins_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
