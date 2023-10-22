.class public final Lwallet/core/jni/proto/Solana$TokenTransfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$TokenTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenTransfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Solana$TokenTransfer;",
        "Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$TokenTransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x4

.field public static final DECIMALS_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

.field public static final MEMO_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$TokenTransfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECIPIENT_TOKEN_ADDRESS_FIELD_NUMBER:I = 0x3

.field public static final REFERENCES_FIELD_NUMBER:I = 0x7

.field public static final SENDER_TOKEN_ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final TOKEN_MINT_ADDRESS_FIELD_NUMBER:I = 0x1


# instance fields
.field private amount_:J

.field private decimals_:I

.field private memo_:Ljava/lang/String;

.field private recipientTokenAddress_:Ljava/lang/String;

.field private references_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private senderTokenAddress_:Ljava/lang/String;

.field private tokenMintAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5571
    new-instance v0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;-><init>()V

    .line 5574
    sput-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    .line 5575
    const-class v1, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4446
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4447
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->tokenMintAddress_:Ljava/lang/String;

    .line 4448
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->senderTokenAddress_:Ljava/lang/String;

    .line 4449
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->recipientTokenAddress_:Ljava/lang/String;

    .line 4450
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->memo_:Ljava/lang/String;

    .line 4451
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$7000()Lwallet/core/jni/proto/Solana$TokenTransfer;
    .locals 1

    .line 4441
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object v0
.end method

.method static synthetic access$7100(Lwallet/core/jni/proto/Solana$TokenTransfer;Ljava/lang/String;)V
    .locals 0

    .line 4441
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->setTokenMintAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/Solana$TokenTransfer;)V
    .locals 0

    .line 4441
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->clearTokenMintAddress()V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/Solana$TokenTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4441
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->setTokenMintAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/Solana$TokenTransfer;Ljava/lang/String;)V
    .locals 0

    .line 4441
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->setSenderTokenAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/Solana$TokenTransfer;)V
    .locals 0

    .line 4441
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->clearSenderTokenAddress()V

    return-void
.end method

.method static synthetic access$7600(Lwallet/core/jni/proto/Solana$TokenTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4441
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->setSenderTokenAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/Solana$TokenTransfer;Ljava/lang/String;)V
    .locals 0

    .line 4441
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->setRecipientTokenAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/Solana$TokenTransfer;)V
    .locals 0

    .line 4441
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->clearRecipientTokenAddress()V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/Solana$TokenTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4441
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->setRecipientTokenAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/Solana$TokenTransfer;J)V
    .locals 0

    .line 4441
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Solana$TokenTransfer;->setAmount(J)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/Solana$TokenTransfer;)V
    .locals 0

    .line 4441
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/Solana$TokenTransfer;I)V
    .locals 0

    .line 4441
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->setDecimals(I)V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/Solana$TokenTransfer;)V
    .locals 0

    .line 4441
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->clearDecimals()V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/Solana$TokenTransfer;Ljava/lang/String;)V
    .locals 0

    .line 4441
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->setMemo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/Solana$TokenTransfer;)V
    .locals 0

    .line 4441
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->clearMemo()V

    return-void
.end method

