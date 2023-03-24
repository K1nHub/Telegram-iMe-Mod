.class public final Lwallet/core/jni/proto/Waves$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Waves.java"

# interfaces
.implements Lwallet/core/jni/proto/Waves$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Waves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Waves$SigningInput$Builder;,
        Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Waves$SigningInput;",
        "Lwallet/core/jni/proto/Waves$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Waves$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final CANCEL_LEASE_MESSAGE_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

.field public static final LEASE_MESSAGE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Waves$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x2

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field public static final TRANSFER_MESSAGE_FIELD_NUMBER:I = 0x3


# instance fields
.field private messageOneofCase_:I

.field private messageOneof_:Ljava/lang/Object;

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2653
    new-instance v0, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Waves$SigningInput;-><init>()V

    .line 2656
    sput-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    .line 2657
    const-class v1, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1981
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1984
    iput v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    .line 1982
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$3300()Lwallet/core/jni/proto/Waves$SigningInput;
    .locals 1

    .line 1976
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    return-object v0
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Waves$SigningInput;)V
    .locals 0

    .line 1976
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$SigningInput;->clearMessageOneof()V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Waves$SigningInput;J)V
    .locals 0

    .line 1976
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Waves$SigningInput;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Waves$SigningInput;)V
    .locals 0

    .line 1976
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$SigningInput;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Waves$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1976
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/Waves$SigningInput;)V
    .locals 0

    .line 1976
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$TransferMessage;)V
    .locals 0

    .line 1976
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->setTransferMessage(Lwallet/core/jni/proto/Waves$TransferMessage;)V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$TransferMessage;)V
    .locals 0

    .line 1976
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->mergeTransferMessage(Lwallet/core/jni/proto/Waves$TransferMessage;)V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/Waves$SigningInput;)V
    .locals 0

    .line 1976
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$SigningInput;->clearTransferMessage()V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$LeaseMessage;)V
    .locals 0

    .line 1976
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->setLeaseMessage(Lwallet/core/jni/proto/Waves$LeaseMessage;)V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$LeaseMessage;)V
    .locals 0

    .line 1976
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->mergeLeaseMessage(Lwallet/core/jni/proto/Waves$LeaseMessage;)V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/Waves$SigningInput;)V
    .locals 0

    .line 1976
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$SigningInput;->clearLeaseMessage()V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)V
    .locals 0

    .line 1976
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->setCancelLeaseMessage(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/Waves$SigningInput;Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)V
    .locals 0

    .line 1976
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Waves$SigningInput;->mergeCancelLeaseMessage(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/Waves$SigningInput;)V
    .locals 0

    .line 1976
    invoke-direct {p0}, Lwallet/core/jni/proto/Waves$SigningInput;->clearCancelLeaseMessage()V

    return-void
.end method

.method private clearCancelLeaseMessage()V
    .locals 2

    .line 2250
    iget v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2251
    iput v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 2252
    iput-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearLeaseMessage()V
    .locals 2

    .line 2200
    iget v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2201
    iput v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 2202
    iput-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMessageOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 2025
    iput v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 2026
    iput-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 2103
    invoke-static {}, Lwallet/core/jni/proto/Waves$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Waves$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Waves$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2064
    iput-wide v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->timestamp_:J

    return-void
.end method

.method private clearTransferMessage()V
    .locals 2

    .line 2150
    iget v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2151
    iput v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 2152
    iput-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Waves$SigningInput;
    .locals 1

    .line 2662
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    return-object v0
.end method

