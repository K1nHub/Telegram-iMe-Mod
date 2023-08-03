.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$8;
.super Lorg/telegram/ui/Stories/recorder/CaptionContainerView;
.source "StoryRecorder.java"


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
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Landroid/content/Context;ILorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 1579
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$8;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;-><init>(Landroid/content/Context;ILorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected drawBlurBitmap(Landroid/graphics/Bitmap;F)V
    .locals 1

    .line 1582
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$8;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->access$300(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;->drawBlurBitmap(Landroid/graphics/Bitmap;F)V

    .line 1583
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/CaptionContainerView;->drawBlurBitmap(Landroid/graphics/Bitmap;F)V

    return-void
.end method
