.class Lorg/telegram/ui/DialogsActivity$51$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$51;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/DialogsActivity$51;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$51;)V
    .locals 0

    .line 8216
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 8219
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$36700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8220
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->getCurrentTabId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$37002(Lorg/telegram/ui/DialogsActivity;I)I

    goto :goto_0

    .line 8222
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/FilterTabsView;->getCurrentTabId()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/ui/DialogsActivity;->access$37102(Lorg/telegram/ui/DialogsActivity;I)I

    .line 8224
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 8225
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object v5, v5, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$36700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter;->setFolderId(I)V

    .line 8226
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$14100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Adapters/DialogsAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Adapters/DialogsAdapter;->notifyDataSetChanged()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8228
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object v0, v0, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$36700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FilterTabsView;->setCustomForwardArchive(Z)V

    .line 8229
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$27500(Lorg/telegram/ui/DialogsActivity;ZZ)V

    .line 8230
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$36700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8231
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$37100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    invoke-static {p1, v2}, Lorg/telegram/ui/DialogsActivity;->access$37200(Lorg/telegram/ui/DialogsActivity;I)V

    goto :goto_2

    .line 8233
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$37000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v2

    invoke-static {p1, v2}, Lorg/telegram/ui/DialogsActivity;->access$37200(Lorg/telegram/ui/DialogsActivity;I)V

    .line 8235
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$8700(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ScrollView;

    move-result-object p1

    const/16 v2, 0x2c

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/widget/ScrollView;->setTranslationY(F)V

    .line 8236
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 8238
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$6400(Lorg/telegram/ui/DialogsActivity;)Landroid/graphics/Paint;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$36700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    const-string v3, "actionBarDefaultArchived"

    const-string v4, "actionBarDefault"

    if-eqz v2, :cond_3

    move-object v2, v3

    goto :goto_3

    :cond_3
    move-object v2, v4

    :goto_3
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8239
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object p1, p1, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterTabsView;->getTabsContainer()Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$36700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "actionBarDefaultArchivedSelector"

    goto :goto_4

    :cond_4
    const-string v2, "actionBarDefaultSelector"

    :goto_4
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setSelectorDrawableColor(I)V

    .line 8241
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8243
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object v2, v2, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$36700(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 8244
    new-instance v2, Lcom/smedialink/ui/common/ColorBlenderAnimator;

    invoke-direct {v2, v4, v3}, Lcom/smedialink/ui/common/ColorBlenderAnimator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 8246
    :cond_5
    new-instance v2, Lcom/smedialink/ui/common/ColorBlenderAnimator;

    invoke-direct {v2, v3, v4}, Lcom/smedialink/ui/common/ColorBlenderAnimator;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    new-array v0, v0, [Landroid/animation/Animator;

    .line 8248
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$51$1;->this$1:Lorg/telegram/ui/DialogsActivity$51;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$51;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$37300(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x32

    .line 8249
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 8250
    new-instance v0, Lorg/telegram/ui/DialogsActivity$51$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/DialogsActivity$51$1$1;-><init>(Lorg/telegram/ui/DialogsActivity$51$1;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8259
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
