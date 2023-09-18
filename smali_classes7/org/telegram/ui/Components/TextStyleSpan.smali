.class public Lorg/telegram/ui/Components/TextStyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextStyleSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;
    }
.end annotation


# instance fields
.field private color:I

.field private style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

.field private textSize:I


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Components/TextStyleSpan;-><init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;II)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;II)V
    .locals 0

    .line 113
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    if-lez p2, :cond_0

    .line 116
    iput p2, p0, Lorg/telegram/ui/Components/TextStyleSpan;->textSize:I

    .line 118
    :cond_0
    iput p3, p0, Lorg/telegram/ui/Components/TextStyleSpan;->color:I

    return-void
.end method


# virtual methods
.method public getStyleFlags()I
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    iget v0, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    return v0
.end method

.method public getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    return-object v0
.end method

.method public isSpoiler()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    iget v0, v0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setSpoilerRevealed(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 147
    iget-object p1, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    iget v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    iget v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 178
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->textSize:I

    if-eqz v0, :cond_0

    int-to-float v0, v0

    .line 179
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 181
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->color:I

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 184
    :cond_1
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 185
    iget-object v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->applyStyle(Landroid/text/TextPaint;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    .line 169
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->textSize:I

    if-eqz v0, :cond_0

    int-to-float v0, v0

    .line 170
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 173
    iget-object v0, p0, Lorg/telegram/ui/Components/TextStyleSpan;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->applyStyle(Landroid/text/TextPaint;)V

    return-void
.end method
