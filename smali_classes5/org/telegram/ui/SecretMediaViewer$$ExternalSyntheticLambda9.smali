.class public final synthetic Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/SecretMediaViewer;

.field public final synthetic f$1:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/SecretMediaViewer;

    iput-object p2, p0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/SecretMediaViewer;

    iget-object v1, p0, Lorg/telegram/ui/SecretMediaViewer$$ExternalSyntheticLambda9;->f$1:Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-static {v0, v1}, Lorg/telegram/ui/SecretMediaViewer;->$r8$lambda$tKJBcaoVWsGRkwjf-kTT2gyBcRQ(Lorg/telegram/ui/SecretMediaViewer;Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;)V

    return-void
.end method
