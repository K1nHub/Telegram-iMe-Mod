.class Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate$1;
.super Lorg/telegram/ui/Components/AvatarsImageView;
.source "ChatActivityMemberRequestsDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/ui/Delegates/ChatActivityMemberRequestsDelegate;Landroid/content/Context;Z)V
    .locals 0

    .line 80
    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 83
    iget-object p1, p0, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    iget p1, p1, Lorg/telegram/ui/Components/AvatarsDrawable;->count:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x14

    add-int/lit8 p1, p1, 0x18

    .line 84
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/AvatarsImageView;->onMeasure(II)V

    return-void
.end method
