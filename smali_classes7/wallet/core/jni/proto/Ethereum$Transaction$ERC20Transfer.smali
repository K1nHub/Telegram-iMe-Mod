.class public final Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$Transaction$ERC20TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum$Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ERC20Transfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$Transaction$ERC20TransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_FIELD_NUMBER:I = 0x1


# instance fields
.field private amount_:Lcom/google/protobuf/ByteString;

.field private to_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1016
    new-instance v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;-><init>()V

    .line 1019
    sput-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    .line 1020
    const-class v1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 641
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 642
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->to_:Ljava/lang/String;

    .line 643
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 636
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)V
    .locals 0

    .line 636
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$600()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
    .locals 1

    .line 636
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object v0
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;Ljava/lang/String;)V
    .locals 0

    .line 636
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)V
    .locals 0

    .line 636
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->clearTo()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 636
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->setToBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 748
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 695
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->getTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->to_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
    .locals 1

    .line 1025
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;
    .locals 1

    .line 826
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 829
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
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

    .line 803
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
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

    .line 809
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
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

    .line 767
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
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

    .line 774
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
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

    .line 814
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
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

    .line 821
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
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

    .line 791
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
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

    .line 798
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
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

    .line 754
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
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

    .line 761
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
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

    .line 779
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;
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

    .line 786
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;",
            ">;"
        }
    .end annotation

    .line 1031
    sget-object v0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 735
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 737
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 682
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 684
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->to_:Ljava/lang/String;

    return-void
.end method

.method private setToBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 707
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 708
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->to_:Ljava/lang/String;

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

    .line 966
    sget-object p2, Lwallet/core/jni/proto/Ethereum$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1009
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1003
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 988
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 990
    const-class p2, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    monitor-enter p2

    .line 991
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 993
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 996
    sput-object p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 998
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

    .line 985
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "to_"

    aput-object v0, p1, p3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\n"

    .line 981
    sget-object p3, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 971
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer$Builder;-><init>(Lwallet/core/jni/proto/Ethereum$1;)V

    return-object p1

    .line 968
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;-><init>()V

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

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 724
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 657
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->to_:Ljava/lang/String;

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 670
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$Transaction$ERC20Transfer;->to_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
