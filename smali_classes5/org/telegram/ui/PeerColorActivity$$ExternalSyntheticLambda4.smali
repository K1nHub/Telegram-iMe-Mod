.class public final synthetic Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PeerColorActivity;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PeerColorActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/PeerColorActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/PeerColorActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity$$ExternalSyntheticLambda4;->f$1:Z

    check-cast p1, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/PeerColorActivity;->$r8$lambda$xu1-nLGiuUB7qK9GoeTpy3ad6RY(Lorg/telegram/ui/PeerColorActivity;ZLorg/telegram/tgnet/tl/TL_stories$TL_premium_boostsStatus;)V

    return-void
.end method
