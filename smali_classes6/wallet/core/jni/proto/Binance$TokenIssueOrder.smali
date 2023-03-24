.class public final Lwallet/core/jni/proto/Binance$TokenIssueOrder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TokenIssueOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenIssueOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$TokenIssueOrder;",
        "Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TokenIssueOrderOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

.field public static final FROM_FIELD_NUMBER:I = 0x1

.field public static final MINTABLE_FIELD_NUMBER:I = 0x5

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TokenIssueOrder;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYMBOL_FIELD_NUMBER:I = 0x3

.field public static final TOTAL_SUPPLY_FIELD_NUMBER:I = 0x4


# instance fields
.field private from_:Lcom/google/protobuf/ByteString;

.field private mintable_:Z

.field private name_:Ljava/lang/String;

.field private symbol_:Ljava/lang/String;

.field private totalSupply_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6406
    new-instance v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;-><init>()V

    .line 6409
    sput-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    .line 6410
    const-class v1, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5735
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5736
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->from_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 5737
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->name_:Ljava/lang/String;

    .line 5738
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->symbol_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10000(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V
    .locals 0

    .line 5730
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->clearFrom()V

    return-void
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/Binance$TokenIssueOrder;Ljava/lang/String;)V
    .locals 0

    .line 5730
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V
    .locals 0

    .line 5730
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->clearName()V

    return-void
.end method

.method static synthetic access$10300(Lwallet/core/jni/proto/Binance$TokenIssueOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5730
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10400(Lwallet/core/jni/proto/Binance$TokenIssueOrder;Ljava/lang/String;)V
    .locals 0

    .line 5730
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->setSymbol(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10500(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V
    .locals 0

    .line 5730
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->clearSymbol()V

    return-void
.end method

.method static synthetic access$10600(Lwallet/core/jni/proto/Binance$TokenIssueOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5730
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->setSymbolBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10700(Lwallet/core/jni/proto/Binance$TokenIssueOrder;J)V
    .locals 0

    .line 5730
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->setTotalSupply(J)V

    return-void
.end method

.method static synthetic access$10800(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V
    .locals 0

    .line 5730
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->clearTotalSupply()V

    return-void
.end method

.method static synthetic access$10900(Lwallet/core/jni/proto/Binance$TokenIssueOrder;Z)V
    .locals 0

    .line 5730
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->setMintable(Z)V

    return-void
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V
    .locals 0

    .line 5730
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->clearMintable()V

    return-void
.end method

.method static synthetic access$9800()Lwallet/core/jni/proto/Binance$TokenIssueOrder;
    .locals 1

    .line 5730
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object v0
.end method

.method static synthetic access$9900(Lwallet/core/jni/proto/Binance$TokenIssueOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5730
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->setFrom(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 5776
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->from_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearMintable()V
    .locals 1

    const/4 v0, 0x0

    .line 5986
    iput-boolean v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->mintable_:Z

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 5829
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearSymbol()V
    .locals 1

    .line 5896
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->symbol_:Ljava/lang/String;

    return-void
.end method

.method private clearTotalSupply()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5948
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->totalSupply_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenIssueOrder;
    .locals 1

    .line 6415
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    .locals 1

    .line 6064
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6067
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TokenIssueOrder;
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

    .line 6041
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenIssueOrder;
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

    .line 6047
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TokenIssueOrder;
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

    .line 6005
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenIssueOrder;
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

    .line 6012
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$TokenIssueOrder;
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

    .line 6052
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenIssueOrder;
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

    .line 6059
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TokenIssueOrder;
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

    .line 6029
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenIssueOrder;
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

    .line 6036
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$TokenIssueOrder;
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

    .line 5992
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenIssueOrder;
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

    .line 5999
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$TokenIssueOrder;
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

    .line 6017
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenIssueOrder;
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

    .line 6024
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TokenIssueOrder;",
            ">;"
        }
    .end annotation

    .line 6421
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFrom(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5763
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5765
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->from_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setMintable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5975
    iput-boolean p1, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->mintable_:Z

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5816
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5818
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5841
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5842
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->name_:Ljava/lang/String;

    return-void
.end method

.method private setSymbol(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5883
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5885
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->symbol_:Ljava/lang/String;

    return-void
.end method

.method private setSymbolBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5908
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5909
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->symbol_:Ljava/lang/String;

    return-void
.end method

.method private setTotalSupply(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5937
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->totalSupply_:J

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

    .line 6353
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6399
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 6393
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6378
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6380
    const-class p2, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    monitor-enter p2

    .line 6381
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6383
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6386
    sput-object p1, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->PARSER:Lcom/google/protobuf/Parser;

    .line 6388
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

    .line 6375
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "from_"

    aput-object v0, p1, p3

    const-string p3, "name_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "symbol_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "totalSupply_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "mintable_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\n\u0002\u0208\u0003\u0208\u0004\u0002\u0005\u0007"

    .line 6371
    sget-object p3, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6358
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 6355
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;-><init>()V

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

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5752
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->from_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMintable()Z
    .locals 1

    .line 5963
    iget-boolean v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->mintable_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 5791
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5804
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 5858
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->symbol_:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5871
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->symbol_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTotalSupply()J
    .locals 2

    .line 5925
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->totalSupply_:J

    return-wide v0
.end method
