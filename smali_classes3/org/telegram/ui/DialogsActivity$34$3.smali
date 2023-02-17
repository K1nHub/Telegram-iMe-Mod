.class Lorg/telegram/ui/DialogsActivity$34$3;
.super Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$34;->didSelectTab(Lcom/smedialink/ui/topics/TopicView;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$34;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$34;Landroid/view/View;II)V
    .locals 0

    .line 6587
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .line 6590
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;->dismiss()V

    .line 6591
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 6594
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$26202(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    .line 6595
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$26302(Lorg/telegram/ui/DialogsActivity;[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;)[Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 6596
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6597
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6598
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$26502(Lorg/telegram/ui/DialogsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 6600
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$26502(Lorg/telegram/ui/DialogsActivity;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 6601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6602
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$9200(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Lorg/telegram/ui/Components/AnimationProperties;->PAINT_ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6603
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 6604
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6605
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/DialogsActivity$34$3$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DialogsActivity$34$3$1;-><init>(Lorg/telegram/ui/DialogsActivity$34$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6616
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$26500(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 6617
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 6618
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$34$3;->this$1:Lorg/telegram/ui/DialogsActivity$34;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$34;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    return-void
.end method
