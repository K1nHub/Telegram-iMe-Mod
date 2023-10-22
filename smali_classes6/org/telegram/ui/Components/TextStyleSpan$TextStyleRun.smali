.class public Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;
.super Ljava/lang/Object;
.source "TextStyleSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/TextStyleSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextStyleRun"
.end annotation


# instance fields
.field public end:I

.field public flags:I

.field public start:I

.field public urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iget v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    iput v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 39
    iget v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    iput v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->start:I

    .line 40
    iget v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    iput v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->end:I

    .line 41
    iget-object p1, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iput-object p1, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    return-void
.end method


# virtual methods
.method public applyStyle(Landroid/text/TextPaint;)V
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 61
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 66
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 67
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 72
    :goto_1
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    .line 73
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_archivePullDownBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    :cond_3
    return-void
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 78
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_4

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const-string v0, "fonts/rmediumitalic.ttf"

    .line 81
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_1
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    const-string v0, "fonts/rmedium.ttf"

    .line 83
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_2
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    const-string v0, "fonts/ritalic.ttf"

    .line 85
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 79
    :cond_4
    :goto_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public merge(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V
    .locals 2

    .line 45
    iget v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    iget v1, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    if-nez v0, :cond_0

    iget-object p1, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    if-eqz p1, :cond_0

    .line 47
    iput-object p1, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    :cond_0
    return-void
.end method

.method public replace(Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V
    .locals 1

    .line 52
    iget v0, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    iput v0, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->flags:I

    .line 53
    iget-object p1, p1, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    iput-object p1, p0, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->urlEntity:Lorg/telegram/tgnet/TLRPC$MessageEntity;

    return-void
.end method
