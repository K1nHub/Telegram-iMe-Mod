.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$3;
.super Ljava/lang/Object;
.source "StoryRecorder.java"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/FlashViews$Invertable;


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

    .line 1810
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 0

    return-void
.end method

.method public setInvert(F)V
    .locals 4

    .line 1813
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->setLightNavigationBar(Landroid/view/View;Z)V

    .line 1814
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$3;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$400(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-result-object v0

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->setLightStatusBar(Landroid/view/View;Z)V

    return-void
.end method
