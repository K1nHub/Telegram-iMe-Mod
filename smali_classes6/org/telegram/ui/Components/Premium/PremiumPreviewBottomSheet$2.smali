.class Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$2;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "PremiumPreviewBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->lambda$setTitle$5(Landroid/text/style/ClickableSpan;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentAccount()I
    .locals 1

    .line 330
    iget v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->currentAccount:I

    return v0
.end method

.method public getFragmentView()Landroid/view/View;
    .locals 1

    .line 338
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    invoke-static {v0}, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->access$1400(Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->bulletinContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getParentActivity()Landroid/app/Activity;
    .locals 1

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet$2;->this$0:Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/PremiumPreviewBottomSheet;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 326
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 342
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-object p1
.end method
