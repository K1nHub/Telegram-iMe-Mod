.class public final Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$initStarTextureView$1;
.super Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;
.source "FragmentPremiumFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->initStarTextureView()Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 214
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 217
    invoke-super {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 222
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setPaused(Z)V

    .line 223
    invoke-super {p0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->onDetachedFromWindow()V

    return-void
.end method
