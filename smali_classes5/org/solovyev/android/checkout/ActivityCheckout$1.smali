.class Lorg/solovyev/android/checkout/ActivityCheckout$1;
.super Ljava/lang/Object;
.source "ActivityCheckout.java"

# interfaces
.implements Lorg/solovyev/android/checkout/IntentStarter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/ActivityCheckout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/solovyev/android/checkout/ActivityCheckout;


# direct methods
.method constructor <init>(Lorg/solovyev/android/checkout/ActivityCheckout;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/solovyev/android/checkout/ActivityCheckout$1;->this$0:Lorg/solovyev/android/checkout/ActivityCheckout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startForResult(Landroid/content/IntentSender;ILandroid/content/Intent;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/solovyev/android/checkout/ActivityCheckout$1;->this$0:Lorg/solovyev/android/checkout/ActivityCheckout;

    invoke-static {v0}, Lorg/solovyev/android/checkout/ActivityCheckout;->access$000(Lorg/solovyev/android/checkout/ActivityCheckout;)Landroid/app/Activity;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method
