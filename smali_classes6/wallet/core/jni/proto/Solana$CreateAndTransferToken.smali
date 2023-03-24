.class public final Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$CreateAndTransferTokenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreateAndTransferToken"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Solana$CreateAndTransferToken;",
        "Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$CreateAndTransferTokenOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x5

.field public static final DECIMALS_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

.field public static final MEMO_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$CreateAndTransferToken;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECIPIENT_MAIN_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final RECIPIENT_TOKEN_ADDRESS_FIELD_NUMBER:I = 0x3

.field public static final REFERENCES_FIELD_NUMBER:I = 0x8

.field public static final SENDER_TOKEN_ADDRESS_FIELD_NUMBER:I = 0x4

.field public static final TOKEN_MINT_ADDRESS_FIELD_NUMBER:I = 0x2


# instance fields
.field private amount_:J

.field private decimals_:I

.field private memo_:Ljava/lang/String;

.field private recipientMainAddress_:Ljava/lang/String;

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

    .line 7030
    new-instance v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-direct {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;-><init>()V

    .line 7033
    sput-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    .line 7034
    const-class v1, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5767
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 5768
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->recipientMainAddress_:Ljava/lang/String;

    .line 5769
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->tokenMintAddress_:Ljava/lang/String;

    .line 5770
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->recipientTokenAddress_:Ljava/lang/String;

    .line 5771
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->senderTokenAddress_:Ljava/lang/String;

    .line 5772
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->memo_:Ljava/lang/String;

    .line 5773
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$10000(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Ljava/lang/String;)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->setRecipientTokenAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V
    .locals 0

    .line 5762
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->clearRecipientTokenAddress()V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->setRecipientTokenAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10300(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Ljava/lang/String;)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->setSenderTokenAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10400(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V
    .locals 0

    .line 5762
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->clearSenderTokenAddress()V

    return-void
.end method

.method static synthetic access$10500(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->setSenderTokenAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10600(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;J)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->setAmount(J)V

    return-void
.end method

.method static synthetic access$10700(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V
    .locals 0

    .line 5762
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->clearAmount()V

    return-void
.end method

.method static synthetic access$10800(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;I)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->setDecimals(I)V

    return-void
.end method

.method static synthetic access$10900(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V
    .locals 0

    .line 5762
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->clearDecimals()V

    return-void
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Ljava/lang/String;)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->setMemo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11100(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V
    .locals 0

    .line 5762
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->clearMemo()V

    return-void
.end method

.method static synthetic access$11200(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->setMemoBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;ILjava/lang/String;)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->setReferences(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Ljava/lang/String;)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->addReferences(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11500(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Ljava/lang/Iterable;)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->addAllReferences(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V
    .locals 0

    .line 5762
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->clearReferences()V

    return-void
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->addReferencesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9300()Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
    .locals 1

    .line 5762
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object v0
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Ljava/lang/String;)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->setRecipientMainAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9500(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V
    .locals 0

    .line 5762
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->clearRecipientMainAddress()V

    return-void
.end method

.method static synthetic access$9600(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->setRecipientMainAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9700(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Ljava/lang/String;)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->setTokenMintAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)V
    .locals 0

    .line 5762
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->clearTokenMintAddress()V

    return-void
.end method

.method static synthetic access$9900(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5762
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->setTokenMintAddressBytes(Lcom/google/protobuf/ByteString;)V

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

    .line 6286
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->ensureReferencesIsMutable()V

    .line 6287
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->references_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 6272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6273
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->ensureReferencesIsMutable()V

    .line 6274
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->references_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 6310
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6311
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->ensureReferencesIsMutable()V

    .line 6312
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6078
    iput-wide v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->amount_:J

    return-void
.end method

.method private clearDecimals()V
    .locals 1

    const/4 v0, 0x0

    .line 6116
    iput v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->decimals_:I

    return-void
.end method

.method private clearMemo()V
    .locals 1

    .line 6169
    invoke-static {}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getDefaultInstance()Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->memo_:Ljava/lang/String;

    return-void
.end method

.method private clearRecipientMainAddress()V
    .locals 1

    .line 5825
    invoke-static {}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getDefaultInstance()Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getRecipientMainAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->recipientMainAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearRecipientTokenAddress()V
    .locals 1

    .line 5959
    invoke-static {}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getDefaultInstance()Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getRecipientTokenAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->recipientTokenAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearReferences()V
    .locals 1

    .line 6298
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSenderTokenAddress()V
    .locals 1

    .line 6026
    invoke-static {}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getDefaultInstance()Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getSenderTokenAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->senderTokenAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearTokenMintAddress()V
    .locals 1

    .line 5892
    invoke-static {}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getDefaultInstance()Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->getTokenMintAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->tokenMintAddress_:Ljava/lang/String;

    return-void
.end method

.method private ensureReferencesIsMutable()V
    .locals 2

    .line 6241
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6242
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6244
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
    .locals 1

    .line 7039
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1

    .line 6390
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Solana$CreateAndTransferToken;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6393
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
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

    .line 6367
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
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

    .line 6373
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
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

    .line 6331
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
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

    .line 6338
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
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

    .line 6378
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
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

    .line 6385
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
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

    .line 6355
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
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

    .line 6362
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
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

    .line 6318
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
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

    .line 6325
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
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

    .line 6343
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$CreateAndTransferToken;
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

    .line 6350
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$CreateAndTransferToken;",
            ">;"
        }
    .end annotation

    .line 7045
    sget-object v0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

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

    .line 6067
    iput-wide p1, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->amount_:J

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

    .line 6105
    iput p1, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->decimals_:I

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

    .line 6156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6158
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->memo_:Ljava/lang/String;

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

    .line 6181
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6182
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->memo_:Ljava/lang/String;

    return-void
.end method

.method private setRecipientMainAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5812
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5814
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->recipientMainAddress_:Ljava/lang/String;

    return-void
.end method

.method private setRecipientMainAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5837
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5838
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->recipientMainAddress_:Ljava/lang/String;

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

    .line 5946
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5948
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->recipientTokenAddress_:Ljava/lang/String;

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

    .line 5971
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5972
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->recipientTokenAddress_:Ljava/lang/String;

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

    .line 6258
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6259
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->ensureReferencesIsMutable()V

    .line 6260
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->references_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 6013
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6015
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->senderTokenAddress_:Ljava/lang/String;

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

    .line 6038
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6039
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->senderTokenAddress_:Ljava/lang/String;

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

    .line 5879
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5881
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->tokenMintAddress_:Ljava/lang/String;

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

    .line 5904
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5905
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->tokenMintAddress_:Ljava/lang/String;

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

    .line 6974
    sget-object p2, Lwallet/core/jni/proto/Solana$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7023
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 7017
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7002
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7004
    const-class p2, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    monitor-enter p2

    .line 7005
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7007
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7010
    sput-object p1, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->PARSER:Lcom/google/protobuf/Parser;

    .line 7012
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

    .line 6999
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "recipientMainAddress_"

    aput-object v0, p1, p3

    const-string p3, "tokenMintAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "recipientTokenAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "senderTokenAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "decimals_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "memo_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "references_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0003\u0006\u000b\u0007\u0208\u0008\u021a"

    .line 6995
    sget-object p3, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6979
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken$Builder;-><init>(Lwallet/core/jni/proto/Solana$1;)V

    return-object p1

    .line 6976
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;

    invoke-direct {p1}, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;-><init>()V

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

    .line 6055
    iget-wide v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->amount_:J

    return-wide v0
.end method

.method public getDecimals()I
    .locals 1

    .line 6093
    iget v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->decimals_:I

    return v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 6131
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->memo_:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6144
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->memo_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientMainAddress()Ljava/lang/String;
    .locals 1

    .line 5787
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->recipientMainAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientMainAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5800
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->recipientMainAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientTokenAddress()Ljava/lang/String;
    .locals 1

    .line 5921
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->recipientTokenAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientTokenAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5934
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->recipientTokenAddress_:Ljava/lang/String;

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

    .line 6223
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->references_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 6237
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6238
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 6237
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getReferencesCount()I
    .locals 1

    .line 6210
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->references_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 6198
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->references_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSenderTokenAddress()Ljava/lang/String;
    .locals 1

    .line 5988
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->senderTokenAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderTokenAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6001
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->senderTokenAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenMintAddress()Ljava/lang/String;
    .locals 1

    .line 5854
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->tokenMintAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenMintAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5867
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$CreateAndTransferToken;->tokenMintAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
