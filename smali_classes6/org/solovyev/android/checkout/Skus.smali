.class public final Lorg/solovyev/android/checkout/Skus;
.super Ljava/lang/Object;
.source "Skus.java"


# instance fields
.field public final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Sku;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Sku;",
            ">;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/solovyev/android/checkout/Skus;->list:Ljava/util/List;

    return-void
.end method

.method private static extractList(Landroid/os/Bundle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "DETAILS_LIST"

    .line 79
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static fromBundle(Landroid/os/Bundle;Ljava/lang/String;)Lorg/solovyev/android/checkout/Skus;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/solovyev/android/checkout/RequestException;
        }
    .end annotation

    .line 63
    invoke-static {p0}, Lorg/solovyev/android/checkout/Skus;->extractList(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    :try_start_0
    invoke-static {v1, p1}, Lorg/solovyev/android/checkout/Sku;->fromJson(Ljava/lang/String;Ljava/lang/String;)Lorg/solovyev/android/checkout/Sku;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 70
    new-instance p1, Lorg/solovyev/android/checkout/RequestException;

    invoke-direct {p1, p0}, Lorg/solovyev/android/checkout/RequestException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 74
    :cond_0
    new-instance p0, Lorg/solovyev/android/checkout/Skus;

    invoke-direct {p0, p1, v0}, Lorg/solovyev/android/checkout/Skus;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p0
.end method
