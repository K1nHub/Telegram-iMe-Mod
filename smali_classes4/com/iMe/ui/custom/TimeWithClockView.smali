.class public final Lcom/iMe/ui/custom/TimeWithClockView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "TimeWithClockView.kt"


# instance fields
.field private final clockHeight$delegate:Lkotlin/Lazy;

.field private final clockPadding$delegate:Lkotlin/Lazy;

.field private final clockWidth$delegate:Lkotlin/Lazy;

.field private shouldDrawClock:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/iMe/ui/custom/TimeWithClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    sget-object p1, Lcom/iMe/ui/custom/TimeWithClockView$clockPadding$2;->INSTANCE:Lcom/iMe/ui/custom/TimeWithClockView$clockPadding$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/TimeWithClockView;->clockPadding$delegate:Lkotlin/Lazy;

    .line 27
    sget-object p1, Lcom/iMe/ui/custom/TimeWithClockView$clockWidth$2;->INSTANCE:Lcom/iMe/ui/custom/TimeWithClockView$clockWidth$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/TimeWithClockView;->clockWidth$delegate:Lkotlin/Lazy;

    .line 28
    sget-object p1, Lcom/iMe/ui/custom/TimeWithClockView$clockHeight$2;->INSTANCE:Lcom/iMe/ui/custom/TimeWithClockView$clockHeight$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/custom/TimeWithClockView;->clockHeight$delegate:Lkotlin/Lazy;

    .line 31
    invoke-direct {p0}, Lcom/iMe/ui/custom/TimeWithClockView;->setupView()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 18
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/iMe/ui/custom/TimeWithClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final getClockHeight()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/iMe/ui/custom/TimeWithClockView;->clockHeight$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getClockPadding()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/ui/custom/TimeWithClockView;->clockPadding$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getClockWidth()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/custom/TimeWithClockView;->clockWidth$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final setupView()V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/iMe/ui/custom/TimeWithClockView;->applyColors()V

    const/high16 v0, 0x41600000    # 14.0f

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public final applyColors()V
    .locals 1

    .line 37
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_date:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/custom/TimeWithClockView;->getClockHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/iMe/ui/custom/TimeWithClockView;->getClockPadding()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 76
    iget-boolean v0, p0, Lcom/iMe/ui/custom/TimeWithClockView;->shouldDrawClock:Z

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/iMe/ui/custom/TimeWithClockView;->getClockWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/iMe/ui/custom/TimeWithClockView;->getClockHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 78
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x3

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_clockDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 80
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 67
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    invoke-direct {p0}, Lcom/iMe/ui/custom/TimeWithClockView;->getClockWidth()I

    move-result p2

    add-int/2addr p1, p2

    invoke-direct {p0}, Lcom/iMe/ui/custom/TimeWithClockView;->getClockPadding()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public final setTime(Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;)V
    .locals 2

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/binancepay/BinanceTransaction;->getStatus()Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;->PENDING:Lcom/iMe/storage/domain/model/binancepay/BinanceTransactionStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/iMe/ui/custom/TimeWithClockView;->shouldDrawClock:Z

    .line 47
    invoke-virtual {p1}, Lcom/iMe/model/wallet/home/pay/BinanceTransactionItem;->getTransactionTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTime(Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;)V
    .locals 2

    const-string v0, "cryptoBoxActionItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getStatus()Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;->PENDING:Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxActionStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/iMe/ui/custom/TimeWithClockView;->shouldDrawClock:Z

    .line 57
    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/CryptoBoxActionItem;->getTransactionTimeText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTime(Lcom/iMe/model/wallet/transaction/StakingOperationItem;)V
    .locals 2

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getStatus()Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;->PENDING:Lcom/iMe/storage/domain/model/staking/StakingOperationStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/iMe/ui/custom/TimeWithClockView;->shouldDrawClock:Z

    .line 52
    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/StakingOperationItem;->getTransactionTimeText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTime(Lcom/iMe/model/wallet/transaction/TransactionItem;)V
    .locals 2

    const-string v0, "transaction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransaction()Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/transaction/Transaction;->getStatus()Lcom/iMe/storage/data/network/model/response/base/Status;

    move-result-object v0

    sget-object v1, Lcom/iMe/storage/data/network/model/response/base/Status;->PENDING:Lcom/iMe/storage/data/network/model/response/base/Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/iMe/ui/custom/TimeWithClockView;->shouldDrawClock:Z

    .line 42
    invoke-virtual {p1}, Lcom/iMe/model/wallet/transaction/TransactionItem;->getTransactionTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
