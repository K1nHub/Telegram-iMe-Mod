.class public Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenDirections;
.super Ljava/lang/Object;
.source "SocialWebScreenDirections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenDirections$ToSocialWeb;
    }
.end annotation


# direct methods
.method public static toSocialWeb(Lcom/iMe/feature/socialMedias/SocialNetwork;)Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenDirections$ToSocialWeb;
    .locals 2

    .line 23
    new-instance v0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenDirections$ToSocialWeb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenDirections$ToSocialWeb;-><init>(Lcom/iMe/feature/socialMedias/SocialNetwork;Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreenDirections$1;)V

    return-object v0
.end method
