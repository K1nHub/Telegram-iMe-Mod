.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Ljava/lang/Long;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;->f$1:Ljava/lang/Long;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;->f$2:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;->f$1:Ljava/lang/Long;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;->f$2:Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda29;->f$3:Ljava/lang/Runnable;

    check-cast p1, Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$iHFwd_H6zU0fm-3e0w0Lzra5go8(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;Ljava/lang/Runnable;Lorg/telegram/messenger/ChannelBoostsController$CanApplyBoost;)V

    return-void
.end method
