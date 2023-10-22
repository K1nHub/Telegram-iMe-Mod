.class public final Lwallet/core/jni/proto/Binance$SendOrder$Token;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance$SendOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
        "Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

.field public static final DENOM_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount_:J

.field private denom_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3679
    new-instance v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Token;-><init>()V

    .line 3682
    sput-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 3683
    const-class v1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3306
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 3307
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->denom_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5700()Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1

    .line 3301
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object v0
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/Binance$SendOrder$Token;Ljava/lang/String;)V
    .locals 0

    .line 3301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->setDenom(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 3301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->clearDenom()V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/Binance$SendOrder$Token;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->setDenomBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/Binance$SendOrder$Token;J)V
    .locals 0

    .line 3301
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->setAmount(J)V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 3301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->clearAmount()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3411
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->amount_:J

    return-void
.end method

.method private clearDenom()V
    .locals 1

    .line 3359
    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->getDenom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->denom_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1

    .line 3688
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;
    .locals 1

    .line 3489
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3492
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SendOrder$Token;
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

    .line 3466
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Token;
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

    .line 3472
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SendOrder$Token;
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

    .line 3430
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Token;
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

    .line 3437
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$SendOrder$Token;
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

    .line 3477
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Token;
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

    .line 3484
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SendOrder$Token;
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

    .line 3454
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Token;
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

    .line 3461
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$SendOrder$Token;
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

    .line 3417
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Token;
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

    .line 3424
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$SendOrder$Token;
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

    .line 3442
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SendOrder$Token;
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

    .line 3449
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;"
        }
    .end annotation

    .line 3694
    sget-object v0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

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

    .line 3400
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->amount_:J

    return-void
.end method

.method private setDenom(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3346
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3348
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->denom_:Ljava/lang/String;

    return-void
.end method

.method private setDenomBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3371
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3372
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->denom_:Ljava/lang/String;

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

    .line 3629
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3672
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3666
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3651
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3653
    const-class p2, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    monitor-enter p2

    .line 3654
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3656
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3659
    sput-object p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;->PARSER:Lcom/google/protobuf/Parser;

    .line 3661
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

    .line 3648
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "denom_"

    aput-object v0, p1, p3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0002"

    .line 3644
    sget-object p3, Lwallet/core/jni/proto/Binance$SendOrder$Token;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3634
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 3631
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$SendOrder$Token;-><init>()V

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

.method public getAmount()J
    .locals 2

    .line 3388
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->amount_:J

    return-wide v0
.end method

.method public getDenom()Ljava/lang/String;
    .locals 1

    .line 3321
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->denom_:Ljava/lang/String;

    return-object v0
.end method

.method public getDenomBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3334
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SendOrder$Token;->denom_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
