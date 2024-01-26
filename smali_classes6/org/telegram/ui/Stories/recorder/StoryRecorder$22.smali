.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;
.super Lorg/telegram/ui/Stories/recorder/PaintView;
.source "StoryRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;->createPhotoPaintView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private multitouch:Z

.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method public static synthetic $r8$lambda$Rr6-id7P_1YZvecMjJz-mEvzPrw(Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->lambda$onAudioSelect$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vQad_h4fSzlRdBm_aqXdCP99f9A()V
    .locals 0

    invoke-static {}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->lambda$onSwitchSegmentedAnimation$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$vt5x4n24xdhjXgDnuxhVeykRC-g(Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->lambda$showTrash$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$y3qGiOEADatG8GDv3w-zsfAtYrQ(Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->lambda$onSwitchSegmentedAnimation$2(Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;ZLjava/io/File;ZLorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/ui/Stories/recorder/StoryEntry;IILorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    move-object/from16 v16, p17

    move-object/from16 v17, p18

    move-object/from16 v18, p19

    move-object/from16 v19, p20

    move-object/from16 v20, p21

    move-object/from16 v21, v0

    move-object/from16 v1, p1

    .line 4306
    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v20}, Lorg/telegram/ui/Stories/recorder/PaintView;-><init>(Landroid/content/Context;ZLjava/io/File;ZLorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/app/Activity;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILjava/util/ArrayList;Lorg/telegram/ui/Stories/recorder/StoryEntry;IILorg/telegram/messenger/MediaController$CropState;Ljava/lang/Runnable;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Stories/recorder/PreviewView$TextureViewHolder;)V

    return-void
.end method

.method private synthetic lambda$onAudioSelect$1(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 4421
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onSwitchSegmentedAnimation$2(Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V
    .locals 1

    const/4 v0, 0x1

    .line 4537
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->onSwitchSegmentedAnimationStarted(Z)V

    return-void
.end method

.method private static synthetic lambda$onSwitchSegmentedAnimation$3()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$showTrash$0()V
    .locals 2

    .line 4359
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TrashView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected checkAudioPermission(Ljava/lang/Runnable;)Z
    .locals 5

    .line 4435
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 4438
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/16 v4, 0x73

    if-lt v0, v2, :cond_1

    .line 4439
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 4440
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 4441
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return v3

    :cond_1
    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    .line 4444
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/app/Activity;

    move-result-object v0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 4445
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/app/Activity;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 4446
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12402(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return v3

    :cond_2
    return v1
.end method

.method public dismiss()V
    .locals 3

    .line 4394
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    .line 4395
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method protected editSelectedTextEntity()V
    .locals 3

    .line 4387
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->editText:Lorg/telegram/ui/Components/EditTextEmoji;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextEmoji;->closeKeyboard()V

    .line 4388
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    .line 4389
    invoke-super {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->editSelectedTextEntity()V

    return-void
.end method

.method protected onAudioSelect(Lorg/telegram/messenger/MessageObject;)V
    .locals 4

    .line 4414
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupAudio(Lorg/telegram/messenger/MessageObject;Z)V

    .line 4415
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$10200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4416
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iget-object p1, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->audioPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v1

    .line 4417
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PlayPauseButton;->drawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isPlaying()Z

    move-result v2

    xor-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    .line 4418
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4419
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;Z)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4423
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4425
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->switchToEditMode(IZ)V

    return-void
.end method

.method public onCreateRound(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V
    .locals 1

    .line 4454
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4455
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->attachRoundView(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V

    .line 4457
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4458
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setHasRoundVideo(Z)V

    :cond_1
    return-void
.end method

.method public onDeleteRound()V
    .locals 3

    .line 4471
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4472
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewView;->setupRound(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/ui/Components/Paint/Views/RoundView;Z)V

    .line 4474
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4475
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/PaintView;->deleteRound()V

    .line 4477
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4478
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->setHasRoundVideo(Z)V

    .line 4480
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4481
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 4483
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4485
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->round:Ljava/io/File;

    .line 4487
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 4489
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4491
    :catch_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->roundThumb:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public onDeselectRound(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V
    .locals 1

    .line 4550
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TimelineView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4551
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TimelineView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectRound(Z)V

    :cond_0
    return-void
.end method

.method public onEntityDragEnd(Z)V
    .locals 4

    .line 4328
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->isEntityDeletable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move p1, v1

    .line 4331
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 4332
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4333
    invoke-virtual {p0, v1, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->showTrash(ZZ)V

    if-eqz p1, :cond_1

    .line 4335
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->removeCurrentEntity()V

    .line 4337
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Stories/recorder/PaintView;->onEntityDragEnd(Z)V

    .line 4338
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->multitouch:Z

    return-void
.end method

.method public onEntityDragMultitouchEnd()V
    .locals 3

    const/4 v0, 0x0

    .line 4375
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->multitouch:Z

    .line 4376
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->isEntityDeletable()Z

    move-result v1

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->showTrash(ZZ)V

    .line 4377
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->show(ZZLandroid/view/View;)V

    return-void
.end method

.method public onEntityDragMultitouchStart()V
    .locals 2

    const/4 v0, 0x1

    .line 4368
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->multitouch:Z

    .line 4369
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showReactionsLayout(Z)V

    .line 4370
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->showTrash(ZZ)V

    return-void
.end method

.method public onEntityDragStart()V
    .locals 4

    .line 4343
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showReactionsLayout(Z)V

    .line 4344
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 4345
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4346
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/recorder/PaintView;->isEntityDeletable()Z

    move-result v0

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->showTrash(ZZ)V

    return-void
.end method

.method public onEntityDragTrash(Z)V
    .locals 2

    .line 4382
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TrashView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Stories/recorder/TrashView;->onDragInfo(ZZ)V

    return-void
.end method

.method public onEntityDraggedBottom(Z)V
    .locals 3

    .line 4322
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->updateCaption(Ljava/lang/CharSequence;)V

    .line 4323
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->multitouch:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->show(ZZLandroid/view/View;)V

    return-void
.end method

.method public onEntityDraggedTop(Z)V
    .locals 3

    .line 4309
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$7900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Lorg/telegram/ui/Stories/recorder/PreviewHighlightView;->show(ZZLandroid/view/View;)V

    return-void
.end method

.method public onEntityHandleTouched()V
    .locals 2

    .line 4430
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PaintView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->showReactionsLayout(Z)V

    return-void
.end method

.method protected onGalleryClick()V
    .locals 2

    .line 4314
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    .line 4315
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 4316
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12100(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 4317
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$2800(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    return-void
.end method

.method protected onOpenCloseStickersAlert(Z)V
    .locals 3

    .line 4400
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4401
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->updatePauseReason(IZ)V

    .line 4402
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4403
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$12200(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PlayPauseButton;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/PlayPauseButton;->drawable:Lorg/telegram/ui/Components/PlayPauseDrawable;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6700(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/PreviewView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/PreviewView;->isPlaying()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/PlayPauseDrawable;->setPause(ZZ)V

    .line 4406
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4407
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    iput-boolean p1, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->ignoreTouches:Z

    .line 4408
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->ignore(Z)V

    :cond_1
    return-void
.end method

.method public onSelectRound(Lorg/telegram/ui/Components/Paint/Views/RoundView;)V
    .locals 1

    .line 4543
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TimelineView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4544
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8900(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TimelineView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Stories/recorder/TimelineView;->selectRound(Z)V

    :cond_0
    return-void
.end method

.method public onSwitchSegmentedAnimation(Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 4501
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getThanosEffect()Lorg/telegram/ui/Components/ThanosEffect;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4503
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->onSwitchSegmentedAnimationStarted(Z)V

    return-void

    .line 4506
    :cond_1
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->getSegmentedOutBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    .line 4508
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->onSwitchSegmentedAnimationStarted(Z)V

    return-void

    .line 4511
    :cond_2
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 4512
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 4514
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRotation()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v5, :cond_3

    .line 4515
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    .line 4516
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v8, v5, v7

    mul-float/2addr v8, v8

    div-float v9, v6, v7

    mul-float/2addr v9, v9

    add-float/2addr v8, v9

    float-to-double v8, v8

    .line 4517
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v9, v8, v7

    float-to-int v10, v9

    .line 4519
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 4520
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4521
    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    .line 4522
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRotation()F

    move-result v12

    invoke-virtual {v11, v12, v8, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    sub-float v5, v9, v5

    div-float/2addr v5, v7

    sub-float/2addr v9, v6

    div-float/2addr v9, v7

    const/4 v6, 0x0

    .line 4523
    invoke-virtual {v11, v2, v5, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4524
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    div-float v2, v3, v7

    mul-float/2addr v2, v2

    div-float v5, v4, v7

    mul-float/2addr v5, v5

    add-float/2addr v2, v5

    float-to-double v5, v2

    .line 4527
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    mul-float/2addr v2, v7

    sub-float v3, v2, v3

    neg-float v3, v3

    div-float v6, v3, v7

    sub-float v3, v2, v4

    neg-float v3, v3

    div-float/2addr v3, v7

    move v4, v2

    move v5, v3

    move v3, v4

    move-object v2, v10

    goto :goto_0

    :cond_3
    move v5, v6

    .line 4533
    :goto_0
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 4534
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v8

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v9

    div-float/2addr v3, v7

    div-float/2addr v4, v7

    invoke-virtual {v1, v8, v9, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 4535
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    add-float/2addr v3, v4

    add-float/2addr v3, v6

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$ContainerView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v6}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$1000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getY()F

    move-result v6

    add-float/2addr v4, v6

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getY()F

    move-result v6

    add-float/2addr v4, v6

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4536
    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Paint/Views/PhotoView;)V

    sget-object p1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Stories/recorder/StoryRecorder$22$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Components/ThanosEffect;->animate(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTryDeleteRound()V
    .locals 1

    .line 4464
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4465
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$6500(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CaptionStory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CaptionStory;->showRemoveRoundAlert()V

    :cond_0
    return-void
.end method

.method public showTrash(ZZ)V
    .locals 4

    const-wide/16 v0, 0xb4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 4351
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TrashView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4352
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TrashView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 4353
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TrashView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4354
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TrashView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 4356
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TrashView;

    move-result-object p1

    invoke-virtual {p1, v3, p2}, Lorg/telegram/ui/Stories/recorder/TrashView;->onDragInfo(ZZ)V

    .line 4357
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TrashView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4358
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$8000(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/TrashView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$22$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$22;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 4360
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    if-eqz p2, :cond_1

    const-wide/16 v0, 0x1f4

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    return-void
.end method
