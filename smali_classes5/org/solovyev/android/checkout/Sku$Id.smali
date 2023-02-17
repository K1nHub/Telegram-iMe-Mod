.class public final Lorg/solovyev/android/checkout/Sku$Id;
.super Ljava/lang/Object;
.source "Sku.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Sku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Id"
.end annotation


# instance fields
.field public final code:Ljava/lang/String;

.field public final product:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lorg/solovyev/android/checkout/Sku$Id;->product:Ljava/lang/String;

    .line 253
    iput-object p2, p0, Lorg/solovyev/android/checkout/Sku$Id;->code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 272
    const-class v1, Lorg/solovyev/android/checkout/Sku$Id;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 274
    :cond_1
    check-cast p1, Lorg/solovyev/android/checkout/Sku$Id;

    .line 276
    iget-object v1, p0, Lorg/solovyev/android/checkout/Sku$Id;->product:Ljava/lang/String;

    iget-object v2, p1, Lorg/solovyev/android/checkout/Sku$Id;->product:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 277
    :cond_2
    iget-object v0, p0, Lorg/solovyev/android/checkout/Sku$Id;->code:Ljava/lang/String;

    iget-object p1, p1, Lorg/solovyev/android/checkout/Sku$Id;->code:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 283
    iget-object v0, p0, Lorg/solovyev/android/checkout/Sku$Id;->product:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 284
    iget-object v1, p0, Lorg/solovyev/android/checkout/Sku$Id;->code:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/solovyev/android/checkout/Sku$Id;->product:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/solovyev/android/checkout/Sku$Id;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
