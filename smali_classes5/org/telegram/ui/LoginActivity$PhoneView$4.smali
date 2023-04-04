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


# direct methods
.method constructor <init>(Lorg/telegram/ui/LoginActivity$PhoneView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    .line 2326
    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/Components/QRCodeBottomSheet;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public getCustomQrCenterImageRes()I
    .locals 1

    .line 2334
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_internal_logo:I

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method
