.class Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;
.super Ljava/lang/Object;
.source "AnimatedTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Part"
.end annotation


# instance fields
.field layout:Landroid/text/StaticLayout;

.field left:F

.field offset:F

.field toOppositeIndex:I

.field width:F


# direct methods
.method public constructor <init>(Landroid/text/StaticLayout;FI)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->layout:Landroid/text/StaticLayout;

    .line 69
    iput p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->offset:F

    .line 70
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->toOppositeIndex:I

    const/4 p2, 0x0

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, p3

    :goto_1
    iput v0, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->left:F

    if-eqz p1, :cond_3

    .line 72
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1, p2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p3

    :cond_3
    :goto_2
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    return-void
.end method
