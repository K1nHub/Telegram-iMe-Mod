.class public final synthetic Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PeerColorActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/PeerColorActivity;

    iput-object p2, p0, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/PeerColorActivity;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    check-cast p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/PeerColorActivity;->$r8$lambda$sz29LA9jy7utBpeHBwN6FqFTBpI(Lorg/telegram/ui/PeerColorActivity;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method
