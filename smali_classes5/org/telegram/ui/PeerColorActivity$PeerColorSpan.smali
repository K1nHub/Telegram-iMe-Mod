.class public Lorg/telegram/ui/PeerColorActivity$PeerColorSpan;
.super Landroid/text/style/ReplacementSpan;
.source "PeerColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerColorSpan"
.end annotation


# instance fields
.field public drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

.field private size:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 1

    .line 1860
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    const/16 v0, 0x15

    .line 1857
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorSpan;->size:I

    if-eqz p1, :cond_0

    .line 1861
    invoke-static {p2, p3}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->fromProfile(II)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->from(II)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorSpan;->drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    .line 1879
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorSpan;->drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    if-eqz p2, :cond_0

    add-int/2addr p6, p8

    .line 1880
    div-int/lit8 p6, p6, 0x2

    const/4 p3, 0x3

    .line 1881
    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p3, p5

    float-to-int p3, p3

    iget p4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorSpan;->size:I

    sub-int p4, p6, p4

    const/4 p7, 0x5

    invoke-static {p7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p7

    int-to-float p7, p7

    add-float/2addr p5, p7

    iget p7, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorSpan;->size:I

    int-to-float p8, p7

    add-float/2addr p5, p8

    float-to-int p5, p5

    add-int/2addr p6, p7

    invoke-virtual {p2, p3, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1882
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorSpan;->drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    const/4 p1, 0x3

    .line 1874
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iget p3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorSpan;->size:I

    add-int/2addr p2, p3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    add-int/2addr p2, p1

    return p2
.end method

.method public setSize(I)Lorg/telegram/ui/PeerColorActivity$PeerColorSpan;
    .locals 3

    .line 1865
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorSpan;->drawable:Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    if-eqz v0, :cond_0

    int-to-float v1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 1866
    invoke-virtual {v0, v1}, Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;->setRadius(F)Lorg/telegram/ui/PeerColorActivity$PeerColorDrawable;

    .line 1867
    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorSpan;->size:I

    :cond_0
    return-object p0
.end method
