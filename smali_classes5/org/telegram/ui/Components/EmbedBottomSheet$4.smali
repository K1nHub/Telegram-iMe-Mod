.class Lorg/telegram/ui/Components/EmbedBottomSheet$4;
.super Landroid/webkit/WebChromeClient;
.source "EmbedBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmbedBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmbedBottomSheet;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 2

    .line 358
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 359
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".chromium."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1100(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 370
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$902(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;)Landroid/view/View;

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 339
    invoke-virtual {p0, p1, p3}, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$900(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/ui/Components/PipVideoOverlay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->exitFromPip()V

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$902(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/view/View;)Landroid/view/View;

    .line 350
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getSheetContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1000(Lorg/telegram/ui/Components/EmbedBottomSheet;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    iget-object p1, p0, Lorg/telegram/ui/Components/EmbedBottomSheet$4;->this$0:Lorg/telegram/ui/Components/EmbedBottomSheet;

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/EmbedBottomSheet;->access$1102(Lorg/telegram/ui/Components/EmbedBottomSheet;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-void

    .line 345
    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void
.end method
