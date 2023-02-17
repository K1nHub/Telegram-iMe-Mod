.class Lorg/solovyev/android/checkout/MainThreadRequestListener$1;
.super Ljava/lang/Object;
.source "MainThreadRequestListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/solovyev/android/checkout/MainThreadRequestListener;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/solovyev/android/checkout/MainThreadRequestListener;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/MainThreadRequestListener;Ljava/lang/Object;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener$1;->this$0:Lorg/solovyev/android/checkout/MainThreadRequestListener;

    iput-object p2, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener$1;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener$1;->this$0:Lorg/solovyev/android/checkout/MainThreadRequestListener;

    iget-object v0, v0, Lorg/solovyev/android/checkout/RequestListenerWrapper;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    iget-object v1, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener$1;->val$result:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/solovyev/android/checkout/RequestListener;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
