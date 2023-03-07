.class Lorg/solovyev/android/checkout/DefaultPurchaseVerifier;
.super Ljava/lang/Object;
.source "DefaultPurchaseVerifier.java"

# interfaces
.implements Lorg/solovyev/android/checkout/PurchaseVerifier;


# static fields
.field static final TEST_SKUS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPublicKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "android.test.purchased"

    const-string v2, "android.test.canceled"

    const-string v3, "android.test.refunded"

    const-string v4, "android.test.item_unavailable"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/solovyev/android/checkout/DefaultPurchaseVerifier;->TEST_SKUS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/solovyev/android/checkout/DefaultPurchaseVerifier;->mPublicKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public verify(Ljava/util/List;Lorg/solovyev/android/checkout/RequestListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;",
            "Lorg/solovyev/android/checkout/RequestListener<",
            "Ljava/util/List<",
            "Lorg/solovyev/android/checkout/Purchase;",
            ">;>;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/solovyev/android/checkout/Purchase;

    .line 59
    sget-object v2, Lorg/solovyev/android/checkout/DefaultPurchaseVerifier;->TEST_SKUS:Ljava/util/Set;

    iget-object v3, v1, Lorg/solovyev/android/checkout/Purchase;->sku:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto-verifying a test purchase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/solovyev/android/checkout/Billing;->debug(Ljava/lang/String;)V

    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    iget-object v2, p0, Lorg/solovyev/android/checkout/DefaultPurchaseVerifier;->mPublicKey:Ljava/lang/String;

    iget-object v3, v1, Lorg/solovyev/android/checkout/Purchase;->data:Ljava/lang/String;

    iget-object v4, v1, Lorg/solovyev/android/checkout/Purchase;->signature:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lorg/solovyev/android/checkout/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_1
    iget-object v2, v1, Lorg/solovyev/android/checkout/Purchase;->signature:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Cannot verify purchase: "

    if-eqz v2, :cond_2

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Signature is empty"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/solovyev/android/checkout/Billing;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Wrong signature"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/solovyev/android/checkout/Billing;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_3
    invoke-interface {p2, v0}, Lorg/solovyev/android/checkout/RequestListener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
