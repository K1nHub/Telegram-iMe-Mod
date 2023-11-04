.class public Lorg/telegram/messenger/CodeHighlighting$Span;
.super Landroid/text/style/MetricAffectingSpan;
.source "CodeHighlighting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/CodeHighlighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Span"
.end annotation


# instance fields
.field public final code:Ljava/lang/String;

.field public final currentType:I

.field public final decrementSize:F

.field public final lng:Ljava/lang/String;

.field public final smallerSize:Z

.field public final style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;


# direct methods
.method public constructor <init>(ZILorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 66
    iput-boolean p1, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->smallerSize:Z

    .line 68
    iput-object p4, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->lng:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->code:Ljava/lang/String;

    const/high16 p1, 0x40000000    # 2.0f

    if-nez p5, :cond_0

    .line 71
    iput p1, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->decrementSize:F

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p4

    const/16 v0, 0x78

    if-le p4, v0, :cond_1

    const/high16 p1, 0x40a00000    # 5.0f

    .line 73
    iput p1, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->decrementSize:F

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result p4

    const/16 p5, 0x32

    if-le p4, p5, :cond_2

    const/high16 p1, 0x40400000    # 3.0f

    .line 75
    iput p1, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->decrementSize:F

    goto :goto_0

    .line 77
    :cond_2
    iput p1, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->decrementSize:F

    .line 79
    :goto_0
    iput p2, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->currentType:I

    .line 80
    iput-object p3, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 98
    iget-boolean v0, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->smallerSize:Z

    if-eqz v0, :cond_0

    .line 99
    sget v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->decrementSize:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 101
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->currentType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    .line 102
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 104
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextOut:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 106
    :cond_2
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messageTextIn:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 108
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    if-eqz v0, :cond_3

    .line 109
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->applyStyle(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 111
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v0, 0x0

    .line 112
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :goto_1
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    .line 85
    iget-boolean v0, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->smallerSize:Z

    if-eqz v0, :cond_0

    .line 86
    sget v0, Lorg/telegram/messenger/SharedConfig;->fontSize:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->decrementSize:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 89
    iget-object v0, p0, Lorg/telegram/messenger/CodeHighlighting$Span;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->applyStyle(Landroid/text/TextPaint;)V

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    return-void
.end method
