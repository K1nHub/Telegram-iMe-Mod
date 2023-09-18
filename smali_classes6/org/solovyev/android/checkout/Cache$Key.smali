.class public final Lorg/solovyev/android/checkout/Cache$Key;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field public final key:Ljava/lang/String;

.field public final type:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lorg/solovyev/android/checkout/Cache$Key;->type:I

    .line 91
    iput-object p2, p0, Lorg/solovyev/android/checkout/Cache$Key;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 97
    :cond_0
    instance-of v1, p1, Lorg/solovyev/android/checkout/Cache$Key;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 99
    :cond_1
    check-cast p1, Lorg/solovyev/android/checkout/Cache$Key;

    .line 101
    iget v1, p0, Lorg/solovyev/android/checkout/Cache$Key;->type:I

    iget v3, p1, Lorg/solovyev/android/checkout/Cache$Key;->type:I

    if-eq v1, v3, :cond_2

    return v2

    .line 102
    :cond_2
    iget-object v1, p0, Lorg/solovyev/android/checkout/Cache$Key;->key:Ljava/lang/String;

    iget-object p1, p1, Lorg/solovyev/android/checkout/Cache$Key;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 109
    iget v0, p0, Lorg/solovyev/android/checkout/Cache$Key;->type:I

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-object v1, p0, Lorg/solovyev/android/checkout/Cache$Key;->key:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/solovyev/android/checkout/Cache$Key;->type:I

    invoke-static {v1}, Lorg/solovyev/android/checkout/RequestType;->getCacheKeyName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/solovyev/android/checkout/Cache$Key;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
