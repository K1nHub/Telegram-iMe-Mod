.class Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;
.super Landroid/widget/FrameLayout;
.source "InviteLinkBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/InviteLinkBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_chatInviteExported;Lorg/telegram/tgnet/TLRPC$ChatFull;Ljava/util/HashMap;Lorg/telegram/ui/ActionBar/BaseFragment;JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private fullHeight:Z

.field private rect:Landroid/graphics/RectF;

.field private statusBarOpen:Ljava/lang/Boolean;

.field final synthetic this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Landroid/content/Context;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method private updateLightStatusBar(Z)V
    .locals 6

    .line 213
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->statusBarOpen:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    const-string v1, "dialogBackground"

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$1900(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v0

    const v1, 0x3f389375    # 0.721f

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 217
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    const-string v5, "actionBarDefault"

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$2000(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Ljava/lang/String;)I

    move-result v4

    const/high16 v5, 0x33000000

    invoke-static {v4, v5}, Lorg/telegram/ui/ActionBar/Theme;->blendOver(II)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->computePerceivedBrightness(I)F

    move-result v4

    cmpl-float v1, v4, v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 218
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->statusBarOpen:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v2

    .line 219
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/Window;Z)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 174
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$000(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$500(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 175
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    const/16 v2, 0x24

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$600(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v2

    add-int/2addr v1, v2

    .line 178
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x15

    if-lt v2, v5, :cond_2

    .line 179
    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v0, v2

    sub-int/2addr v1, v2

    .line 182
    iget-boolean v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->fullHeight:Z

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v2}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$700(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v2

    add-int/2addr v2, v0

    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    mul-int/lit8 v6, v5, 0x2

    if-ge v2, v6, :cond_0

    mul-int/lit8 v2, v5, 0x2

    sub-int/2addr v2, v0

    .line 184
    iget-object v6, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$800(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v6

    sub-int/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr v0, v2

    add-int/2addr v1, v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 187
    sget v5, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v5, v5

    div-float/2addr v2, v5

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v4, v2

    goto :goto_0

    :cond_0
    move v2, v4

    .line 189
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v5}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$900(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v5

    add-int/2addr v5, v0

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    if-ge v5, v6, :cond_1

    sub-int v5, v6, v0

    .line 190
    iget-object v7, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$1000(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v7

    sub-int/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v3

    move v2, v4

    .line 195
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$1100(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v6, v3, v0, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 196
    iget-object v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$1200(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    cmpl-float v1, v2, v4

    const-string v4, "dialogBackground"

    if-eqz v1, :cond_3

    .line 199
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    iget-object v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->rect:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v6}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$1300(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v7}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$1400(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v7

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$1500(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v9}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$1600(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v9

    add-int/2addr v9, v0

    const/16 v0, 0x18

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v9, v0

    int-to-float v0, v9

    invoke-virtual {v1, v6, v7, v8, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->rect:Landroid/graphics/RectF;

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sget-object v2, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_3
    if-lez v5, :cond_4

    .line 205
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$1700(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v0

    int-to-float v7, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int/2addr v0, v5

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$1800(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v9, v0

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    int-to-float v10, v0

    sget-object v11, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 208
    :cond_4
    sget p1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    div-int/lit8 p1, p1, 0x2

    if-le v5, p1, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-direct {p0, v3}, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->updateLightStatusBar(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$000(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$000(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 135
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 160
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 161
    iget-object p1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {p1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$400(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 148
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x15

    if-lt v0, v2, :cond_0

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$102(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Z)Z

    .line 151
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$200(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    iget-object v3, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v3}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$300(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0, v4}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$102(Lorg/telegram/ui/Components/InviteLinkBottomSheet;Z)Z

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 154
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 155
    iput-boolean v1, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->fullHeight:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/telegram/ui/Components/InviteLinkBottomSheet$1;->this$0:Lorg/telegram/ui/Components/InviteLinkBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/InviteLinkBottomSheet;->access$100(Lorg/telegram/ui/Components/InviteLinkBottomSheet;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
