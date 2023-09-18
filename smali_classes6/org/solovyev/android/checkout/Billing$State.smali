.class final enum Lorg/solovyev/android/checkout/Billing$State;
.super Ljava/lang/Enum;
.source "Billing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/solovyev/android/checkout/Billing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/solovyev/android/checkout/Billing$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/solovyev/android/checkout/Billing$State;

.field public static final enum CONNECTED:Lorg/solovyev/android/checkout/Billing$State;

.field public static final enum CONNECTING:Lorg/solovyev/android/checkout/Billing$State;

.field public static final enum DISCONNECTED:Lorg/solovyev/android/checkout/Billing$State;

.field public static final enum DISCONNECTING:Lorg/solovyev/android/checkout/Billing$State;

.field public static final enum FAILED:Lorg/solovyev/android/checkout/Billing$State;

.field public static final enum INITIAL:Lorg/solovyev/android/checkout/Billing$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 617
    new-instance v0, Lorg/solovyev/android/checkout/Billing$State;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/solovyev/android/checkout/Billing$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/solovyev/android/checkout/Billing$State;->INITIAL:Lorg/solovyev/android/checkout/Billing$State;

    .line 621
    new-instance v1, Lorg/solovyev/android/checkout/Billing$State;

    const-string v3, "CONNECTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/solovyev/android/checkout/Billing$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/solovyev/android/checkout/Billing$State;->CONNECTING:Lorg/solovyev/android/checkout/Billing$State;

    .line 625
    new-instance v3, Lorg/solovyev/android/checkout/Billing$State;

    const-string v5, "CONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/solovyev/android/checkout/Billing$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/solovyev/android/checkout/Billing$State;->CONNECTED:Lorg/solovyev/android/checkout/Billing$State;

    .line 629
    new-instance v5, Lorg/solovyev/android/checkout/Billing$State;

    const-string v7, "DISCONNECTING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/solovyev/android/checkout/Billing$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/solovyev/android/checkout/Billing$State;->DISCONNECTING:Lorg/solovyev/android/checkout/Billing$State;

    .line 633
    new-instance v7, Lorg/solovyev/android/checkout/Billing$State;

    const-string v9, "DISCONNECTED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/solovyev/android/checkout/Billing$State;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/solovyev/android/checkout/Billing$State;->DISCONNECTED:Lorg/solovyev/android/checkout/Billing$State;

    .line 637
    new-instance v9, Lorg/solovyev/android/checkout/Billing$State;

    const-string v11, "FAILED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/solovyev/android/checkout/Billing$State;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/solovyev/android/checkout/Billing$State;->FAILED:Lorg/solovyev/android/checkout/Billing$State;

    const/4 v11, 0x6

    new-array v11, v11, [Lorg/solovyev/android/checkout/Billing$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 613
    sput-object v11, Lorg/solovyev/android/checkout/Billing$State;->$VALUES:[Lorg/solovyev/android/checkout/Billing$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 613
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/solovyev/android/checkout/Billing$State;
    .locals 1

    .line 613
    const-class v0, Lorg/solovyev/android/checkout/Billing$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/solovyev/android/checkout/Billing$State;

    return-object p0
.end method

.method public static values()[Lorg/solovyev/android/checkout/Billing$State;
    .locals 1

    .line 613
    sget-object v0, Lorg/solovyev/android/checkout/Billing$State;->$VALUES:[Lorg/solovyev/android/checkout/Billing$State;

    invoke-virtual {v0}, [Lorg/solovyev/android/checkout/Billing$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/solovyev/android/checkout/Billing$State;

    return-object v0
.end method
