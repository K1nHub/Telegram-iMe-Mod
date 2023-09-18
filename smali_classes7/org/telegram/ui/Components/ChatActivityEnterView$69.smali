.class Lorg/telegram/ui/Components/ChatActivityEnterView$69;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/EmojiView$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createEmojiView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field initialOffset:I

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field wasExpanded:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 9963
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private allowDragging()Z
    .locals 1

    .line 10033
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView;->areThereAnyStickers()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public onDrag(I)V
    .locals 3

    .line 10020
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->allowDragging()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 10023
    :cond_0
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17700(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    .line 10024
    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->initialOffset:I

    add-int/2addr p1, v1

    const/4 v1, 0x0

    .line 10025
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17600(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v1

    sub-int/2addr v1, v0

    neg-int v1, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 10026
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/EmojiView;->setTranslationY(F)V

    .line 10027
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 10028
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17600(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    sub-int/2addr v2, v0

    neg-int v0, v2

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17902(Lorg/telegram/ui/Components/ChatActivityEnterView;F)F

    .line 10029
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public onDragCancel()V
    .locals 4

    .line 10011
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 10014
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10502(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 10015
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->wasExpanded:Z

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    return-void
.end method

.method public onDragEnd(F)V
    .locals 2

    .line 9998
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->allowDragging()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 10001
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10502(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 10002
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->wasExpanded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gez v0, :cond_4

    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->wasExpanded:Z

    if-nez v0, :cond_2

    const/16 v0, -0xc8

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-lez p1, :cond_4

    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->wasExpanded:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    const v0, 0x3f19999a    # 0.6f

    cmpg-float p1, p1, v0

    if-lez p1, :cond_4

    :cond_3
    iget-boolean p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->wasExpanded:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {p1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17900(Lorg/telegram/ui/Components/ChatActivityEnterView;)F

    move-result p1

    const v0, 0x3ecccccd    # 0.4f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_5

    .line 10003
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->wasExpanded:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    goto :goto_0

    .line 10005
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->wasExpanded:Z

    invoke-virtual {p1, v0, v1, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->setStickersExpanded(ZZZ)V

    :goto_0
    return-void
.end method

.method public onDragStart()V
    .locals 6

    .line 9970
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->allowDragging()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9973
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9974
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 9976
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$10502(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 9977
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->wasExpanded:Z

    .line 9978
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1902(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)Z

    .line 9979
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->stopAllHeavyOperations:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 9980
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :cond_2
    sub-int/2addr v1, v4

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->chat_composeShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17602(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 9981
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2000(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 9982
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17600(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    const/16 v3, 0x78

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    if-le v5, v4, :cond_3

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17700(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17800(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17602(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 9984
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$17600(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9985
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 9986
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 9987
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView;->shouldDrawBackground:Z

    if-eqz v1, :cond_5

    .line 9988
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$8700(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ChatActivityEnterView$ScrimDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ScrimDrawable;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 9990
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->initialOffset:I

    .line 9991
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 9992
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$69;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$300(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onStickersExpandedChange()V

    :cond_6
    return-void
.end method
