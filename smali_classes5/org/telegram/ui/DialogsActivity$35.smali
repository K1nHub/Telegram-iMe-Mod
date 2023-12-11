.class Lorg/telegram/ui/DialogsActivity$35;
.super Lorg/telegram/ui/Components/RLottieImageView;
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
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;)V
    .locals 0

    .line 6878
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RLottieImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setAnimation(III)V
    .locals 0

    .line 6884
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 6885
    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$24000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6886
    sget p2, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon_camera:I

    if-eq p1, p2, :cond_1

    sget p2, Lorg/telegram/messenger/R$raw;->write_contacts_fab_icon_reverse_camera:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 6891
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$24000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    goto :goto_1

    .line 6887
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$12100(Lorg/telegram/ui/DialogsActivity;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$30500(Lorg/telegram/ui/DialogsActivity;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getMainSettings()Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 p2, 0x1

    const-string p3, "storyhint"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-boolean p2, p1, Lorg/telegram/ui/DialogsActivity;->storiesEnabled:Z

    if-eqz p2, :cond_2

    .line 6888
    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$24000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_2
    :goto_1
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 6898
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RLottieImageView;->setImageResource(I)V

    .line 6899
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$24000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6900
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$35;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$24000(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    :cond_0
    return-void
.end method
