.class public final Lwallet/core/jni/proto/Solana$Transfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$TransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Solana$Transfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Solana$Transfer;",
        "Lwallet/core/jni/proto/Solana$Transfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$TransferOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

.field public static final MEMO_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$Transfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECIPIENT_FIELD_NUMBER:I = 0x1

.field public static final REFERENCES_FIELD_NUMBER:I = 0x4

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private memo_:Ljava/lang/String;

.field private recipient_:Ljava/lang/String;

.field private references_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private value_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 888
    new-instance v0, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/Solana$Transfer;-><init>()V

    .line 891
    sput-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    .line 892
    const-class v1, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 119
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->recipient_:Ljava/lang/String;

    .line 120
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->memo_:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Solana$Transfer;
    .locals 1

    .line 113
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Solana$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->setRecipient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Solana$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->addReferences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Solana$Transfer;Ljava/lang/Iterable;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->addAllReferences(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Solana$Transfer;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$Transfer;->clearReferences()V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Solana$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->addReferencesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Solana$Transfer;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$Transfer;->clearRecipient()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Solana$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->setRecipientBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Solana$Transfer;J)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Solana$Transfer;->setValue(J)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Solana$Transfer;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$Transfer;->clearValue()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Solana$Transfer;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->setMemo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Solana$Transfer;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$Transfer;->clearMemo()V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Solana$Transfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$Transfer;->setMemoBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Solana$Transfer;ILjava/lang/String;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Solana$Transfer;->setReferences(ILjava/lang/String;)V

    return-void
.end method

.method private addAllReferences(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 395
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$Transfer;->ensureReferencesIsMutable()V

    .line 396
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addReferences(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 381
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 382
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$Transfer;->ensureReferencesIsMutable()V

    .line 383
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addReferencesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 419
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 420
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$Transfer;->ensureReferencesIsMutable()V

    .line 421
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearMemo()V
    .locals 1

    .line 278
    invoke-static {}, Lwallet/core/jni/proto/Solana$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Solana$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$Transfer;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->memo_:Ljava/lang/String;

    return-void
.end method

.method private clearRecipient()V
    .locals 1

    .line 173
    invoke-static {}, Lwallet/core/jni/proto/Solana$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Solana$Transfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$Transfer;->getRecipient()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->recipient_:Ljava/lang/String;

    return-void
.end method

.method private clearReferences()V
    .locals 1

    .line 407
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearValue()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 225
    iput-wide v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->value_:J

    return-void
.end method

.method private ensureReferencesIsMutable()V
    .locals 2

    .line 350
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 351
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Solana$Transfer;
    .locals 1

    .line 897
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1

    .line 499
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Solana$Transfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Solana$Transfer;)Lwallet/core/jni/proto/Solana$Transfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 502
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$Transfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$Transfer;
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

    .line 476
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$Transfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$Transfer;
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

    .line 482
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$Transfer;
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

    .line 440
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$Transfer;
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

    .line 447
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Solana$Transfer;
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

    .line 487
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$Transfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$Transfer;
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

    .line 494
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$Transfer;
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

    .line 464
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$Transfer;
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

    .line 471
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Solana$Transfer;
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

    .line 427
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$Transfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$Transfer;
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

    .line 434
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$Transfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Solana$Transfer;
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

    .line 452
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$Transfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$Transfer;
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

    .line 459
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$Transfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$Transfer;",
            ">;"
        }
    .end annotation

    .line 903
    sget-object v0, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMemo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 267
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$Transfer;->memo_:Ljava/lang/String;

    return-void
.end method

.method private setMemoBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 290
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 291
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$Transfer;->memo_:Ljava/lang/String;

    return-void
.end method

.method private setRecipient(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$Transfer;->recipient_:Ljava/lang/String;

    return-void
.end method

.method private setRecipientBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 185
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 186
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$Transfer;->recipient_:Ljava/lang/String;

    return-void
.end method

.method private setReferences(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 367
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$Transfer;->ensureReferencesIsMutable()V

    .line 369
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 214
    iput-wide p1, p0, Lwallet/core/jni/proto/Solana$Transfer;->value_:J

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

    .line 836
    sget-object p2, Lwallet/core/jni/proto/Solana$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 881
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 875
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 860
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Solana$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 862
    const-class p2, Lwallet/core/jni/proto/Solana$Transfer;

    monitor-enter p2

    .line 863
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Solana$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 865
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 868
    sput-object p1, Lwallet/core/jni/proto/Solana$Transfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 870
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

    .line 857
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "recipient_"

    aput-object v0, p1, p3

    const-string p3, "value_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "memo_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "references_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0208\u0002\u0003\u0003\u0208\u0004\u021a"

    .line 853
    sget-object p3, Lwallet/core/jni/proto/Solana$Transfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$Transfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 841
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Solana$Transfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Solana$Transfer$Builder;-><init>(Lwallet/core/jni/proto/Solana$1;)V

    return-object p1

    .line 838
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Solana$Transfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/Solana$Transfer;-><init>()V

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

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->memo_:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 253
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->memo_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->recipient_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 148
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->recipient_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReferences(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getReferencesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 347
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 346
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getReferencesCount()I
    .locals 1

    .line 319
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReferencesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getValue()J
    .locals 2

    .line 202
    iget-wide v0, p0, Lwallet/core/jni/proto/Solana$Transfer;->value_:J

    return-wide v0
.end method
