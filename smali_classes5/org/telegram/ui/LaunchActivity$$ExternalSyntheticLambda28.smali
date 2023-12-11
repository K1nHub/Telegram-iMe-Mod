.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/messenger/browser/Browser$Progress;

.field public final synthetic f$2:Ljava/lang/Runnable;

.field public final synthetic f$3:Lorg/telegram/messenger/ChannelBoostsController;

.field public final synthetic f$4:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/Runnable;Lorg/telegram/messenger/ChannelBoostsController;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda28;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda28;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda28;->f$2:Ljava/lang/Runnable;

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda28;->f$3:Lorg/telegram/messenger/ChannelBoostsController;

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda28;->f$4:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda28;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda28;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda28;->f$2:Ljava/lang/Runnable;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda28;->f$3:Lorg/telegram/messenger/ChannelBoostsController;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda28;->f$4:Ljava/lang/Long;

    move-object v5, p1

    check-cast v5, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$6DGzInGnxcNOtISRaH4hAc-shs4(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/Runnable;Lorg/telegram/messenger/ChannelBoostsController;Ljava/lang/Long;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method
