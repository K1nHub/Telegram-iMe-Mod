.class final enum Lorg/solovyev/android/checkout/Checkout$State;
.super Ljava/lang/Enum;
.source "Checkout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Checkout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/solovyev/android/checkout/Checkout$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/solovyev/android/checkout/Checkout$State;

.field public static final enum INITIAL:Lorg/solovyev/android/checkout/Checkout$State;

.field public static final enum STARTED:Lorg/solovyev/android/checkout/Checkout$State;

.field public static final enum STOPPED:Lorg/solovyev/android/checkout/Checkout$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 321
    new-instance v0, Lorg/solovyev/android/checkout/Checkout$State;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/solovyev/android/checkout/Checkout$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/solovyev/android/checkout/Checkout$State;->INITIAL:Lorg/solovyev/android/checkout/Checkout$State;

    .line 322
    new-instance v1, Lorg/solovyev/android/checkout/Checkout$State;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/solovyev/android/checkout/Checkout$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/solovyev/android/checkout/Checkout$State;->STARTED:Lorg/solovyev/android/checkout/Checkout$State;

    .line 323
    new-instance v3, Lorg/solovyev/android/checkout/Checkout$State;

    const-string v5, "STOPPED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/solovyev/android/checkout/Checkout$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/solovyev/android/checkout/Checkout$State;->STOPPED:Lorg/solovyev/android/checkout/Checkout$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/solovyev/android/checkout/Checkout$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 320
    sput-object v5, Lorg/solovyev/android/checkout/Checkout$State;->$VALUES:[Lorg/solovyev/android/checkout/Checkout$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 320
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/solovyev/android/checkout/Checkout$State;
    .locals 1

    .line 320
    const-class v0, Lorg/solovyev/android/checkout/Checkout$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/solovyev/android/checkout/Checkout$State;

    return-object p0
.end method

.method public static values()[Lorg/solovyev/android/checkout/Checkout$State;
    .locals 1

    .line 320
    sget-object v0, Lorg/solovyev/android/checkout/Checkout$State;->$VALUES:[Lorg/solovyev/android/checkout/Checkout$State;

    invoke-virtual {v0}, [Lorg/solovyev/android/checkout/Checkout$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/solovyev/android/checkout/Checkout$State;

    return-object v0
.end method
