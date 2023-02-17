.class public final Lcom/smedialink/utils/extentions/model/wallet/BinancePayExtKt;
.super Ljava/lang/Object;
.source "BinancePayExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/utils/extentions/model/wallet/BinancePayExtKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final color(Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionStatus;)Ljava/lang/String;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/smedialink/utils/extentions/model/wallet/BinancePayExtKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "statisticChartLine_green"

    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    const-string p0, "windowBackgroundWhiteGrayText2"

    :goto_0
    return-object p0
.end method

.method public static final icon(Lcom/smedialink/storage/domain/model/binancepay/BinanceTransactionDirection;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/smedialink/utils/extentions/model/wallet/BinancePayExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 17
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_binance_pay_outgoing_request:I

    goto :goto_0

    .line 18
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_binance_pay_incoming_request:I

    :goto_0
    return p0
.end method
