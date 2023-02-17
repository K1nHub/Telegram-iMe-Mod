.class Lcom/auth0/android/jwt/ClaimImpl;
.super Lcom/auth0/android/jwt/BaseClaim;
.source "ClaimImpl.java"


# instance fields
.field private final value:Lcom/google/gson/JsonElement;


# direct methods
.method constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/auth0/android/jwt/BaseClaim;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/auth0/android/jwt/ClaimImpl;->value:Lcom/google/gson/JsonElement;

    return-void
.end method


# virtual methods
.method public asObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
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

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/auth0/android/jwt/ClaimImpl;->value:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 123
    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/auth0/android/jwt/ClaimImpl;->value:Lcom/google/gson/JsonElement;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 125
    new-instance v1, Lcom/auth0/android/jwt/DecodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to decode claim as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/auth0/android/jwt/DecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/auth0/android/jwt/ClaimImpl;->value:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/auth0/android/jwt/ClaimImpl;->value:Lcom/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
