.class Lorg/telegram/ui/ProfileActivity$34;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/StoryRecorder$ClosingViewProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->lambda$createFloatingActionButton$37(JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity;)V
    .locals 0

    .line 5532
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView(J)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
    .locals 2

    .line 5544
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5547
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromAvatarImage(Lorg/telegram/ui/ProfileActivity$AvatarImageView;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object p1

    return-object p1
.end method

.method public preLayout(JLjava/lang/Runnable;)V
    .locals 2

    .line 5535
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$34700(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setHasStories(Z)V

    .line 5536
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ProfileActivity;->getDialogId()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 5537
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$34;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$34800(Lorg/telegram/ui/ProfileActivity;)V

    :cond_0
    const-wide/16 p1, 0x1e

    .line 5539
    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method
