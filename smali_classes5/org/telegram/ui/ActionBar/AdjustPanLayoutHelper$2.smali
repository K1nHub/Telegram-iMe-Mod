.class Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;
.super Ljava/lang/Object;
.source "AdjustPanLayoutHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 7

    .line 89
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->smoothKeyboard:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->onDetach()V

    return v1

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->access$000(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 94
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->startOffset()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    iget v4, v3, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousHeight:I

    iget v5, v3, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousStartOffset:I

    sub-int v5, v4, v5

    const/4 v6, 0x0

    if-eq v2, v5, :cond_6

    if-eq v0, v4, :cond_6

    iget-object v2, v3, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_1

    goto/16 :goto_2

    .line 104
    :cond_1
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->heightAnimationEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    iget v2, v2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousHeight:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    if-ge v2, v3, :cond_2

    goto :goto_1

    .line 112
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    iget v3, v2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousHeight:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    iget v3, v2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousContentHeight:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->access$100(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    if-ne v3, v2, :cond_4

    .line 113
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->access$100(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->isKeyboardVisible:Z

    .line 114
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    iget v2, v1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousHeight:I

    iget-boolean v3, v1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->isKeyboardVisible:Z

    invoke-static {v1, v2, v0, v3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->access$300(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;IIZ)V

    .line 115
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    iput v0, v1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousHeight:I

    .line 116
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->access$100(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousContentHeight:I

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->startOffset()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousStartOffset:I

    return v6

    .line 121
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    iput v0, v1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousHeight:I

    .line 122
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->access$100(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, v1, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousContentHeight:I

    .line 123
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->startOffset()I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousStartOffset:I

    return v6

    .line 105
    :cond_5
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    iput v0, v2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousHeight:I

    .line 106
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->access$100(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, v2, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousContentHeight:I

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->startOffset()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousStartOffset:I

    .line 108
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-static {v0, v6}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->access$202(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;Z)Z

    return v1

    .line 95
    :cond_6
    :goto_2
    iget-object v2, v3, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->animator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_7

    .line 96
    iput v0, v3, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousHeight:I

    .line 97
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->access$100(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iput v0, v3, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousContentHeight:I

    .line 98
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->startOffset()I

    move-result v2

    iput v2, v0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->previousStartOffset:I

    .line 99
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper$2;->this$0:Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;

    invoke-static {v0, v6}, Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;->access$202(Lorg/telegram/ui/ActionBar/AdjustPanLayoutHelper;Z)Z

    :cond_7
    return v1
.end method
