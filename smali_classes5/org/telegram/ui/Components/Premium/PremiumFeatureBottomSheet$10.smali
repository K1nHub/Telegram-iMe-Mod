.class Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet$10;
.super Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;
.source "PremiumFeatureBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->getViewForPosition(Landroid/content/Context;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;Landroid/content/Context;I)V
    .locals 0

    .line 653
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public setOffset(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 656
    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->setAutoPlayEnabled(Z)V

    .line 657
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/Premium/PremiumStickersPreviewRecycler;->setOffset(F)V

    return-void
.end method
