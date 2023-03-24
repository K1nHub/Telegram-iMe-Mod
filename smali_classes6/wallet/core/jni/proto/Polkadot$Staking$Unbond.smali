.class public final Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$Staking$UnbondOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unbond"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Polkadot$Staking$Unbond;",
        "Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$Staking$UnbondOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Staking$Unbond;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x1


# instance fields
.field private value_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3406
    new-instance v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-direct {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;-><init>()V

    .line 3409
    sput-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    .line 3410
    const-class v1, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3170
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3171
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$4800()Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
    .locals 1

    .line 3165
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object v0
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/Polkadot$Staking$Unbond;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3165
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->setValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)V
    .locals 0

    .line 3165
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->clearValue()V

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 3209
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
    .locals 1

    .line 3415
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;
    .locals 1

    .line 3287
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Polkadot$Staking$Unbond;)Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3290
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
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

    .line 3264
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
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

    .line 3270
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
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

    .line 3228
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
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

    .line 3235
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
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

    .line 3275
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
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

    .line 3282
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
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

    .line 3252
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
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

    .line 3259
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
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

    .line 3215
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
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

    .line 3222
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
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

    .line 3240
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Unbond;
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

    .line 3247
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Staking$Unbond;",
            ">;"
        }
    .end annotation

    .line 3421
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setValue(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3198
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->value_:Lcom/google/protobuf/ByteString;

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

    .line 3358
    sget-object p2, Lwallet/core/jni/proto/Polkadot$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3399
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3393
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3378
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3380
    const-class p2, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    monitor-enter p2

    .line 3381
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3383
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3386
    sput-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->PARSER:Lcom/google/protobuf/Parser;

    .line 3388
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

    .line 3375
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "value_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n"

    .line 3371
    sget-object p3, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3363
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond$Builder;-><init>(Lwallet/core/jni/proto/Polkadot$1;)V

    return-object p1

    .line 3360
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;

    invoke-direct {p1}, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;-><init>()V

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

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3185
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Unbond;->value_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
