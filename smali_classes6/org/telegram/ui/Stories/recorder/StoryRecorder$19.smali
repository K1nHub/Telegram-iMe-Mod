.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$19;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "StoryRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->lambda$showPremiumPeriodBulletin$53()V
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

    .line 4143
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$19;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 4144
    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return-void
.end method


# virtual methods
.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    .line 4152
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$19;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 4147
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-object p1
.end method
