.class public interface abstract Lcom/iMe/storage/domain/manager/auth/AuthManager;
.super Ljava/lang/Object;
.source "AuthManager.kt"


# virtual methods
.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getRefreshToken()Ljava/lang/String;
.end method

.method public abstract getUser()Lcom/iMe/storage/domain/model/wallet/User;
.end method

.method public abstract isAuthorized()Z
.end method

.method public abstract logout()V
.end method

.method public abstract setSession(Lcom/iMe/storage/domain/model/wallet/SessionTokens;)V
.end method
