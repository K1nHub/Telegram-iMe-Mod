.class Lorg/telegram/ui/DialogsActivity$30;
.super Landroid/widget/FrameLayout;
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

    .line 6155
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setTranslationY(F)V
    .locals 1

    .line 6158
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 6159
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/multifab/MiniFabsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6160
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$30;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2700(Lorg/telegram/ui/DialogsActivity;)Lcom/smedialink/ui/multifab/MiniFabsContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_0
    return-void
.end method
