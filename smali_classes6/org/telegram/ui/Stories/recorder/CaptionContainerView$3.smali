.class Lorg/telegram/ui/Stories/recorder/CaptionContainerView$3;
.super Lorg/telegram/ui/Components/MentionsContainerView;
.source "CaptionContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->createMentionsContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/content/Context;JILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 299
    iput-object v0, v8, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$3;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/telegram/ui/Components/MentionsContainerView;-><init>(Landroid/content/Context;JILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;F)V
    .locals 6

    .line 302
    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {v2, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 303
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView$3;->this$0:Lorg/telegram/ui/Stories/recorder/CaptionContainerView;

    iget-object v5, v0, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    const v4, 0x3f666666    # 0.9f

    move-object v1, p1

    move v3, p3

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->access$000(Lorg/telegram/ui/Stories/recorder/CaptionContainerView;Landroid/graphics/Canvas;Landroid/graphics/RectF;FFLandroid/view/View;)V

    return-void
.end method
