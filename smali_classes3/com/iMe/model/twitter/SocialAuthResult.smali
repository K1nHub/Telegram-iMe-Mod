.class public abstract Lcom/iMe/model/twitter/SocialAuthResult;
.super Ljava/lang/Object;
.source "SocialAuthResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/model/twitter/SocialAuthResult$Cancelled;,
        Lcom/iMe/model/twitter/SocialAuthResult$Failure;,
        Lcom/iMe/model/twitter/SocialAuthResult$Logout;,
        Lcom/iMe/model/twitter/SocialAuthResult$Success;,
        Lcom/iMe/model/twitter/SocialAuthResult$Verification;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/model/twitter/SocialAuthResult;-><init>()V

    return-void
.end method
