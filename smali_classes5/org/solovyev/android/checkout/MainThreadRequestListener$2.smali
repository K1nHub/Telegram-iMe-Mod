.class Lorg/solovyev/android/checkout/MainThreadRequestListener$2;
.super Ljava/lang/Object;
.source "MainThreadRequestListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/solovyev/android/checkout/MainThreadRequestListener;->onError(ILjava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/solovyev/android/checkout/MainThreadRequestListener;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$response:I


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/MainThreadRequestListener;ILjava/lang/Exception;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener$2;->this$0:Lorg/solovyev/android/checkout/MainThreadRequestListener;

    iput p2, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener$2;->val$response:I

    iput-object p3, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener$2;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 66
    iget-object v0, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener$2;->this$0:Lorg/solovyev/android/checkout/MainThreadRequestListener;

    iget-object v0, v0, Lorg/solovyev/android/checkout/RequestListenerWrapper;->mListener:Lorg/solovyev/android/checkout/RequestListener;

    iget v1, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener$2;->val$response:I

    iget-object v2, p0, Lorg/solovyev/android/checkout/MainThreadRequestListener$2;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lorg/solovyev/android/checkout/RequestListener;->onError(ILjava/lang/Exception;)V

    return-void
.end method
