.class public final Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TimeUnlockOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeUnlockOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$TimeUnlockOrder;",
        "Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TimeUnlockOrderOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

.field public static final FROM_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final ID_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TimeUnlockOrder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fromAddress_:Lcom/google/protobuf/ByteString;

.field private id_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15976
    new-instance v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;-><init>()V

    .line 15979
    sput-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    .line 15980
    const-class v1, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15660
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15661
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->fromAddress_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$28400()Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
    .locals 1

    .line 15655
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object v0
.end method

.method static synthetic access$28500(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15655
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->setFromAddress(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$28600(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)V
    .locals 0

    .line 15655
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->clearFromAddress()V

    return-void
.end method

.method static synthetic access$28700(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;J)V
    .locals 0

    .line 15655
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->setId(J)V

    return-void
.end method

.method static synthetic access$28800(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)V
    .locals 0

    .line 15655
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->clearId()V

    return-void
.end method

.method private clearFromAddress()V
    .locals 1

    .line 15699
    invoke-static {}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->getFromAddress()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->fromAddress_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 15737
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->id_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
    .locals 1

    .line 15985
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;
    .locals 1

    .line 15815
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 15818
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
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

    .line 15792
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
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

    .line 15798
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
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

    .line 15756
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
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

    .line 15763
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
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

    .line 15803
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
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

    .line 15810
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
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

    .line 15780
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
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

    .line 15787
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
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

    .line 15743
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
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

    .line 15750
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
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

    .line 15768
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
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

    .line 15775
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TimeUnlockOrder;",
            ">;"
        }
    .end annotation

    .line 15991
    sget-object v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFromAddress(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15686
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15688
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->fromAddress_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15726
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->id_:J

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

    .line 15926
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 15969
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 15963
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15948
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 15950
    const-class p2, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    monitor-enter p2

    .line 15951
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 15953
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 15956
    sput-object p1, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->PARSER:Lcom/google/protobuf/Parser;

    .line 15958
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

    .line 15945
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "fromAddress_"

    aput-object v0, p1, p3

    const-string p3, "id_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\u0002"

    .line 15941
    sget-object p3, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15931
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 15928
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;-><init>()V

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

.method public getFromAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15675
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->fromAddress_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 15714
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->id_:J

    return-wide v0
.end method
