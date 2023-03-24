.class public final enum Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;
.super Ljava/lang/Enum;
.source "Aptos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos$NftMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NftTransactionPayloadCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

.field public static final enum CANCEL_OFFER_NFT:Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

.field public static final enum CLAIM_NFT:Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

.field public static final enum NFTTRANSACTIONPAYLOAD_NOT_SET:Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

.field public static final enum OFFER_NFT:Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 5281
    new-instance v0, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    const-string v1, "OFFER_NFT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->OFFER_NFT:Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    .line 5282
    new-instance v1, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    const-string v4, "CANCEL_OFFER_NFT"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->CANCEL_OFFER_NFT:Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    .line 5283
    new-instance v4, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    const-string v6, "CLAIM_NFT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->CLAIM_NFT:Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    .line 5284
    new-instance v6, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    const-string v8, "NFTTRANSACTIONPAYLOAD_NOT_SET"

    invoke-direct {v6, v8, v7, v2}, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->NFTTRANSACTIONPAYLOAD_NOT_SET:Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    const/4 v8, 0x4

    new-array v8, v8, [Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    aput-object v0, v8, v2

    aput-object v1, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    .line 5280
    sput-object v8, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->$VALUES:[Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 5286
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5287
    iput p3, p0, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5301
    :cond_0
    sget-object p0, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->CLAIM_NFT:Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    return-object p0

    .line 5300
    :cond_1
    sget-object p0, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->CANCEL_OFFER_NFT:Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    return-object p0

    .line 5299
    :cond_2
    sget-object p0, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->OFFER_NFT:Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    return-object p0

    .line 5302
    :cond_3
    sget-object p0, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->NFTTRANSACTIONPAYLOAD_NOT_SET:Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    return-object p0
.end method

.method public static valueOf(I)Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5294
    invoke-static {p0}, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->forNumber(I)Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 5280
    const-class v0, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    return-object p0
.end method

.method public static values()[Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;
    .locals 1

    .line 5280
    sget-object v0, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->$VALUES:[Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    invoke-virtual {v0}, [Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 5307
    iget v0, p0, Lwallet/core/jni/proto/Aptos$NftMessage$NftTransactionPayloadCase;->value:I

    return v0
.end method
