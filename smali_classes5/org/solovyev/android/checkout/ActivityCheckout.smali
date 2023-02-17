.class public final Lorg/solovyev/android/checkout/ActivityCheckout;
.super Lorg/solovyev/android/checkout/UiCheckout;
.source "ActivityCheckout.java"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mIntentStarter:Lorg/solovyev/android/checkout/IntentStarter;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lorg/solovyev/android/checkout/Billing;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lorg/solovyev/android/checkout/UiCheckout;-><init>(Ljava/lang/Object;Lorg/solovyev/android/checkout/Billing;)V

    .line 50
    new-instance p2, Lorg/solovyev/android/checkout/ActivityCheckout$1;

    invoke-direct {p2, p0}, Lorg/solovyev/android/checkout/ActivityCheckout$1;-><init>(Lorg/solovyev/android/checkout/ActivityCheckout;)V

    iput-object p2, p0, Lorg/solovyev/android/checkout/ActivityCheckout;->mIntentStarter:Lorg/solovyev/android/checkout/IntentStarter;

    .line 60
    iput-object p1, p0, Lorg/solovyev/android/checkout/ActivityCheckout;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lorg/solovyev/android/checkout/ActivityCheckout;)Landroid/app/Activity;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/solovyev/android/checkout/ActivityCheckout;->mActivity:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method protected makeIntentStarter()Lorg/solovyev/android/checkout/IntentStarter;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/solovyev/android/checkout/ActivityCheckout;->mIntentStarter:Lorg/solovyev/android/checkout/IntentStarter;

    return-object v0
.end method
