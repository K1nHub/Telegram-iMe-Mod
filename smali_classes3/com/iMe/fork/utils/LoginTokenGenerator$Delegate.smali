.class public interface abstract Lcom/iMe/fork/utils/LoginTokenGenerator$Delegate;
.super Ljava/lang/Object;
.source "LoginTokenGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/fork/utils/LoginTokenGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract onError()V
.end method

.method public abstract onTokenAuthorized(Lorg/telegram/tgnet/TLRPC$TL_auth_authorization;)V
.end method

.method public abstract onTokenGenerated(Ljava/lang/String;I)V
.end method

.method public abstract onTwoStepVerificationNeeded()V
.end method
