.class public final Lwallet/core/jni/proto/Decred$TransactionOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Decred.java"

# interfaces
.implements Lwallet/core/jni/proto/Decred$TransactionOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Decred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Decred$TransactionOutput;",
        "Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Decred$TransactionOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Decred$TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCRIPT_FIELD_NUMBER:I = 0x3

.field public static final VALUE_FIELD_NUMBER:I = 0x1

.field public static final VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private script_:Lcom/google/protobuf/ByteString;

.field private value_:J

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2428
    new-instance v0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Decred$TransactionOutput;-><init>()V

    .line 2431
    sput-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    .line 2432
    const-class v1, Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2033
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2034
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Decred$TransactionOutput;->script_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$3700()Lwallet/core/jni/proto/Decred$TransactionOutput;
    .locals 1

    .line 2028
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object v0
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/Decred$TransactionOutput;J)V
    .locals 0

    .line 2028
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Decred$TransactionOutput;->setValue(J)V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/Decred$TransactionOutput;)V
    .locals 0

    .line 2028
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$TransactionOutput;->clearValue()V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/Decred$TransactionOutput;I)V
    .locals 0

    .line 2028
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$TransactionOutput;->setVersion(I)V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/Decred$TransactionOutput;)V
    .locals 0

    .line 2028
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$TransactionOutput;->clearVersion()V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/Decred$TransactionOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2028
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$TransactionOutput;->setScript(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Decred$TransactionOutput;)V
    .locals 0

    .line 2028
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$TransactionOutput;->clearScript()V

    return-void
.end method

.method private clearScript()V
    .locals 1

    .line 2148
    invoke-static {}, Lwallet/core/jni/proto/Decred$TransactionOutput;->getDefaultInstance()Lwallet/core/jni/proto/Decred$TransactionOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$TransactionOutput;->getScript()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Decred$TransactionOutput;->script_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearValue()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2071
    iput-wide v0, p0, Lwallet/core/jni/proto/Decred$TransactionOutput;->value_:J

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 2109
    iput v0, p0, Lwallet/core/jni/proto/Decred$TransactionOutput;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Decred$TransactionOutput;
    .locals 1

    .line 2437
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;
    .locals 1

    .line 2226
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Decred$TransactionOutput;)Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2229
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Decred$TransactionOutput;
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

    .line 2203
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$TransactionOutput;
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

    .line 2209
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Decred$TransactionOutput;
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

    .line 2167
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$TransactionOutput;
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

    .line 2174
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Decred$TransactionOutput;
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

    .line 2214
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$TransactionOutput;
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

    .line 2221
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Decred$TransactionOutput;
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

    .line 2191
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$TransactionOutput;
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

    .line 2198
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Decred$TransactionOutput;
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

    .line 2154
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$TransactionOutput;
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

    .line 2161
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Decred$TransactionOutput;
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

    .line 2179
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$TransactionOutput;
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

    .line 2186
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Decred$TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 2443
    sget-object v0, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

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

    .line 2135
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2137
    iput-object p1, p0, Lwallet/core/jni/proto/Decred$TransactionOutput;->script_:Lcom/google/protobuf/ByteString;

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

    .line 2060
    iput-wide p1, p0, Lwallet/core/jni/proto/Decred$TransactionOutput;->value_:J

    return-void
.end method

.method private setVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2098
    iput p1, p0, Lwallet/core/jni/proto/Decred$TransactionOutput;->version_:I

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

    .line 2377
    sget-object p2, Lwallet/core/jni/proto/Decred$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2421
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2415
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2400
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Decred$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2402
    const-class p2, Lwallet/core/jni/proto/Decred$TransactionOutput;

    monitor-enter p2

    .line 2403
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Decred$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2405
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2408
    sput-object p1, Lwallet/core/jni/proto/Decred$TransactionOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 2410
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

    .line 2397
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "value_"

    aput-object v0, p1, p3

    const-string p3, "version_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "script_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0002\u0002\u000b\u0003\n"

    .line 2393
    sget-object p3, Lwallet/core/jni/proto/Decred$TransactionOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2382
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Decred$TransactionOutput$Builder;-><init>(Lwallet/core/jni/proto/Decred$1;)V

    return-object p1

    .line 2379
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Decred$TransactionOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Decred$TransactionOutput;-><init>()V

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

.method public getScript()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2124
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$TransactionOutput;->script_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 2048
    iget-wide v0, p0, Lwallet/core/jni/proto/Decred$TransactionOutput;->value_:J

    return-wide v0
.end method

.method public getVersion()I
    .locals 1

    .line 2086
    iget v0, p0, Lwallet/core/jni/proto/Decred$TransactionOutput;->version_:I

    return v0
.end method
