.class public final Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$CreateAccountMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateAccountMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Aptos$CreateAccountMessage;",
        "Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$CreateAccountMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUTH_KEY_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$CreateAccountMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authKey_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2385
    new-instance v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-direct {v0}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;-><init>()V

    .line 2388
    sput-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    .line 2389
    const-class v1, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2092
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2093
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->authKey_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3300()Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
    .locals 1

    .line 2087
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object v0
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Aptos$CreateAccountMessage;Ljava/lang/String;)V
    .locals 0

    .line 2087
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->setAuthKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)V
    .locals 0

    .line 2087
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->clearAuthKey()V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Aptos$CreateAccountMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2087
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->setAuthKeyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAuthKey()V
    .locals 1

    .line 2145
    invoke-static {}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->getAuthKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->authKey_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
    .locals 1

    .line 2394
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;
    .locals 1

    .line 2237
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Aptos$CreateAccountMessage;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2240
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
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
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
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

    .line 2220
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
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

    .line 2178
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
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

    .line 2185
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
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

    .line 2225
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
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

    .line 2232
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
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

    .line 2202
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
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
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
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

    .line 2165
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
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

    .line 2172
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
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

    .line 2190
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$CreateAccountMessage;
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

    .line 2197
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$CreateAccountMessage;",
            ">;"
        }
    .end annotation

    .line 2400
    sget-object v0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAuthKey(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2134
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->authKey_:Ljava/lang/String;

    return-void
.end method

.method private setAuthKeyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2157
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2158
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->authKey_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    .line 2337
    sget-object p2, Lwallet/core/jni/proto/Aptos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2378
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2372
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2357
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2359
    const-class p2, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    monitor-enter p2

    .line 2360
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2362
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2365
    sput-object p1, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 2367
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

    .line 2354
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "authKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    .line 2350
    sget-object p3, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2342
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage$Builder;-><init>(Lwallet/core/jni/proto/Aptos$1;)V

    return-object p1

    .line 2339
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;

    invoke-direct {p1}, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;-><init>()V

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

.method public getAuthKey()Ljava/lang/String;
    .locals 1

    .line 2107
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->authKey_:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2120
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$CreateAccountMessage;->authKey_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
