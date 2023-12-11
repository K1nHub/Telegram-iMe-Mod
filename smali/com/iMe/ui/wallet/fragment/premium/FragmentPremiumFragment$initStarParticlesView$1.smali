.class public final Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$initStarParticlesView$1;
.super Lorg/telegram/ui/Components/Premium/StarParticlesView;
.source "FragmentPremiumFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->initStarParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/StarParticlesView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 200
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/StarParticlesView;->onMeasure(II)V

    .line 201
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    iget-object p1, p1, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->rect2:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method
