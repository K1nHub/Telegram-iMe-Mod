.class public final Lwallet/core/jni/proto/Aptos$NftMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$NftMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NftMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Aptos$NftMessage$Builder;,
        Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Aptos$NftMessage;",
        "Lwallet/core/jni/proto/Aptos$NftMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$NftMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final CANCEL_OFFER_NFT_FIELD_NUMBER:I = 0x2

.field public static final CLAIM_NFT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

.field public static final OFFER_NFT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$NftMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nftTransactionPayloadCase_:I

.field private nftTransactionPayload_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5784
    new-instance v0, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-direct {v0}, Lwallet/core/jni/proto/Aptos$NftMessage;-><init>()V

    .line 5787
    sput-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    .line 5788
    const-class v1, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5276
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 5278
    iput v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    return-void
.end method

.method static synthetic access$8800()Lwallet/core/jni/proto/Aptos$NftMessage;
    .locals 1

    .line 5271
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object v0
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/Aptos$NftMessage;)V
    .locals 0

    .line 5271
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$NftMessage;->clearNftTransactionPayload()V

    return-void
.end method

.method static synthetic access$9000(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V
    .locals 0

    .line 5271
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->setOfferNft(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V

    return-void
.end method

.method static synthetic access$9100(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V
    .locals 0

    .line 5271
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->mergeOfferNft(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V

    return-void
.end method

.method static synthetic access$9200(Lwallet/core/jni/proto/Aptos$NftMessage;)V
    .locals 0

    .line 5271
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$NftMessage;->clearOfferNft()V

    return-void
.end method

.method static synthetic access$9300(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V
    .locals 0

    .line 5271
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->setCancelOfferNft(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V

    return-void
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V
    .locals 0

    .line 5271
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->mergeCancelOfferNft(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V

    return-void
.end method

.method static synthetic access$9500(Lwallet/core/jni/proto/Aptos$NftMessage;)V
    .locals 0

    .line 5271
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$NftMessage;->clearCancelOfferNft()V

    return-void
.end method

.method static synthetic access$9600(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V
    .locals 0

    .line 5271
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->setClaimNft(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V

    return-void
.end method

.method static synthetic access$9700(Lwallet/core/jni/proto/Aptos$NftMessage;Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V
    .locals 0

    .line 5271
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$NftMessage;->mergeClaimNft(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V

    return-void
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/Aptos$NftMessage;)V
    .locals 0

    .line 5271
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$NftMessage;->clearClaimNft()V

    return-void
.end method

.method private clearCancelOfferNft()V
    .locals 2

    .line 5417
    iget v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5418
    iput v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v0, 0x0

    .line 5419
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearClaimNft()V
    .locals 2

    .line 5467
    iget v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5468
    iput v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v0, 0x0

    .line 5469
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearNftTransactionPayload()V
    .locals 1

    const/4 v0, 0x0

    .line 5319
    iput v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v0, 0x0

    .line 5320
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    return-void
.end method

.method private clearOfferNft()V
    .locals 2

    .line 5367
    iget v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5368
    iput v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v0, 0x0

    .line 5369
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Aptos$NftMessage;
    .locals 1

    .line 5793
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object v0
.end method

.method private mergeCancelOfferNft(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5403
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5404
    iget v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    .line 5405
    invoke-static {}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5406
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->newBuilder(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;

    move-result-object v0

    .line 5407
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    goto :goto_0

    .line 5409
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    .line 5411
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    return-void
.end method

.method private mergeClaimNft(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5453
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5454
    iget v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    .line 5455
    invoke-static {}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5456
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->newBuilder(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;

    move-result-object v0

    .line 5457
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    goto :goto_0

    .line 5459
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    .line 5461
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    return-void
.end method

.method private mergeOfferNft(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5353
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5354
    iget v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    .line 5355
    invoke-static {}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5356
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->newBuilder(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;

    move-result-object v0

    .line 5357
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    goto :goto_0

    .line 5359
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    .line 5361
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1

    .line 5548
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Aptos$NftMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Aptos$NftMessage;)Lwallet/core/jni/proto/Aptos$NftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5551
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$NftMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$NftMessage;
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

    .line 5525
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$NftMessage;
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

    .line 5531
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$NftMessage;
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

    .line 5489
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$NftMessage;
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

    .line 5496
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Aptos$NftMessage;
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

    .line 5536
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$NftMessage;
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

    .line 5543
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$NftMessage;
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

    .line 5513
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$NftMessage;
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

    .line 5520
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Aptos$NftMessage;
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

    .line 5476
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$NftMessage;
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

    .line 5483
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Aptos$NftMessage;
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

    .line 5501
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$NftMessage;
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

    .line 5508
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$NftMessage;",
            ">;"
        }
    .end annotation

    .line 5799
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCancelOfferNft(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5395
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5396
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 5397
    iput p1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    return-void
.end method

.method private setClaimNft(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5445
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5446
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 5447
    iput p1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    return-void
.end method

.method private setOfferNft(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5346
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5347
    iput p1, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

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

    .line 5731
    sget-object p2, Lwallet/core/jni/proto/Aptos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5777
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5771
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5756
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Aptos$NftMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5758
    const-class p2, Lwallet/core/jni/proto/Aptos$NftMessage;

    monitor-enter p2

    .line 5759
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Aptos$NftMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5761
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5764
    sput-object p1, Lwallet/core/jni/proto/Aptos$NftMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 5766
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

    .line 5753
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "nftTransactionPayload_"

    aput-object v0, p1, p3

    const-string p3, "nftTransactionPayloadCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 5739
    const-class p3, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000"

    .line 5749
    sget-object p3, Lwallet/core/jni/proto/Aptos$NftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5736
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Aptos$NftMessage$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Aptos$NftMessage$Builder;-><init>(Lwallet/core/jni/proto/Aptos$1;)V

    return-object p1

    .line 5733
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Aptos$NftMessage;

    invoke-direct {p1}, Lwallet/core/jni/proto/Aptos$NftMessage;-><init>()V

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

.method public getCancelOfferNft()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
    .locals 2

    .line 5386
    iget v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5387
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object v0

    .line 5389
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    move-result-object v0

    return-object v0
.end method

.method public getClaimNft()Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
    .locals 2

    .line 5436
    iget v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5437
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object v0

    .line 5439
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    move-result-object v0

    return-object v0
.end method

.method public getNftTransactionPayloadCase()Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;
    .locals 1

    .line 5314
    iget v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->forNumber(I)Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getOfferNft()Lwallet/core/jni/proto/Aptos$OfferNftMessage;
    .locals 2

    .line 5336
    iget v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5337
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object v0

    .line 5339
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasCancelOfferNft()Z
    .locals 2

    .line 5379
    iget v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClaimNft()Z
    .locals 2

    .line 5429
    iget v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOfferNft()Z
    .locals 2

    .line 5329
    iget v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage;->nftTransactionPayloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
