.class public final Lwallet/core/jni/proto/Stellar$Asset;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Stellar.java"

# interfaces
.implements Lwallet/core/jni/proto/Stellar$AssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Stellar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Asset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Stellar$Asset$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Stellar$Asset;",
        "Lwallet/core/jni/proto/Stellar$Asset$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Stellar$AssetOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALPHANUM4_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

.field public static final ISSUER_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$Asset;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alphanum4_:Ljava/lang/String;

.field private issuer_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 587
    new-instance v0, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-direct {v0}, Lwallet/core/jni/proto/Stellar$Asset;-><init>()V

    .line 590
    sput-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    .line 591
    const-class v1, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 155
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$Asset;->issuer_:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$Asset;->alphanum4_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Stellar$Asset;
    .locals 1

    .line 149
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Stellar$Asset;Ljava/lang/String;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$Asset;->setIssuer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Stellar$Asset;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$Asset;->clearIssuer()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Stellar$Asset;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$Asset;->setIssuerBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Stellar$Asset;Ljava/lang/String;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$Asset;->setAlphanum4(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Stellar$Asset;)V
    .locals 0

    .line 149
    invoke-direct {p0}, Lwallet/core/jni/proto/Stellar$Asset;->clearAlphanum4()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Stellar$Asset;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Stellar$Asset;->setAlphanum4Bytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAlphanum4()V
    .locals 1

    .line 275
    invoke-static {}, Lwallet/core/jni/proto/Stellar$Asset;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$Asset;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$Asset;->getAlphanum4()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$Asset;->alphanum4_:Ljava/lang/String;

    return-void
.end method

.method private clearIssuer()V
    .locals 1

    .line 208
    invoke-static {}, Lwallet/core/jni/proto/Stellar$Asset;->getDefaultInstance()Lwallet/core/jni/proto/Stellar$Asset;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Stellar$Asset;->getIssuer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Stellar$Asset;->issuer_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Stellar$Asset;
    .locals 1

    .line 596
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Stellar$Asset$Builder;
    .locals 1

    .line 367
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Stellar$Asset$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Stellar$Asset;)Lwallet/core/jni/proto/Stellar$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 370
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Asset$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$Asset;
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

    .line 344
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Asset;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$Asset;
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

    .line 350
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Stellar$Asset;
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

    .line 308
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$Asset;
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

    .line 315
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Stellar$Asset;
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

    .line 355
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$Asset;
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

    .line 362
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Stellar$Asset;
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

    .line 332
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$Asset;
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

    .line 339
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Stellar$Asset;
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

    .line 295
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$Asset;
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

    .line 302
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Asset;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Stellar$Asset;
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

    .line 320
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Asset;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Stellar$Asset;
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

    .line 327
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Stellar$Asset;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Stellar$Asset;",
            ">;"
        }
    .end annotation

    .line 602
    sget-object v0, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAlphanum4(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 262
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 264
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$Asset;->alphanum4_:Ljava/lang/String;

    return-void
.end method

.method private setAlphanum4Bytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 287
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 288
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$Asset;->alphanum4_:Ljava/lang/String;

    return-void
.end method

.method private setIssuer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$Asset;->issuer_:Ljava/lang/String;

    return-void
.end method

.method private setIssuerBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 220
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 221
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Stellar$Asset;->issuer_:Ljava/lang/String;

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

    .line 537
    sget-object p2, Lwallet/core/jni/proto/Stellar$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 580
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 574
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 559
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Stellar$Asset;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 561
    const-class p2, Lwallet/core/jni/proto/Stellar$Asset;

    monitor-enter p2

    .line 562
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Stellar$Asset;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 564
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 567
    sput-object p1, Lwallet/core/jni/proto/Stellar$Asset;->PARSER:Lcom/google/protobuf/Parser;

    .line 569
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

    .line 556
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "issuer_"

    aput-object v0, p1, p3

    const-string p3, "alphanum4_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 552
    sget-object p3, Lwallet/core/jni/proto/Stellar$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Stellar$Asset;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 542
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Stellar$Asset$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Stellar$Asset$Builder;-><init>(Lwallet/core/jni/proto/Stellar$1;)V

    return-object p1

    .line 539
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Stellar$Asset;

    invoke-direct {p1}, Lwallet/core/jni/proto/Stellar$Asset;-><init>()V

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

.method public getAlphanum4()Ljava/lang/String;
    .locals 1

    .line 237
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$Asset;->alphanum4_:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphanum4Bytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 250
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$Asset;->alphanum4_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$Asset;->issuer_:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 183
    iget-object v0, p0, Lwallet/core/jni/proto/Stellar$Asset;->issuer_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
