.class Lorg/telegram/ui/Components/AlertsCreator$1;
.super Lorg/telegram/ui/Components/ReportAlert;
.source "AlertsCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/AlertsCreator;->createInputTemplateNameDialog(Lorg/telegram/ui/ChatActivity;Lcom/iMe/storage/domain/model/templates/TemplateModel;Ljava/lang/Runnable;Lcom/iMe/fork/utils/Callbacks$Callback1;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/iMe/fork/utils/Callbacks$Callback1;

.field final synthetic val$parentFragment:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Landroid/content/Context;IZLjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 490
    iput-object p5, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$callback:Lcom/iMe/fork/utils/Callbacks$Callback1;

    iput-object p6, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/ReportAlert;-><init>(Landroid/content/Context;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dismissInternal()V
    .locals 2

    .line 498
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismissInternal()V

    .line 499
    iget-object v0, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$parentFragment:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getClassGuid()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->requestAdjustResize(Landroid/app/Activity;I)V

    return-void
.end method

.method protected onSend(ILjava/lang/String;)V
    .locals 0

    .line 493
    iget-object p1, p0, Lorg/telegram/ui/Components/AlertsCreator$1;->val$callback:Lcom/iMe/fork/utils/Callbacks$Callback1;

    invoke-interface {p1, p2}, Lcom/iMe/fork/utils/Callbacks$Callback1;->invoke(Ljava/lang/Object;)V

    return-void
.end method
