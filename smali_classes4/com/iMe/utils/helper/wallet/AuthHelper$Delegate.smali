.class public interface abstract Lcom/iMe/utils/helper/wallet/AuthHelper$Delegate;
.super Ljava/lang/Object;
.source "AuthHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/utils/helper/wallet/AuthHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract hideLoadingDialog()V
.end method

.method public abstract onAuthSuccess()V
.end method

.method public abstract showLoadingDialog(Lcom/iMe/fork/utils/Callbacks$Callback;)V
.end method

.method public abstract showToast(Ljava/lang/String;)V
.end method
