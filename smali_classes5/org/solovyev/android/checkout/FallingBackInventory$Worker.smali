.class Lorg/solovyev/android/checkout/FallingBackInventory$Worker;
.super Ljava/lang/Object;
.source "FallingBackInventory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/FallingBackInventory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Worker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/solovyev/android/checkout/FallingBackInventory$Worker$FallbackCallback;,
        Lorg/solovyev/android/checkout/FallingBackInventory$Worker$MainCallback;
    }
.end annotation


# instance fields
.field private final mFallbackCallback:Lorg/solovyev/android/checkout/FallingBackInventory$Worker$FallbackCallback;

.field private final mMainCallback:Lorg/solovyev/android/checkout/FallingBackInventory$Worker$MainCallback;

.field private final mTask:Lorg/solovyev/android/checkout/BaseInventory$Task;

.field final synthetic this$0:Lorg/solovyev/android/checkout/FallingBackInventory;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/FallingBackInventory;Lorg/solovyev/android/checkout/BaseInventory$Task;)V
    .locals 1

    .line 42
    iput-object p1, p0, Lorg/solovyev/android/checkout/FallingBackInventory$Worker;->this$0:Lorg/solovyev/android/checkout/FallingBackInventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance p1, Lorg/solovyev/android/checkout/FallingBackInventory$Worker$MainCallback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lorg/solovyev/android/checkout/FallingBackInventory$Worker$MainCallback;-><init>(Lorg/solovyev/android/checkout/FallingBackInventory$Worker;Lorg/solovyev/android/checkout/FallingBackInventory$1;)V

    iput-object p1, p0, Lorg/solovyev/android/checkout/FallingBackInventory$Worker;->mMainCallback:Lorg/solovyev/android/checkout/FallingBackInventory$Worker$MainCallback;

    .line 37
    new-instance p1, Lorg/solovyev/android/checkout/FallingBackInventory$Worker$FallbackCallback;

    invoke-direct {p1, p0, v0}, Lorg/solovyev/android/checkout/FallingBackInventory$Worker$FallbackCallback;-><init>(Lorg/solovyev/android/checkout/FallingBackInventory$Worker;Lorg/solovyev/android/checkout/FallingBackInventory$1;)V

    iput-object p1, p0, Lorg/solovyev/android/checkout/FallingBackInventory$Worker;->mFallbackCallback:Lorg/solovyev/android/checkout/FallingBackInventory$Worker$FallbackCallback;

    .line 43
    iput-object p2, p0, Lorg/solovyev/android/checkout/FallingBackInventory$Worker;->mTask:Lorg/solovyev/android/checkout/BaseInventory$Task;

    return-void
.end method

.method static synthetic access$200(Lorg/solovyev/android/checkout/FallingBackInventory$Worker;)Lorg/solovyev/android/checkout/BaseInventory$Task;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/solovyev/android/checkout/FallingBackInventory$Worker;->mTask:Lorg/solovyev/android/checkout/BaseInventory$Task;

    return-object p0
.end method

.method static synthetic access$300(Lorg/solovyev/android/checkout/FallingBackInventory$Worker;)Lorg/solovyev/android/checkout/FallingBackInventory$Worker$FallbackCallback;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/solovyev/android/checkout/FallingBackInventory$Worker;->mFallbackCallback:Lorg/solovyev/android/checkout/FallingBackInventory$Worker$FallbackCallback;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/solovyev/android/checkout/FallingBackInventory$Worker;->mMainCallback:Lorg/solovyev/android/checkout/FallingBackInventory$Worker$MainCallback;

    invoke-virtual {v0}, Lorg/solovyev/android/checkout/FallingBackInventory$Worker$MainCallback;->load()V

    return-void
.end method
