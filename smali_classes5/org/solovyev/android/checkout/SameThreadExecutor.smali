.class Lorg/solovyev/android/checkout/SameThreadExecutor;
.super Ljava/lang/Object;
.source "SameThreadExecutor.java"

# interfaces
.implements Lorg/solovyev/android/checkout/CancellableExecutor;


# static fields
.field public static final INSTANCE:Lorg/solovyev/android/checkout/SameThreadExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/solovyev/android/checkout/SameThreadExecutor;

    invoke-direct {v0}, Lorg/solovyev/android/checkout/SameThreadExecutor;-><init>()V

    sput-object v0, Lorg/solovyev/android/checkout/SameThreadExecutor;->INSTANCE:Lorg/solovyev/android/checkout/SameThreadExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 37
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
