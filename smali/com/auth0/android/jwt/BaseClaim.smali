.class Lcom/auth0/android/jwt/BaseClaim;
.super Ljava/lang/Object;
.source "BaseClaim.java"

# interfaces
.implements Lcom/auth0/android/jwt/Claim;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/android/jwt/DecodeException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
