.class public final synthetic Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/LocationController$LocationFetchCallback;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Landroid/location/Location;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/LocationController$LocationFetchCallback;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/LocationController$LocationFetchCallback;

    iput-object p2, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda3;->f$3:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/LocationController$LocationFetchCallback;

    iget-object v1, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda3;->f$3:Landroid/location/Location;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/LocationController;->$r8$lambda$daU4m3PUORsGezi-acfPem5N6hk(Lorg/telegram/messenger/LocationController$LocationFetchCallback;Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)V

    return-void
.end method
