.class public Lcom/iMe/feature/socialMedias/auth/AuthScreenDirections;
.super Ljava/lang/Object;
.source "AuthScreenDirections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/feature/socialMedias/auth/AuthScreenDirections$ToSocialAuth;
    }
.end annotation


# direct methods
.method public static toSocialAuth(Lcom/iMe/feature/socialMedias/SocialAuthDomain;)Lcom/iMe/feature/socialMedias/auth/AuthScreenDirections$ToSocialAuth;
    .locals 2

    .line 23
    new-instance v0, Lcom/iMe/feature/socialMedias/auth/AuthScreenDirections$ToSocialAuth;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iMe/feature/socialMedias/auth/AuthScreenDirections$ToSocialAuth;-><init>(Lcom/iMe/feature/socialMedias/SocialAuthDomain;Lcom/iMe/feature/socialMedias/auth/AuthScreenDirections$1;)V

    return-object v0
.end method
