.class Lorg/telegram/ui/ChatActivity$113;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->updatePinnedMessageView(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$animateButton:Z

.field final synthetic val$animateText:Z

.field final synthetic val$buttonTextView:Lorg/telegram/ui/ChatActivity$PinnedMessageButton;

.field final synthetic val$messageTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

.field final synthetic val$nameTextView:Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

.field final synthetic val$noImage:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;ZLorg/telegram/ui/ActionBar/SimpleTextView;ZLorg/telegram/ui/ChatActivity$PinnedMessageButton;Z)V
    .locals 0

    .line 24811
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$113;->val$nameTextView:Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$113;->val$animateText:Z

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$113;->val$messageTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    iput-boolean p5, p0, Lorg/telegram/ui/ChatActivity$113;->val$animateButton:Z

    iput-object p6, p0, Lorg/telegram/ui/ChatActivity$113;->val$buttonTextView:Lorg/telegram/ui/ChatActivity$PinnedMessageButton;

    iput-boolean p7, p0, Lorg/telegram/ui/ChatActivity$113;->val$noImage:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    .line 24814
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    .line 24815
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24816
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$41700(Lorg/telegram/ui/ChatActivity;)I

    move-result p1

    .line 24817
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$46600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object v4

    add-int/lit8 v5, p1, -0x1

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$46700(Lorg/telegram/ui/ChatActivity;)[I

    move-result-object v6

    aget v6, v6, v2

    sub-int/2addr p1, v6

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {v4, p1, v2}, Lorg/telegram/ui/Components/NumberTextView;->setNumber(IZ)V

    goto :goto_0

    .line 24819
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 24821
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 24822
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$32100(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 24823
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$32100(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 24824
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46600(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/NumberTextView;

    move-result-object p1

    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$46800(Lorg/telegram/ui/ChatActivity;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 24825
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->val$nameTextView:Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 24826
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$113;->val$animateText:Z

    if-nez p1, :cond_1

    .line 24827
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->val$nameTextView:Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 24829
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$113;->val$animateText:Z

    if-nez p1, :cond_2

    .line 24830
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->val$messageTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 24832
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$113;->val$animateButton:Z

    if-nez p1, :cond_3

    .line 24833
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->val$buttonTextView:Lorg/telegram/ui/ChatActivity$PinnedMessageButton;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 24835
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46900(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 24836
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46900(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 24837
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 24838
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 24839
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 24840
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 24841
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 24842
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 24843
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$32100(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$32100(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v4

    aget-object v4, v4, v2

    aput-object v4, p1, v3

    .line 24844
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$32100(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$113;->val$messageTextView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    aput-object v4, p1, v2

    .line 24845
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$32100(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24846
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$47000(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$PinnedMessageButton;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$47000(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$PinnedMessageButton;

    move-result-object v4

    aget-object v4, v4, v2

    aput-object v4, p1, v3

    .line 24847
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$47000(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$PinnedMessageButton;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$113;->val$buttonTextView:Lorg/telegram/ui/ChatActivity$PinnedMessageButton;

    aput-object v4, p1, v2

    .line 24848
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$47000(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$PinnedMessageButton;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24849
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->val$nameTextView:Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$46900(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    move-result-object v4

    aget-object v4, v4, v2

    if-eq p1, v4, :cond_4

    .line 24850
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46900(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v4}, Lorg/telegram/ui/ChatActivity;->access$46900(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    move-result-object v4

    aget-object v4, v4, v2

    aput-object v4, p1, v3

    .line 24851
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46900(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    move-result-object p1

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$113;->val$nameTextView:Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    aput-object v4, p1, v2

    .line 24852
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46900(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/ChatActivity$TrackingWidthSimpleTextView;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24854
    :cond_4
    iget-boolean p1, p0, Lorg/telegram/ui/ChatActivity$113;->val$noImage:Z

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    .line 24855
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 24856
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24858
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    aget-object p1, p1, v3

    .line 24859
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v6}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v6

    aget-object v6, v6, v2

    aput-object v6, v5, v3

    .line 24860
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v5

    aput-object p1, v5, v2

    .line 24861
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 24862
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 24863
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 24864
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$46500(Lorg/telegram/ui/ChatActivity;)[Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    aget-object p1, p1, v3

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24866
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1}, Lorg/telegram/ui/ChatActivity;->access$31900(Lorg/telegram/ui/ChatActivity;)[Landroid/animation/AnimatorSet;

    move-result-object p1

    aput-object v4, p1, v2

    .line 24867
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$113;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p1, v2}, Lorg/telegram/ui/ChatActivity;->access$31802(Lorg/telegram/ui/ChatActivity;Z)Z

    return-void
.end method
