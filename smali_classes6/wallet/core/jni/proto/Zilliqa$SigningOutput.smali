.class public final Lwallet/core/jni/proto/Zilliqa$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Zilliqa.java"

# interfaces
.implements Lwallet/core/jni/proto/Zilliqa$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Zilliqa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Zilliqa$SigningOutput;",
        "Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Zilliqa$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

.field public static final JSON_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Zilliqa$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x1


# instance fields
.field private json_:Ljava/lang/String;

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2602
    new-instance v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;-><init>()V

    .line 2605
    sput-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    .line 2606
    const-class v1, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2227
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2228
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 2229
    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3900()Lwallet/core/jni/proto/Zilliqa$SigningOutput;
    .locals 1

    .line 2222
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object v0
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/Zilliqa$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2222
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->setSignature(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/Zilliqa$SigningOutput;)V
    .locals 0

    .line 2222
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->clearSignature()V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/Zilliqa$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 2222
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->setJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Zilliqa$SigningOutput;)V
    .locals 0

    .line 2222
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->clearJson()V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/Zilliqa$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2222
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->setJsonBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearJson()V
    .locals 1

    .line 2320
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method private clearSignature()V
    .locals 1

    .line 2267
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$SigningOutput;
    .locals 1

    .line 2611
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;
    .locals 1

    .line 2412
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Zilliqa$SigningOutput;)Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2415
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Zilliqa$SigningOutput;
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

    .line 2389
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$SigningOutput;
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

    .line 2395
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Zilliqa$SigningOutput;
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

    .line 2353
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$SigningOutput;
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

    .line 2360
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Zilliqa$SigningOutput;
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

    .line 2400
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$SigningOutput;
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

    .line 2407
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Zilliqa$SigningOutput;
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

    .line 2377
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$SigningOutput;
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

    .line 2384
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Zilliqa$SigningOutput;
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

    .line 2340
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$SigningOutput;
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

    .line 2347
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Zilliqa$SigningOutput;
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

    .line 2365
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$SigningOutput;
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

    .line 2372
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Zilliqa$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 2617
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setJson(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2309
    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method private setJsonBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2332
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2333
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method private setSignature(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2254
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2256
    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

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

    .line 2552
    sget-object p2, Lwallet/core/jni/proto/Zilliqa$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2595
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2589
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2574
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2576
    const-class p2, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    monitor-enter p2

    .line 2577
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2579
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2582
    sput-object p1, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 2584
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

    .line 2571
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "signature_"

    aput-object v0, p1, p3

    const-string p3, "json_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\u0208"

    .line 2567
    sget-object p3, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2557
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Zilliqa$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Zilliqa$1;)V

    return-object p1

    .line 2554
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Zilliqa$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Zilliqa$SigningOutput;-><init>()V

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

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 2282
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->json_:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2295
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->json_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2243
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
