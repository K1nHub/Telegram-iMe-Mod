.class public final Lwallet/core/jni/proto/Tezos$Txs;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$TxsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Txs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tezos$Txs$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tezos$Txs;",
        "Lwallet/core/jni/proto/Tezos$Txs$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$TxsOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$Txs;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOKEN_ID_FIELD_NUMBER:I = 0x2

.field public static final TO_FIELD_NUMBER:I = 0x1


# instance fields
.field private amount_:Ljava/lang/String;

.field private to_:Ljava/lang/String;

.field private tokenId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3976
    new-instance v0, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tezos$Txs;-><init>()V

    .line 3979
    sput-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    .line 3980
    const-class v1, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3530
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 3531
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$Txs;->to_:Ljava/lang/String;

    .line 3532
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$Txs;->tokenId_:Ljava/lang/String;

    .line 3533
    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$Txs;->amount_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6400()Lwallet/core/jni/proto/Tezos$Txs;
    .locals 1

    .line 3525
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    return-object v0
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/Tezos$Txs;Ljava/lang/String;)V
    .locals 0

    .line 3525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Txs;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/Tezos$Txs;)V
    .locals 0

    .line 3525
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Txs;->clearTo()V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/Tezos$Txs;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Txs;->setToBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/Tezos$Txs;Ljava/lang/String;)V
    .locals 0

    .line 3525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Txs;->setTokenId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6900(Lwallet/core/jni/proto/Tezos$Txs;)V
    .locals 0

    .line 3525
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Txs;->clearTokenId()V

    return-void
.end method

.method static synthetic access$7000(Lwallet/core/jni/proto/Tezos$Txs;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Txs;->setTokenIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7100(Lwallet/core/jni/proto/Tezos$Txs;Ljava/lang/String;)V
    .locals 0

    .line 3525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Txs;->setAmount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/Tezos$Txs;)V
    .locals 0

    .line 3525
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$Txs;->clearAmount()V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/Tezos$Txs;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$Txs;->setAmountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 3663
    invoke-static {}, Lwallet/core/jni/proto/Tezos$Txs;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$Txs;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Txs;->getAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$Txs;->amount_:Ljava/lang/String;

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 3569
    invoke-static {}, Lwallet/core/jni/proto/Tezos$Txs;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$Txs;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Txs;->getTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$Txs;->to_:Ljava/lang/String;

    return-void
.end method

.method private clearTokenId()V
    .locals 1

    .line 3616
    invoke-static {}, Lwallet/core/jni/proto/Tezos$Txs;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$Txs;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$Txs;->getTokenId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$Txs;->tokenId_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tezos$Txs;
    .locals 1

    .line 3985
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tezos$Txs$Builder;
    .locals 1

    .line 3751
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tezos$Txs$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tezos$Txs;)Lwallet/core/jni/proto/Tezos$Txs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3754
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Txs$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$Txs;
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

    .line 3728
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Txs;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$Txs;
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

    .line 3734
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Txs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$Txs;
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

    .line 3692
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Txs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$Txs;
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

    .line 3699
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Txs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tezos$Txs;
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

    .line 3739
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Txs;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$Txs;
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

    .line 3746
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Txs;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$Txs;
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

    .line 3716
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Txs;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$Txs;
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

    .line 3723
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Txs;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tezos$Txs;
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

    .line 3679
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Txs;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$Txs;
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

    .line 3686
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Txs;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tezos$Txs;
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

    .line 3704
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Txs;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$Txs;
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

    .line 3711
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$Txs;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$Txs;",
            ">;"
        }
    .end annotation

    .line 3991
    sget-object v0, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3654
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3656
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Txs;->amount_:Ljava/lang/String;

    return-void
.end method

.method private setAmountBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3671
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3672
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Txs;->amount_:Ljava/lang/String;

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

    .line 3560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3562
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Txs;->to_:Ljava/lang/String;

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

    .line 3577
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3578
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Txs;->to_:Ljava/lang/String;

    return-void
.end method

.method private setTokenId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3607
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3609
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Txs;->tokenId_:Ljava/lang/String;

    return-void
.end method

.method private setTokenIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3624
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3625
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$Txs;->tokenId_:Ljava/lang/String;

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

    .line 3925
    sget-object p2, Lwallet/core/jni/proto/Tezos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3969
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3963
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3948
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tezos$Txs;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3950
    const-class p2, Lwallet/core/jni/proto/Tezos$Txs;

    monitor-enter p2

    .line 3951
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tezos$Txs;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3953
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3956
    sput-object p1, Lwallet/core/jni/proto/Tezos$Txs;->PARSER:Lcom/google/protobuf/Parser;

    .line 3958
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

    .line 3945
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "to_"

    aput-object v0, p1, p3

    const-string p3, "tokenId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    .line 3941
    sget-object p3, Lwallet/core/jni/proto/Tezos$Txs;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$Txs;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3930
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tezos$Txs$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tezos$Txs$Builder;-><init>(Lwallet/core/jni/proto/Tezos$1;)V

    return-object p1

    .line 3927
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tezos$Txs;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tezos$Txs;-><init>()V

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

.method public getAmount()Ljava/lang/String;
    .locals 1

    .line 3637
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Txs;->amount_:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3646
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Txs;->amount_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 3543
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Txs;->to_:Ljava/lang/String;

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3552
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Txs;->to_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .line 3590
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Txs;->tokenId_:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3599
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$Txs;->tokenId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
