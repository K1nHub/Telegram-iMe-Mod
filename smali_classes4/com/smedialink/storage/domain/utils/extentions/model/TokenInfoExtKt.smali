.class public final Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt;
.super Ljava/lang/Object;
.source "TokenInfoExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final getLogo(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$LIME;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$LIME;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getLogo()I

    move-result p0

    goto :goto_0

    .line 15
    :cond_0
    sget p0, Lcom/smedialink/storage/R$drawable;->fork_ic_lime_polygon_logo:I

    goto :goto_0

    .line 14
    :cond_1
    sget p0, Lcom/smedialink/storage/R$drawable;->fork_ic_lime_bnb_logo:I

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;->getLogo()I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final getWeiConvertUnit(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDT;->INSTANCE:Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum$USDT;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    sget-object v0, Lcom/smedialink/storage/domain/utils/extentions/model/TokenInfoExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 26
    sget-object p0, Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;->ETHER:Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getWeiConvertUnit()Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    move-result-object p0

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo$Crypto$Ethereum;->getWeiConvertUnit()Lcom/smedialink/storage/domain/utils/crypto/Convert$Unit;

    move-result-object p0

    :goto_0
    return-object p0
.end method
