.class Lorg/telegram/ui/Cells/BrightnessControlCell$1;
.super Lorg/telegram/ui/Components/SeekBarView;
.source "BrightnessControlCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/BrightnessControlCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/BrightnessControlCell;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 50
    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/SeekBarView;-><init>(Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 56
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/SeekBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
