.class public final enum Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;
.super Ljava/lang/Enum;
.source "Subscription.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

.field public static final enum Subscribed:Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

.field public static final enum Unsubscribed:Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;


# direct methods
.method private static final synthetic $values()[Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    sget-object v1, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;->Unsubscribed:Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;->Subscribed:Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    const-string v1, "Unsubscribed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;->Unsubscribed:Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    .line 5
    new-instance v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    const-string v1, "Subscribed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;->Subscribed:Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    invoke-static {}, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;->$values()[Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    move-result-object v0

    sput-object v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;->$VALUES:[Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;
    .locals 1

    const-class v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    return-object p0
.end method

.method public static values()[Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;
    .locals 1

    sget-object v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;->$VALUES:[Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    return-object v0
.end method


# virtual methods
.method public final isSubscribed()Z
    .locals 1

    .line 8
    sget-object v0, Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;->Subscribed:Lorg/orbitmvi/orbit/internal/repeatonsubscription/Subscription;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
