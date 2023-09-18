.class public final Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$TransactionOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Bitcoin$TransactionOutput;",
        "Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$TransactionOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCRIPT_FIELD_NUMBER:I = 0x2

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private script_:Lcom/google/protobuf/ByteString;

.field private value_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2354
    new-instance v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;-><init>()V

    .line 2357
    sput-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    .line 2358
    const-class v1, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2038
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2039
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->script_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$3500()Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
    .locals 1

    .line 2033
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object v0
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Bitcoin$TransactionOutput;J)V
    .locals 0

    .line 2033
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->setValue(J)V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Bitcoin$TransactionOutput;)V
    .locals 0

    .line 2033
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->clearValue()V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/Bitcoin$TransactionOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2033
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->setScript(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/Bitcoin$TransactionOutput;)V
    .locals 0

    .line 2033
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->clearScript()V

    return-void
.end method

.method private clearScript()V
    .locals 1

    .line 2115
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->script_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearValue()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2076
    iput-wide v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->value_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
    .locals 1

    .line 2363
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;
    .locals 1

    .line 2193
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Bitcoin$TransactionOutput;)Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2196
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
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

    .line 2170
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
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

    .line 2176
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
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

    .line 2134
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
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

    .line 2141
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
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

    .line 2181
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
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

    .line 2188
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
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

    .line 2158
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
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

    .line 2165
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
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

    .line 2121
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
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

    .line 2128
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
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

    .line 2146
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
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

    .line 2153
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 2369
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setScript(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2104
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->script_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setValue(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2065
    iput-wide p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->value_:J

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

    .line 2304
    sget-object p2, Lwallet/core/jni/proto/Bitcoin$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2347
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2341
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2326
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2328
    const-class p2, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    monitor-enter p2

    .line 2329
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2331
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2334
    sput-object p1, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 2336
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

    .line 2323
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "value_"

    aput-object v0, p1, p3

    const-string p3, "script_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\n"

    .line 2319
    sget-object p3, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2309
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput$Builder;-><init>(Lwallet/core/jni/proto/Bitcoin$1;)V

    return-object p1

    .line 2306
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;-><init>()V

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

.method public getScript()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2091
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->script_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 2053
    iget-wide v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;->value_:J

    return-wide v0
.end method
