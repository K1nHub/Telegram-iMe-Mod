.class public final Lcom/iMe/utils/extentions/model/pay/BinancePayExtKt;
.super Ljava/lang/Object;
.source "BinancePayExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/utils/extentions/model/pay/BinancePayExtKt$WhenMappings;
    }
.end annotation


# direct methods
.method public static final colorKey(Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/iMe/utils/extentions/model/pay/BinancePayExtKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 27
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_statisticChartLine_green:I

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 26
    :cond_1
    sget p0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    :goto_0
    return p0
.end method

.method public static final icon(Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionDirection;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/iMe/utils/extentions/model/pay/BinancePayExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 19
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_binance_pay_outgoing_request:I

    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget p0, Lorg/telegram/messenger/R$drawable;->fork_ic_binance_pay_incoming_request:I

    :goto_0
    return p0
.end method
