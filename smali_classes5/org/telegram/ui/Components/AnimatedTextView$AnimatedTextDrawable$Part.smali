.class Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;
.super Ljava/lang/Object;
.source "AnimatedTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Part"
.end annotation


# instance fields
.field layout:Landroid/text/StaticLayout;

.field left:F

.field offset:F

.field toOppositeIndex:I

.field width:F


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;Landroid/text/StaticLayout;FI)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->layout:Landroid/text/StaticLayout;

    .line 59
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->offset:F

    .line 60
    iput p4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->toOppositeIndex:I

    const/4 p1, 0x0

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 61
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p4

    if-gtz p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result p4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p4, 0x0

    :goto_1
    iput p4, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->left:F

    if-eqz p2, :cond_3

    .line 62
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p4

    if-gtz p4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p3

    :cond_3
    :goto_2
    iput p3, p0, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable$Part;->width:F

    return-void
.end method
