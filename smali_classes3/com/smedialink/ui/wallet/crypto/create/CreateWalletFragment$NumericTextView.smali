.class final Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;
.super Landroid/widget/TextView;
.source "CreateWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NumericTextView"
.end annotation


# instance fields
.field private number:Ljava/lang/String;

.field private numberWidth:I

.field private final numericPaint:Landroid/text/TextPaint;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1128
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1131
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;->numericPaint:Landroid/text/TextPaint;

    const/16 p2, 0x1f

    .line 1136
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 p2, 0x10

    .line 1137
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1153
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1154
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;->number:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    .line 1155
    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;->numericPaint:Landroid/text/TextPaint;

    const-string v3, "windowBackgroundWhiteHintText"

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 1158
    invoke-static {v1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getMaxNumberWidth$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)I

    move-result v1

    iget v2, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;->numberWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/16 v2, 0x11

    .line 1159
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    .line 1160
    iget-object v3, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;->numericPaint:Landroid/text/TextPaint;

    .line 1156
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final setNumber(Ljava/lang/String;)V
    .locals 2

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;->number:Ljava/lang/String;

    .line 1144
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;->numericPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;->numberWidth:I

    .line 1145
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;->this$0:Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$getMaxNumberWidth$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;)I

    move-result v0

    iget v1, p0, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment$NumericTextView;->numberWidth:I

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;->access$setMaxNumberWidth$p(Lcom/smedialink/ui/wallet/crypto/create/CreateWalletFragment;I)V

    return-void
.end method
