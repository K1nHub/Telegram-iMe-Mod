.class public interface abstract Lorg/telegram/ui/Components/QRCodeBottomSheet$LoginTokenCallback;
.super Ljava/lang/Object;
.source "QRCodeBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/QRCodeBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoginTokenCallback"
.end annotation


# virtual methods
.method public abstract onAuthorized(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V
.end method

.method public abstract onTwoStepVerificationNeeded()V
.end method
