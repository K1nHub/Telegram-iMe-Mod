.class public final Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;
.super Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer;
.source "PushNotificationModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Out"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out$WhenMappings;
    }
.end annotation


# instance fields
.field private final amount:Ljava/lang/String;

.field private final cryptoCode:Ljava/lang/String;

.field private final fromWalletAddress:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final toWalletAddress:Ljava/lang/String;

.field private final type:Ljava/lang/String;

.field private final userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoCode"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromWalletAddress"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toWalletAddress"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$CryptoTransfer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iput-object p1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->userId:Ljava/lang/String;

    .line 279
    iput-object p2, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->type:Ljava/lang/String;

    .line 280
    iput-object p3, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->status:Ljava/lang/String;

    .line 281
    iput-object p4, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->cryptoCode:Ljava/lang/String;

    .line 282
    iput-object p5, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->fromWalletAddress:Ljava/lang/String;

    .line 283
    iput-object p6, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->toWalletAddress:Ljava/lang/String;

    .line 284
    iput-object p7, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->amount:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->getUserId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->getType()Ljava/lang/String;

    move-result-object p2

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->status:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->cryptoCode:Ljava/lang/String;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->fromWalletAddress:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->toWalletAddress:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->amount:Ljava/lang/String;

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

    invoke-virtual/range {p2 .. p9}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->cryptoCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->fromWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->toWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;
    .locals 9

    const-string v0, "userId"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cryptoCode"

    move-object v5, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromWalletAddress"

    move-object v6, p5

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toWalletAddress"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->cryptoCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->cryptoCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->fromWalletAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->fromWalletAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->toWalletAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->toWalletAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->amount:Ljava/lang/String;

    iget-object p1, p1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->amount:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getAmount()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->amount:Ljava/lang/String;

    return-object v0
.end method

.method public final getCryptoCode()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->cryptoCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getFromWalletAddress()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->fromWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 8

    .line 287
    sget-object v0, Lcom/smedialink/storage/data/network/model/response/base/Status;->Companion:Lcom/smedialink/storage/data/network/model/response/base/Status$Companion;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/data/network/model/response/base/Status$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/data/network/model/response/base/Status;

    move-result-object v0

    sget-object v1, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 294
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->push_notification_wallet_crypto_transfer_out_failed_description:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 295
    iget-object v5, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->amount:Ljava/lang/String;

    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v7, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v7

    invoke-static {v6, v7}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 296
    iget-object v6, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v5, v4}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->toWalletAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 293
    invoke-virtual {p0, v0, v1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :cond_1
    sget v0, Lorg/telegram/messenger/R$string;->push_notification_wallet_crypto_transfer_out_success_description:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 290
    iget-object v5, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->amount:Ljava/lang/String;

    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;

    iget-object v7, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getDecimals()I

    move-result v7

    invoke-static {v6, v7}, Lcom/smedialink/utils/formatter/BalanceFormatter;->formatBalance(Ljava/lang/Number;I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v4

    .line 291
    iget-object v6, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Companion;->map(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getShortName()I

    move-result v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v5, v4}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->toWalletAddress:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 288
    invoke-virtual {p0, v0, v1}, Lcom/smedialink/model/wallet/notification/PushNotificationModel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getToWalletAddress()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->toWalletAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->status:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->fromWalletAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->toWalletAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->amount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Out(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cryptoCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->cryptoCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fromWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->fromWalletAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toWalletAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->toWalletAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smedialink/model/wallet/notification/PushNotificationModel$Donation$Out;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
