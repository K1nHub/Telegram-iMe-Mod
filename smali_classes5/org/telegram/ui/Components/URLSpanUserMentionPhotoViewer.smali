.class public Lorg/telegram/ui/Components/URLSpanUserMentionPhotoViewer;
.super Lorg/telegram/ui/Components/URLSpanUserMention;
.source "URLSpanUserMentionPhotoViewer.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    const/4 p2, 0x2

    .line 16
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/URLSpanUserMention;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/URLSpanUserMention;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 v0, -0x1

    .line 22
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