.method private mergeCancelLeaseMessage(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2237
    iget v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 2238
    invoke-static {}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->getDefaultInstance()Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2239
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->newBuilder(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;

    move-result-object v0

    .line 2240
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Waves$CancelLeaseMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 2242
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 2244
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private mergeLeaseMessage(Lwallet/core/jni/proto/Waves$LeaseMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2186
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2187
    iget v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 2188
    invoke-static {}, Lwallet/core/jni/proto/Waves$LeaseMessage;->getDefaultInstance()Lwallet/core/jni/proto/Waves$LeaseMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2189
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$LeaseMessage;->newBuilder(Lwallet/core/jni/proto/Waves$LeaseMessage;)Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;

    move-result-object v0

    .line 2190
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Waves$LeaseMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 2192
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 2194
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private mergeTransferMessage(Lwallet/core/jni/proto/Waves$TransferMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2136
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2137
    iget v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 2138
    invoke-static {}, Lwallet/core/jni/proto/Waves$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Waves$TransferMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2139
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$TransferMessage;->newBuilder(Lwallet/core/jni/proto/Waves$TransferMessage;)Lwallet/core/jni/proto/Waves$TransferMessage$Builder;

    move-result-object v0

    .line 2140
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Waves$TransferMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 2142
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 2144
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1

    .line 2331
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Waves$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Waves$SigningInput;)Lwallet/core/jni/proto/Waves$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2334
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Waves$SigningInput;
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

    .line 2308
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$SigningInput;
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

    .line 2314
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Waves$SigningInput;
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

    .line 2272
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$SigningInput;
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

    .line 2279
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Waves$SigningInput;
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

    .line 2319
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$SigningInput;
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

    .line 2326
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Waves$SigningInput;
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

    .line 2296
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$SigningInput;
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

    .line 2303
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Waves$SigningInput;
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

    .line 2259
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$SigningInput;
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

    .line 2266
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Waves$SigningInput;
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

    .line 2284
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Waves$SigningInput;
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

    .line 2291
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Waves$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Waves$SigningInput;",
            ">;"
        }
    .end annotation

    .line 2668
    sget-object v0, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCancelLeaseMessage(Lwallet/core/jni/proto/Waves$CancelLeaseMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2228
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2229
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 2230
    iput p1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private setLeaseMessage(Lwallet/core/jni/proto/Waves$LeaseMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2178
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2179
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 2180
    iput p1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

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

    .line 2090
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2092
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2053
    iput-wide p1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->timestamp_:J

    return-void
.end method

.method private setTransferMessage(Lwallet/core/jni/proto/Waves$TransferMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2129
    iput-object p1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 2130
    iput p1, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

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

    .line 2598
    sget-object p2, Lwallet/core/jni/proto/Waves$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2646
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2640
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2625
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Waves$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2627
    const-class p2, Lwallet/core/jni/proto/Waves$SigningInput;

    monitor-enter p2

    .line 2628
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Waves$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2630
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2633
    sput-object p1, Lwallet/core/jni/proto/Waves$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 2635
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

    .line 2622
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "messageOneof_"

    aput-object v0, p1, p3

    const-string p3, "messageOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "timestamp_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 2606
    const-class p3, Lwallet/core/jni/proto/Waves$TransferMessage;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lwallet/core/jni/proto/Waves$LeaseMessage;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0001\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0002\u0002\n\u0003<\u0000\u0004<\u0000\u0005<\u0000"

    .line 2618
    sget-object p3, Lwallet/core/jni/proto/Waves$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2603
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Waves$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Waves$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Waves$1;)V

    return-object p1

    .line 2600
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Waves$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Waves$SigningInput;-><init>()V

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

.method public getCancelLeaseMessage()Lwallet/core/jni/proto/Waves$CancelLeaseMessage;
    .locals 2

    .line 2219
    iget v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2220
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    return-object v0

    .line 2222
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Waves$CancelLeaseMessage;->getDefaultInstance()Lwallet/core/jni/proto/Waves$CancelLeaseMessage;

    move-result-object v0

    return-object v0
.end method

.method public getLeaseMessage()Lwallet/core/jni/proto/Waves$LeaseMessage;
    .locals 2

    .line 2169
    iget v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2170
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Waves$LeaseMessage;

    return-object v0

    .line 2172
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Waves$LeaseMessage;->getDefaultInstance()Lwallet/core/jni/proto/Waves$LeaseMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;
    .locals 1

    .line 2020
    iget v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Waves$SigningInput$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2079
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 2041
    iget-wide v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->timestamp_:J

    return-wide v0
.end method

.method public getTransferMessage()Lwallet/core/jni/proto/Waves$TransferMessage;
    .locals 2

    .line 2119
    iget v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2120
    iget-object v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Waves$TransferMessage;

    return-object v0

    .line 2122
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Waves$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Waves$TransferMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasCancelLeaseMessage()Z
    .locals 2

    .line 2212
    iget v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLeaseMessage()Z
    .locals 2

    .line 2162
    iget v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransferMessage()Z
    .locals 2

    .line 2112
    iget v0, p0, Lwallet/core/jni/proto/Waves$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
