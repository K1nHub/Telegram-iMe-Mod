.class public final synthetic Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/Locale;

.field public final synthetic f$1:Landroid/location/Location;

.field public final synthetic f$2:Lorg/telegram/messenger/LocationController$LocationFetchCallback;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Locale;Landroid/location/Location;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda2;->f$0:Ljava/util/Locale;

    iput-object p2, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda2;->f$1:Landroid/location/Location;

    iput-object p3, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/messenger/LocationController$LocationFetchCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda2;->f$0:Ljava/util/Locale;

    iget-object v1, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda2;->f$1:Landroid/location/Location;

    iget-object v2, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/messenger/LocationController$LocationFetchCallback;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/LocationController;->$r8$lambda$rgKQEh_BctvqAX9GLzFxGwSK7oE(Ljava/util/Locale;Landroid/location/Location;Lorg/telegram/messenger/LocationController$LocationFetchCallback;)V

    return-void
.end method
