.class public Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;
.super Landroid/widget/ImageView;
.source "CaptionContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/CaptionContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BounceableImageView"
.end annotation


# instance fields
.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final scale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x3e4ccccd    # 0.2f

    .line 1161
    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;-><init>(Landroid/content/Context;F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;F)V
    .locals 0

    .line 1164
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1168
    new-instance p1, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 1165
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;->scale:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1179
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;->scale:F

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 1180
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1181
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 1182
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1172
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 1173
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$BounceableImageView;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method
