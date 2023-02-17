.class Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$1;
.super Lorg/telegram/ui/Components/BackupImageView;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;-><init>(Lorg/telegram/ui/LoginActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;Landroid/content/Context;Lorg/telegram/ui/LoginActivity;)V
    .locals 0

    .line 7095
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .line 7098
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$15300(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7099
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$15300(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 7101
    :cond_0
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .line 7106
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$15300(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7107
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView$1;->this$1:Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;->access$15300(Lorg/telegram/ui/LoginActivity$LoginActivityRegisterView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 7109
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method
