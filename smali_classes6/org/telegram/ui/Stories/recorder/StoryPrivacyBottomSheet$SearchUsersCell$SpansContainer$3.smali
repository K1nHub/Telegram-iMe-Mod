.class Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StoryPrivacyBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->removeAllSpans(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

.field final synthetic val$spans:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;Ljava/util/ArrayList;)V
    .locals 0

    .line 3530
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;->this$2:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;->val$spans:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 p1, 0x0

    move v0, p1

    .line 3533
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;->val$spans:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3534
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;->this$2:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;->val$spans:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3536
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;->this$2:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->access$14500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3537
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;->this$2:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->access$14602(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 3538
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;->this$2:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->access$14702(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;Z)Z

    .line 3539
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;->this$2:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$13000(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setAllowDrawCursor(Z)V

    .line 3540
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;->this$2:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$14100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3541
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;->this$2:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$14100(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3543
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;->this$2:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$14200(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3544
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;->this$2:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 3545
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer$3;->this$2:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$SpansContainer;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$14202(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Z)Z

    :cond_2
    return-void
.end method
