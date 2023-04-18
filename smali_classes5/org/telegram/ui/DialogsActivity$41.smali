.class Lorg/telegram/ui/DialogsActivity$41;
.super Lorg/telegram/ui/Components/UndoView;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method public static synthetic $r8$lambda$uQbtmRJUWd1XVUG9H8nbe3WEklg(Lorg/telegram/ui/DialogsActivity$41;ILorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$41;->lambda$onRemoveDialogAction$0(ILorg/telegram/tgnet/TLRPC$Dialog;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 0

    .line 7230
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/UndoView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onRemoveDialogAction$0(ILorg/telegram/tgnet/TLRPC$Dialog;)V
    .locals 1

    .line 7274
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$21500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    .line 7275
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$21500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 7278
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$21500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 7279
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->updateList(Z)V

    nop

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected canUndo()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 7247
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 7248
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$19100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/DialogsItemAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected onRemoveDialogAction(JI)V
    .locals 4

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/16 v1, 0x1b

    if-ne p3, v1, :cond_5

    .line 7258
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3, v0}, Lorg/telegram/ui/DialogsActivity;->access$28302(Lorg/telegram/ui/DialogsActivity;I)I

    .line 7259
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3, v0}, Lorg/telegram/ui/DialogsActivity;->access$21400(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7260
    iget-object p3, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p3}, Lorg/telegram/ui/DialogsActivity;->access$21500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p3

    if-eqz p3, :cond_4

    const/4 p3, -0x1

    const/4 v0, 0x0

    move v1, v0

    .line 7262
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$21500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 7263
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$21500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Dialog;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Dialog;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    move p3, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz p3, :cond_3

    .line 7270
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$21500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Dialog;

    .line 7271
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v0

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14200(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    .line 7273
    new-instance p2, Lorg/telegram/ui/DialogsActivity$41$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3, p1}, Lorg/telegram/ui/DialogsActivity$41$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$41;ILorg/telegram/tgnet/TLRPC$Dialog;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 7283
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$21400(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 7286
    :cond_4
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$21600(Lorg/telegram/ui/DialogsActivity;)V

    :cond_5
    return-void
.end method

.method public setTranslationY(F)V
    .locals 3

    .line 7233
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 7234
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$28200(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-ne p0, v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$28200(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 7235
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$33102(Lorg/telegram/ui/DialogsActivity;F)F

    .line 7236
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$33100(Lorg/telegram/ui/DialogsActivity;)F

    move-result p1

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 7237
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$33102(Lorg/telegram/ui/DialogsActivity;F)F

    .line 7239
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$23900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7240
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$41;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$24200(Lorg/telegram/ui/DialogsActivity;)V

    :cond_1
    return-void
.end method
