.class Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;->onShow(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V
    .locals 0

    .line 3969
    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 3972
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->startAllHeavyOperations:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3973
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$7900(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/NotificationCenter;->onAnimationFinish(I)V

    .line 3974
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/NotificationCenter;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3975
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    invoke-static {p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$1600(Lorg/telegram/ui/SelectAnimatedEmojiDialog;)V

    .line 3976
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->access$8000(Lorg/telegram/ui/SelectAnimatedEmojiDialog;F)V

    const/4 p1, 0x0

    .line 3977
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3978
    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object v1, v1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiGridView:Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiListView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3979
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 3980
    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3982
    :cond_0
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-ge v3, p1, :cond_1

    .line 3983
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 3984
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 3985
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3987
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$21;->this$0:Lorg/telegram/ui/SelectAnimatedEmojiDialog;

    iget-object p1, p1, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->emojiTabs:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object p1, p1, Lorg/telegram/ui/Components/EmojiTabsStrip;->contentView:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method
