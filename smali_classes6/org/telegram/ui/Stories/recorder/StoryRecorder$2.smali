.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;
.super Ljava/lang/Object;
.source "StoryRecorder.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 1530
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4

    .line 1534
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_0

    .line 1535
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 1536
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iget v3, v1, Landroid/graphics/Insets;->top:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1537
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iget v3, v1, Landroid/graphics/Insets;->bottom:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1538
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iget v3, v1, Landroid/graphics/Insets;->left:I

    invoke-static {v2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5502(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1539
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    iget v1, v1, Landroid/graphics/Insets;->right:I

    invoke-static {v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5602(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    goto :goto_0

    .line 1541
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1542
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1202(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1543
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5502(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1544
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$5602(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)I

    .line 1546
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$2;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    if-lt p1, v0, :cond_1

    .line 1548
    sget-object p1, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    return-object p1

    .line 1550
    :cond_1
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method
