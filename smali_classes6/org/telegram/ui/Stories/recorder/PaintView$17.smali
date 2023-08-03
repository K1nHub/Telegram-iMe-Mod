.class Lorg/telegram/ui/Stories/recorder/PaintView$17;
.super Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
.source "PaintView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/PaintView;->openStickersView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

.field final synthetic val$wasSelectedIndex:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/PaintView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V
    .locals 0

    .line 1494
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$17;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    iput p4, p0, Lorg/telegram/ui/Stories/recorder/PaintView$17;->val$wasSelectedIndex:I

    invoke-direct {p0, p2, p3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method public onDismissAnimationStart()V
    .locals 2

    .line 1497
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->onDismissAnimationStart()V

    .line 1498
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/PaintView$17;->this$0:Lorg/telegram/ui/Stories/recorder/PaintView;

    iget v1, p0, Lorg/telegram/ui/Stories/recorder/PaintView$17;->val$wasSelectedIndex:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/PaintView;->access$3500(Lorg/telegram/ui/Stories/recorder/PaintView;I)V

    return-void
.end method