.method static synthetic access$8600(Lwallet/core/jni/proto/Solana$TokenTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4441
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->setMemoBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/Solana$TokenTransfer;ILjava/lang/String;)V
    .locals 0

    .line 4441
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Solana$TokenTransfer;->setReferences(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/Solana$TokenTransfer;Ljava/lang/String;)V
    .locals 0

    .line 4441
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->addReferences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/Solana$TokenTransfer;Ljava/lang/Iterable;)V
    .locals 0

    .line 4441
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->addAllReferences(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$9000(Lwallet/core/jni/proto/Solana$TokenTransfer;)V
    .locals 0

    .line 4441
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->clearReferences()V

    return-void
.end method

.method static synthetic access$9100(Lwallet/core/jni/proto/Solana$TokenTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4441
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;->addReferencesBytes(Lcom/google/protobuf/ByteString;)V

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

    .line 4897
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->ensureReferencesIsMutable()V

    .line 4898
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 4883
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4884
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->ensureReferencesIsMutable()V

    .line 4885
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 4921
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4922
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->ensureReferencesIsMutable()V

    .line 4923
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4689
    iput-wide v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->amount_:J

    return-void
.end method

.method private clearDecimals()V
    .locals 1

    const/4 v0, 0x0

    .line 4727
    iput v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->decimals_:I

    return-void
.end method

.method private clearMemo()V
    .locals 1

    .line 4780
    invoke-static {}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Solana$TokenTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->memo_:Ljava/lang/String;

    return-void
.end method

.method private clearRecipientTokenAddress()V
    .locals 1

    .line 4637
    invoke-static {}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Solana$TokenTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getRecipientTokenAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->recipientTokenAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearReferences()V
    .locals 1

    .line 4909
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSenderTokenAddress()V
    .locals 1

    .line 4570
    invoke-static {}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Solana$TokenTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getSenderTokenAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->senderTokenAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearTokenMintAddress()V
    .locals 1

    .line 4503
    invoke-static {}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Solana$TokenTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->getTokenMintAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->tokenMintAddress_:Ljava/lang/String;

    return-void
.end method

.method private ensureReferencesIsMutable()V
    .locals 2

    .line 4852
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4853
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4855
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Solana$TokenTransfer;
    .locals 1

    .line 5580
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1

    .line 5001
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Solana$TokenTransfer;)Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5004
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$TokenTransfer;
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

    .line 4978
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$TokenTransfer;
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

    .line 4984
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$TokenTransfer;
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

    .line 4942
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$TokenTransfer;
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

    .line 4949
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Solana$TokenTransfer;
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

    .line 4989
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$TokenTransfer;
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

    .line 4996
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$TokenTransfer;
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

    .line 4966
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$TokenTransfer;
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

    .line 4973
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Solana$TokenTransfer;
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

    .line 4929
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$TokenTransfer;
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

    .line 4936
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Solana$TokenTransfer;
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

    .line 4954
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$TokenTransfer;
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

    .line 4961
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$TokenTransfer;",
            ">;"
        }
    .end annotation

    .line 5586
    sget-object v0, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

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

    .line 4678
    iput-wide p1, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->amount_:J

    return-void
.end method

.method private setDecimals(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4716
    iput p1, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->decimals_:I

    return-void
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

    .line 4767
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4769
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->memo_:Ljava/lang/String;

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

    .line 4792
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4793
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->memo_:Ljava/lang/String;

    return-void
.end method

.method private setRecipientTokenAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4624
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4626
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->recipientTokenAddress_:Ljava/lang/String;

    return-void
.end method

.method private setRecipientTokenAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4649
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4650
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->recipientTokenAddress_:Ljava/lang/String;

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

    .line 4869
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4870
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$TokenTransfer;->ensureReferencesIsMutable()V

    .line 4871
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSenderTokenAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4557
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4559
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->senderTokenAddress_:Ljava/lang/String;

    return-void
.end method

.method private setSenderTokenAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4582
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4583
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->senderTokenAddress_:Ljava/lang/String;

    return-void
.end method

.method private setTokenMintAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4492
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->tokenMintAddress_:Ljava/lang/String;

    return-void
.end method

.method private setTokenMintAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4515
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4516
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->tokenMintAddress_:Ljava/lang/String;

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

    .line 5516
    sget-object p2, Lwallet/core/jni/proto/Solana$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5564
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5558
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5543
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Solana$TokenTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5545
    const-class p2, Lwallet/core/jni/proto/Solana$TokenTransfer;

    monitor-enter p2

    .line 5546
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Solana$TokenTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5548
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5551
    sput-object p1, Lwallet/core/jni/proto/Solana$TokenTransfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 5553
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

    .line 5540
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "tokenMintAddress_"

    aput-object v0, p1, p3

    const-string p3, "senderTokenAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "recipientTokenAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "decimals_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "memo_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "references_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0003\u0005\u000b\u0006\u0208\u0007\u021a"

    .line 5536
    sget-object p3, Lwallet/core/jni/proto/Solana$TokenTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5521
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Solana$TokenTransfer$Builder;-><init>(Lwallet/core/jni/proto/Solana$1;)V

    return-object p1

    .line 5518
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Solana$TokenTransfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/Solana$TokenTransfer;-><init>()V

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

.method public getAmount()J
    .locals 2

    .line 4666
    iget-wide v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->amount_:J

    return-wide v0
.end method

.method public getDecimals()I
    .locals 1

    .line 4704
    iget v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->decimals_:I

    return v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 4742
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->memo_:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4755
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->memo_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientTokenAddress()Ljava/lang/String;
    .locals 1

    .line 4599
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->recipientTokenAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientTokenAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4612
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->recipientTokenAddress_:Ljava/lang/String;

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

    .line 4834
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 4848
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4849
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4848
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getReferencesCount()I
    .locals 1

    .line 4821
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 4809
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSenderTokenAddress()Ljava/lang/String;
    .locals 1

    .line 4532
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->senderTokenAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderTokenAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4545
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->senderTokenAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenMintAddress()Ljava/lang/String;
    .locals 1

    .line 4465
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->tokenMintAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenMintAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4478
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$TokenTransfer;->tokenMintAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
