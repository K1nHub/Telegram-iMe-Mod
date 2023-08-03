.class public final Lwallet/core/jni/proto/Waves$LeaseMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Waves.java"

# interfaces
.implements Lwallet/core/jni/proto/Waves$LeaseMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Waves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeaseMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Waves$LeaseMessage;",
        "Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Waves$LeaseMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

.field public static final FEE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Waves$LeaseMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_FIELD_NUMBER:I = 0x2


# instance fields
.field private amount_:J

.field private fee_:J

.field private to_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1453
    new-instance v0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-direct {v0}, Lwallet/core/jni/proto/Waves$LeaseMessage;-><init>()V

    .line 1456
    sput-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    .line 1457
    const-class v1, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1001
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1002
    iput-object v0, p0, Lwallet/core/jni/proto/Waves$LeaseMessage;->to_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1700()Lwallet/core/jni/proto/Waves$LeaseMessage;
    .locals 1

    .line 996
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object v0
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Waves$LeaseMessage;J)V
    .locals 0

    .line 996
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Waves$LeaseMessage;->setAmount(J)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Waves$LeaseMessage;)V
    .locals 0

    .line 996
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$LeaseMessage;->clearAmount()V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Waves$LeaseMessage;Ljava/lang/String;)V
    .locals 0

    .line 996
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$LeaseMessage;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Waves$LeaseMessage;)V
    .locals 0

    .line 996
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$LeaseMessage;->clearTo()V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Waves$LeaseMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 996
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$LeaseMessage;->setToBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Waves$LeaseMessage;J)V
    .locals 0

    .line 996
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Waves$LeaseMessage;->setFee(J)V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Waves$LeaseMessage;)V
    .locals 0

    .line 996
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$LeaseMessage;->clearFee()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1039
    iput-wide v0, p0, Lwallet/core/jni/proto/Waves$LeaseMessage;->amount_:J

    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1144
    iput-wide v0, p0, Lwallet/core/jni/proto/Waves$LeaseMessage;->fee_:J

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 1092
    invoke-static {}, Lwallet/core/jni/proto/Waves$LeaseMessage;->getDefaultInstance()Lwallet/core/jni/proto/Waves$LeaseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$LeaseMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Waves$LeaseMessage;->to_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Waves$LeaseMessage;
    .locals 1

    .line 1462
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;
    .locals 1

    .line 1222
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Waves$LeaseMessage;)Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1225
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Waves$LeaseMessage;
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

    .line 1199
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$LeaseMessage;
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

    .line 1205
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Waves$LeaseMessage;
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

    .line 1163
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$LeaseMessage;
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

    .line 1170
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Waves$LeaseMessage;
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

    .line 1210
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$LeaseMessage;
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

    .line 1217
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Waves$LeaseMessage;
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

    .line 1187
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$LeaseMessage;
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

    .line 1194
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Waves$LeaseMessage;
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

    .line 1150
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$LeaseMessage;
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

    .line 1157
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Waves$LeaseMessage;
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

    .line 1175
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$LeaseMessage;
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

    .line 1182
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Waves$LeaseMessage;",
            ">;"
        }
    .end annotation

    .line 1468
    sget-object v0, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 1028
    iput-wide p1, p0, Lwallet/core/jni/proto/Waves$LeaseMessage;->amount_:J

    return-void
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

    .line 1133
    iput-wide p1, p0, Lwallet/core/jni/proto/Waves$LeaseMessage;->fee_:J

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

    .line 1079
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1081
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$LeaseMessage;->to_:Ljava/lang/String;

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

    .line 1104
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1105
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Waves$LeaseMessage;->to_:Ljava/lang/String;

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

    .line 1402
    sget-object p2, Lwallet/core/jni/proto/Waves$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1446
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1440
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1425
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Waves$LeaseMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1427
    const-class p2, Lwallet/core/jni/proto/Waves$LeaseMessage;

    monitor-enter p2

    .line 1428
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Waves$LeaseMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1430
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1433
    sput-object p1, Lwallet/core/jni/proto/Waves$LeaseMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 1435
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

    .line 1422
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "amount_"

    aput-object v0, p1, p3

    const-string p3, "to_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0002\u0002\u0208\u0003\u0002"

    .line 1418
    sget-object p3, Lwallet/core/jni/proto/Waves$LeaseMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1407
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;-><init>(Lwallet/core/jni/proto/Waves$1;)V

    return-object p1

    .line 1404
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-direct {p1}, Lwallet/core/jni/proto/Waves$LeaseMessage;-><init>()V

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

.method public getAmount()J
    .locals 2

    .line 1016
    iget-wide v0, p0, Lwallet/core/jni/proto/Waves$LeaseMessage;->amount_:J

    return-wide v0
.end method

.method public getFee()J
    .locals 2

    .line 1121
    iget-wide v0, p0, Lwallet/core/jni/proto/Waves$LeaseMessage;->fee_:J

    return-wide v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 1054
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$LeaseMessage;->to_:Ljava/lang/String;

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1067
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$LeaseMessage;->to_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
