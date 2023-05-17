.class Lorg/telegram/ui/LoginActivity$PhoneView$4;
.super Lorg/telegram/ui/Components/QRCodeBottomSheet;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LoginActivity$PhoneView;->lambda$new$8(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LoginActivity$PhoneView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7

    .line 2507
    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/QRCodeBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public getCustomQrCenterImageRes()I
    .locals 1

    .line 2515
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_logo:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 2510
    sget v0, Lcom/iMe/common/IdFabric$CustomType;->QR_BOTTOM_SHEET_LOGIN_TOKEN:I

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 2520
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 2521
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$9300(Lorg/telegram/ui/LoginActivity;)Lcom/iMe/fork/utils/LoginTokenGenerator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2522
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$PhoneView$4;->this$1:Lorg/telegram/ui/LoginActivity$PhoneView;

    iget-object v0, v0, Lorg/telegram/ui/LoginActivity$PhoneView;->this$0:Lorg/telegram/ui/LoginActivity;

    invoke-static {v0}, Lorg/telegram/ui/LoginActivity;->access$9300(Lorg/telegram/ui/LoginActivity;)Lcom/iMe/fork/utils/LoginTokenGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/fork/utils/LoginTokenGenerator;->destroy()V

    :cond_0
    return-void
.end method
