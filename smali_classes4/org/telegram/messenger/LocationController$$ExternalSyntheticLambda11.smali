.class public final synthetic Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/LocationController;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/LocationController;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/LocationController;

    iput p2, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda11;->f$1:I

    iput-wide p3, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda11;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/LocationController;

    iget v1, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda11;->f$1:I

    iget-wide v2, p0, Lorg/telegram/messenger/LocationController$$ExternalSyntheticLambda11;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/LocationController;->$r8$lambda$BmlCbhmBtGL9IcJnRcZ_yqGK3_s(Lorg/telegram/messenger/LocationController;IJ)V

    return-void
.end method
