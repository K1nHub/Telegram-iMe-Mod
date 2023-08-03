.class Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;
.super Lorg/telegram/ui/Components/EditTextEmoji;
.source "CaptionContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/CaptionContainerView;-><init>(Landroid/content/Context;ILorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 7

    .line 128
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/EditTextEmoji;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/BaseFragment;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected createEmojiView()V
    .locals 2

    .line 141
    invoke-super {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->createEmojiView()V

    .line 142
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EditTextEmoji;->getEmojiView()Lorg/telegram/ui/Components/EmojiView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 144
    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->shouldLightenBackground:Z

    .line 145
    iput-boolean v1, v0, Lorg/telegram/ui/Components/EmojiView;->fixBottomTabContainerTranslation:Z

    .line 146
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmojiView;->setShouldDrawBackground(Z)V

    :cond_0
    return-void
.end method

.method protected drawEmojiBackground(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 6

    .line 152
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    const v4, 0x3f733333    # 0.95f

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$000(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V

    return-void
.end method

.method protected onEmojiKeyboardUpdate()V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->fire()V

    return-void
.end method

.method protected onWaitingForKeyboard()V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$1;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v0, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->keyboardNotifier:Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/KeyboardNotifier;->awaitKeyboard()V

    return-void
.end method
