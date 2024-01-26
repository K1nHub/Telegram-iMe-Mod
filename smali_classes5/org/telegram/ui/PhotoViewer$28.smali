.class Lorg/telegram/ui/PhotoViewer$28;
.super Lorg/telegram/ui/Components/CaptionPhotoViewer;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer;->setParentActivity(Landroid/app/Activity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Ljava/lang/Runnable;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 6309
    iput-object v0, v8, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/CaptionPhotoViewer;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/BlurringShader$BlurManager;Ljava/lang/Runnable;)V

    .line 6310
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, v8, Lorg/telegram/ui/PhotoViewer$28;->path:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method protected captionLimitToast()Z
    .locals 2

    .line 6339
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$19800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/Bulletin;->getVisibleBulletin()Lorg/telegram/ui/Components/Bulletin;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v1}, Lorg/telegram/ui/PhotoViewer;->access$19800(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 6342
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/PhotoViewer$FrameLayoutDrawer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/PhotoViewer;->showCaptionLimitBulletin(Landroid/widget/FrameLayout;)Z

    move-result v0

    return v0
.end method

.method protected customBlur()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected drawBlur(Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;Landroid/graphics/Canvas;Landroid/graphics/RectF;FZFFZ)V
    .locals 10

    move-object v0, p0

    move-object v9, p2

    move/from16 v1, p6

    move/from16 v2, p7

    .line 6324
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 6325
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$28;->path:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->rewind()V

    .line 6326
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$28;->path:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v5, p3

    move v6, p4

    invoke-virtual {v3, p3, p4, p4, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 6327
    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$28;->path:Landroid/graphics/Path;

    invoke-virtual {p2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    if-eqz p8, :cond_0

    .line 6329
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    neg-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$9600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v4

    sub-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    neg-float v1, v1

    iget-object v4, v0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v4}, Lorg/telegram/ui/PhotoViewer;->access$9600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    sub-float/2addr v1, v4

    add-float/2addr v1, v2

    invoke-virtual {p2, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 6331
    :cond_0
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6333
    :goto_0
    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    if-eqz p5, :cond_1

    const v2, -0x878788

    goto :goto_1

    :cond_1
    const v2, -0xd9d9da

    :goto_1
    move v4, v2

    const/4 v2, 0x0

    if-eqz p8, :cond_3

    if-eqz p5, :cond_2

    move v5, v2

    goto :goto_3

    :cond_2
    const/high16 v3, 0x33000000

    goto :goto_2

    :cond_3
    const/high16 v3, 0x44000000    # 512.0f

    :goto_2
    move v5, v3

    :goto_3
    const/4 v6, 0x0

    xor-int/lit8 v7, p5, 0x1

    if-nez p5, :cond_4

    if-eqz p8, :cond_4

    const/4 v2, 0x1

    :cond_4
    move v8, v2

    move-object v2, p2

    move-object v3, p1

    invoke-static/range {v1 .. v8}, Lorg/telegram/ui/PhotoViewer;->access$18600(Lorg/telegram/ui/PhotoViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Components/BlurringShader$StoryBlurDrawer;IIZZZ)V

    .line 6334
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected ignoreTouches(FF)Z
    .locals 0

    .line 6319
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardShown:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2500(Lorg/telegram/ui/PhotoViewer;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public invalidate()V
    .locals 2

    .line 6370
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->photoViewerBlur:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7100(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7100(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$7100(Lorg/telegram/ui/PhotoViewer;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    .line 6373
    :cond_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onUpdateShowKeyboard(F)V
    .locals 4

    .line 6363
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/CaptionPhotoViewer;->onUpdateShowKeyboard(F)V

    .line 6364
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$9400(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    int-to-float p1, p1

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 6365
    iget-object p1, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {p1}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$2600(Lorg/telegram/ui/PhotoViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    int-to-float v0, v2

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method protected setupMentionContainer()V
    .locals 4

    .line 6347
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowStickers(Z)V

    .line 6348
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowBots(Z)V

    .line 6349
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setAllowChats(Z)V

    .line 6350
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setSearchInDailogs(Z)V

    .line 6351
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6352
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->chatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 6353
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    iget-object v3, p0, Lorg/telegram/ui/PhotoViewer$28;->this$0:Lorg/telegram/ui/PhotoViewer;

    invoke-static {v3}, Lorg/telegram/ui/PhotoViewer;->access$12600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedUsernames(Z)V

    goto :goto_1

    .line 6355
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 6356
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedUsernames(Z)V

    .line 6358
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->getAdapter()Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->setNeedBotContext(Z)V

    return-void
.end method
