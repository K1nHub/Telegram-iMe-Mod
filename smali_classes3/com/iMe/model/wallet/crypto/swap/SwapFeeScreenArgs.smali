.class public final Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;
.super Ljava/lang/Object;
.source "SwapFeeScreenArgs.kt"


# instance fields
.field private final metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

.field private final networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field private final outputNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field private final protocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

.field private final selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

.field private final selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

.field private final selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;


# direct methods
.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)V
    .locals 1

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedDeadline"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedSlippage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedFee"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    .line 12
    iput-object p2, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    .line 13
    iput-object p3, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    .line 14
    iput-object p4, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    .line 15
    iput-object p5, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 16
    iput-object p6, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->outputNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    .line 17
    iput-object p7, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->protocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    return-void
.end method

.method public static synthetic copy$default(Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;ILjava/lang/Object;)Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->outputNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->protocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->copy(Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-object v0
.end method

.method public final component2()Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    return-object v0
.end method

.method public final component3()Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    return-object v0
.end method

.method public final component4()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    return-object v0
.end method

.method public final component5()Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final component6()Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->outputNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final component7()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->protocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    return-object v0
.end method

.method public final copy(Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;
    .locals 9

    const-string v0, "metadata"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedDeadline"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedSlippage"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedFee"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    move-object v1, v0

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;-><init>(Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/crypto/NetworkType;Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->outputNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    iget-object v3, p1, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->outputNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->protocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    iget-object p1, p1, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->protocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getMetadata()Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    return-object v0
.end method

.method public final getNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getOutputNetworkType()Lcom/iMe/storage/domain/model/crypto/NetworkType;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->outputNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-object v0
.end method

.method public final getProtocol()Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->protocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    return-object v0
.end method

.method public final getSelectedDeadline()Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    return-object v0
.end method

.method public final getSelectedFee()Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    return-object v0
.end method

.method public final getSelectedSlippage()Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-virtual {v1}, Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->outputNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->protocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwapFeeScreenArgs(metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->metadata:Lcom/iMe/storage/domain/model/crypto/swap/CryptoSwapMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedDeadline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedDeadline:Lcom/iMe/storage/domain/model/wallet/swap/SwapDeadline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedSlippage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedSlippage:Lcom/iMe/storage/domain/model/wallet/swap/SwapSlippage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedFee="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->selectedFee:Lcom/iMe/model/wallet/crypto/send/fee/GasPriceItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->networkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputNetworkType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->outputNetworkType:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/iMe/model/wallet/crypto/swap/SwapFeeScreenArgs;->protocol:Lcom/iMe/storage/domain/model/wallet/swap/SwapProtocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
