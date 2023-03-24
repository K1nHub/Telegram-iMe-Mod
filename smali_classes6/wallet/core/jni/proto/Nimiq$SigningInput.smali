.class public final Lwallet/core/jni/proto/Nimiq$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nimiq.java"

# interfaces
.implements Lwallet/core/jni/proto/Nimiq$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nimiq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nimiq$SigningInput;",
        "Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nimiq$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

.field public static final DESTINATION_FIELD_NUMBER:I = 0x2

.field public static final FEE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nimiq$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x1

.field public static final VALIDITY_START_HEIGHT_FIELD_NUMBER:I = 0x5

.field public static final VALUE_FIELD_NUMBER:I = 0x3


# instance fields
.field private destination_:Ljava/lang/String;

.field private fee_:J

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private validityStartHeight_:I

.field private value_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 699
    new-instance v0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nimiq$SigningInput;-><init>()V

    .line 702
    sput-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    .line 703
    const-class v1, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 88
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->destination_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Nimiq$SigningInput;
    .locals 1

    .line 82
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Nimiq$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nimiq$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Nimiq$SigningInput;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nimiq$SigningInput;->setValidityStartHeight(I)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Nimiq$SigningInput;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->clearValidityStartHeight()V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Nimiq$SigningInput;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Nimiq$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nimiq$SigningInput;->setDestination(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Nimiq$SigningInput;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->clearDestination()V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Nimiq$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nimiq$SigningInput;->setDestinationBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Nimiq$SigningInput;J)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nimiq$SigningInput;->setValue(J)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Nimiq$SigningInput;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->clearValue()V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Nimiq$SigningInput;J)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nimiq$SigningInput;->setFee(J)V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Nimiq$SigningInput;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->clearFee()V

    return-void
.end method

.method private clearDestination()V
    .locals 1

    .line 180
    invoke-static {}, Lwallet/core/jni/proto/Nimiq$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nimiq$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->getDestination()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->destination_:Ljava/lang/String;

    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 270
    iput-wide v0, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->fee_:J

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 127
    invoke-static {}, Lwallet/core/jni/proto/Nimiq$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Nimiq$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nimiq$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearValidityStartHeight()V
    .locals 1

    const/4 v0, 0x0

    .line 308
    iput v0, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->validityStartHeight_:I

    return-void
.end method

.method private clearValue()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 232
    iput-wide v0, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->value_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nimiq$SigningInput;
    .locals 1

    .line 708
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
    .locals 1

    .line 386
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nimiq$SigningInput;)Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 389
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nimiq$SigningInput;
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

    .line 363
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nimiq$SigningInput;
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

    .line 369
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nimiq$SigningInput;
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

    .line 327
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nimiq$SigningInput;
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

    .line 334
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nimiq$SigningInput;
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

    .line 374
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nimiq$SigningInput;
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

    .line 381
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nimiq$SigningInput;
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

    .line 351
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nimiq$SigningInput;
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

    .line 358
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nimiq$SigningInput;
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

    .line 314
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nimiq$SigningInput;
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

    .line 321
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nimiq$SigningInput;
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

    .line 339
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nimiq$SigningInput;
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

    .line 346
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nimiq$SigningInput;",
            ">;"
        }
    .end annotation

    .line 714
    sget-object v0, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDestination(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 169
    iput-object p1, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->destination_:Ljava/lang/String;

    return-void
.end method

.method private setDestinationBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 192
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 193
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->destination_:Ljava/lang/String;

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

    .line 259
    iput-wide p1, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->fee_:J

    return-void
.end method

.method private setPrivateKey(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    iput-object p1, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setValidityStartHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 297
    iput p1, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->validityStartHeight_:I

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

    .line 221
    iput-wide p1, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->value_:J

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

    .line 646
    sget-object p2, Lwallet/core/jni/proto/Nimiq$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 692
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 686
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 671
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nimiq$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 673
    const-class p2, Lwallet/core/jni/proto/Nimiq$SigningInput;

    monitor-enter p2

    .line 674
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nimiq$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 676
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 679
    sput-object p1, Lwallet/core/jni/proto/Nimiq$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 681
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

    .line 668
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "privateKey_"

    aput-object v0, p1, p3

    const-string p3, "destination_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "value_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "validityStartHeight_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\n\u0002\u0208\u0003\u0003\u0004\u0003\u0005\u000b"

    .line 664
    sget-object p3, Lwallet/core/jni/proto/Nimiq$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 651
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nimiq$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Nimiq$1;)V

    return-object p1

    .line 648
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nimiq$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nimiq$SigningInput;-><init>()V

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

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->destination_:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 155
    iget-object v0, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->destination_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFee()J
    .locals 2

    .line 247
    iget-wide v0, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->fee_:J

    return-wide v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 103
    iget-object v0, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getValidityStartHeight()I
    .locals 1

    .line 285
    iget v0, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->validityStartHeight_:I

    return v0
.end method

.method public getValue()J
    .locals 2

    .line 209
    iget-wide v0, p0, Lwallet/core/jni/proto/Nimiq$SigningInput;->value_:J

    return-wide v0
.end method
