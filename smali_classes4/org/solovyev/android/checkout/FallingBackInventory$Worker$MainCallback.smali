.class Lorg/solovyev/android/checkout/FallingBackInventory$Worker$MainCallback;
.super Ljava/lang/Object;
.source "FallingBackInventory.java"

# interfaces
.implements Lorg/solovyev/android/checkout/Inventory$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/FallingBackInventory$Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lorg/solovyev/android/checkout/FallingBackInventory$Worker;


# direct methods
.method private constructor <init>(Lorg/solovyev/android/checkout/FallingBackInventory$Worker;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/solovyev/android/checkout/FallingBackInventory$Worker$MainCallback;->this$1:Lorg/solovyev/android/checkout/FallingBackInventory$Worker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/solovyev/android/checkout/FallingBackInventory$Worker;Lorg/solovyev/android/checkout/FallingBackInventory$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/solovyev/android/checkout/FallingBackInventory$Worker$MainCallback;-><init>(Lorg/solovyev/android/checkout/FallingBackInventory$Worker;)V

    return-void
.end method


# virtual methods
.method public load()V
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/solovyev/android/checkout/FallingBackInventory$Worker$MainCallback;->this$1:Lorg/solovyev/android/checkout/FallingBackInventory$Worker;

    iget-object v0, v0, Lorg/solovyev/android/checkout/FallingBackInventory$Worker;->this$0:Lorg/solovyev/android/checkout/FallingBackInventory;

    invoke-static {v0}, Lorg/solovyev/android/checkout/FallingBackInventory;->access$400(Lorg/solovyev/android/checkout/FallingBackInventory;)Lorg/solovyev/android/checkout/CheckoutInventory;

    move-result-object v0

    iget-object v1, p0, Lorg/solovyev/android/checkout/FallingBackInventory$Worker$MainCallback;->this$1:Lorg/solovyev/android/checkout/FallingBackInventory$Worker;

    invoke-static {v1}, Lorg/solovyev/android/checkout/FallingBackInventory$Worker;->access$200(Lorg/solovyev/android/checkout/FallingBackInventory$Worker;)Lorg/solovyev/android/checkout/BaseInventory$Task;

    move-result-object v1

    invoke-virtual {v1}, Lorg/solovyev/android/checkout/BaseInventory$Task;->getRequest()Lorg/solovyev/android/checkout/Inventory$Request;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lorg/solovyev/android/checkout/BaseInventory;->load(Lorg/solovyev/android/checkout/Inventory$Request;Lorg/solovyev/android/checkout/Inventory$Callback;)I

    return-void
.end method

.method public onLoaded(Lorg/solovyev/android/checkout/Inventory$Products;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/solovyev/android/checkout/FallingBackInventory$Worker$MainCallback;->this$1:Lorg/solovyev/android/checkout/FallingBackInventory$Worker;

    invoke-static {v0}, Lorg/solovyev/android/checkout/FallingBackInventory$Worker;->access$200(Lorg/solovyev/android/checkout/FallingBackInventory$Worker;)Lorg/solovyev/android/checkout/BaseInventory$Task;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/solovyev/android/checkout/BaseInventory$Task;->onMaybeDone(Lorg/solovyev/android/checkout/Inventory$Products;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object p1, p0, Lorg/solovyev/android/checkout/FallingBackInventory$Worker$MainCallback;->this$1:Lorg/solovyev/android/checkout/FallingBackInventory$Worker;

    invoke-static {p1}, Lorg/solovyev/android/checkout/FallingBackInventory$Worker;->access$300(Lorg/solovyev/android/checkout/FallingBackInventory$Worker;)Lorg/solovyev/android/checkout/FallingBackInventory$Worker$FallbackCallback;

    move-result-object p1

    invoke-virtual {p1}, Lorg/solovyev/android/checkout/FallingBackInventory$Worker$FallbackCallback;->load()V

    return-void
.end method
