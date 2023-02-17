.class public final Lorg/fork/ui/fragment/CreateReactionButtonsActivity$initProgressView$1;
.super Landroid/widget/FrameLayout;
.source "CreateReactionButtonsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->initProgressView()Lorg/fork/ui/fragment/CreateReactionButtonsActivity$initProgressView$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;


# direct methods
.method constructor <init>(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$initProgressView$1;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    .line 277
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 279
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 280
    iget-object v0, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$initProgressView$1;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {v0}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getUploadProgressBar(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RadialProgress;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 284
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/high16 p1, 0x42340000    # 45.0f

    .line 287
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sub-int/2addr p4, p1

    .line 288
    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p5, p1

    .line 289
    div-int/lit8 p5, p5, 0x2

    .line 290
    iget-object p2, p0, Lorg/fork/ui/fragment/CreateReactionButtonsActivity$initProgressView$1;->this$0:Lorg/fork/ui/fragment/CreateReactionButtonsActivity;

    invoke-static {p2}, Lorg/fork/ui/fragment/CreateReactionButtonsActivity;->access$getUploadProgressBar(Lorg/fork/ui/fragment/CreateReactionButtonsActivity;)Lorg/telegram/ui/Components/RadialProgress;

    move-result-object p2

    add-int p3, p4, p1

    add-int/2addr p1, p5

    invoke-virtual {p2, p4, p5, p3, p1}, Lorg/telegram/ui/Components/RadialProgress;->setProgressRect(IIII)V

    return-void
.end method
