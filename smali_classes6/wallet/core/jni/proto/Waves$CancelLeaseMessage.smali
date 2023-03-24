.class public final Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Waves.java"

# interfaces
.implements Lwallet/core/jni/proto/Waves$CancelLeaseMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Waves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CancelLeaseMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Waves$CancelLeaseMessage;",
        "Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Waves$CancelLeaseMessageOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

.field public static final FEE_FIELD_NUMBER:I = 0x2

.field public static final LEASE_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Waves$CancelLeaseMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fee_:J

.field private leaseId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1891
    new-instance v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-direct {v0}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;-><init>()V

    .line 1894
    sput-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    .line 1895
    const-class v1, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1518
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1519
    iput-object v0, p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->leaseId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2600()Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
    .locals 1

    .line 1513
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object v0
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;Ljava/lang/String;)V
    .locals 0

    .line 1513
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->setLeaseId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)V
    .locals 0

    .line 1513
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->clearLeaseId()V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1513
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->setLeaseIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;J)V
    .locals 0

    .line 1513
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->setFee(J)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)V
    .locals 0

    .line 1513
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->clearFee()V

    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1623
    iput-wide v0, p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->fee_:J

    return-void
.end method

.method private clearLeaseId()V
    .locals 1

    .line 1571
    invoke-static {}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->getDefaultInstance()Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->getLeaseId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->leaseId_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
    .locals 1

    .line 1900
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;
    .locals 1

    .line 1701
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1704
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
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

    .line 1678
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
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

    .line 1684
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
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

    .line 1642
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
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

    .line 1649
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
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

    .line 1689
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
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

    .line 1696
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
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

    .line 1666
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
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

    .line 1673
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
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

    .line 1629
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
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

    .line 1636
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
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

    .line 1654
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
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

    .line 1661
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Waves$CancelLeaseMessage;",
            ">;"
        }
    .end annotation

    .line 1906
    sget-object v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1612
    iput-wide p1, p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->fee_:J

    return-void
.end method

.method private setLeaseId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1558
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1560
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->leaseId_:Ljava/lang/String;

    return-void
.end method

.method private setLeaseIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1583
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1584
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->leaseId_:Ljava/lang/String;

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

    .line 1841
    sget-object p2, Lwallet/core/jni/proto/Waves$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1884
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1878
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1863
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1865
    const-class p2, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    monitor-enter p2

    .line 1866
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1868
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1871
    sput-object p1, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 1873
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

    .line 1860
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "leaseId_"

    aput-object v0, p1, p3

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0002"

    .line 1856
    sget-object p3, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1846
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;-><init>(Lwallet/core/jni/proto/Waves$1;)V

    return-object p1

    .line 1843
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-direct {p1}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;-><init>()V

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

.method public getFee()J
    .locals 2

    .line 1600
    iget-wide v0, p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->fee_:J

    return-wide v0
.end method

.method public getLeaseId()Ljava/lang/String;
    .locals 1

    .line 1533
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->leaseId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLeaseIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1546
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->leaseId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
