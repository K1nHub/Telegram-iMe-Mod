.class Lorg/solovyev/android/checkout/Billing$1;
.super Ljava/lang/Object;
.source "Billing.java"

# interfaces
.implements Lorg/solovyev/android/checkout/PlayStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Billing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/solovyev/android/checkout/Billing;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/Billing;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/solovyev/android/checkout/Billing$1;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPurchasesChanged()V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/solovyev/android/checkout/Billing$1;->this$0:Lorg/solovyev/android/checkout/Billing;

    invoke-static {v0}, Lorg/solovyev/android/checkout/Billing;->access$000(Lorg/solovyev/android/checkout/Billing;)Lorg/solovyev/android/checkout/ConcurrentCache;

    move-result-object v0

    sget-object v1, Lorg/solovyev/android/checkout/RequestType;->GET_PURCHASES:Lorg/solovyev/android/checkout/RequestType;

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/RequestType;->getCacheKeyType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/solovyev/android/checkout/ConcurrentCache;->removeAll(I)V

    return-void
.end method
