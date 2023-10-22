.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda31;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Ljava/lang/Runnable;

.field public final synthetic f$2:Lorg/telegram/messenger/ChannelBoostsController;

.field public final synthetic f$3:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;Lorg/telegram/messenger/ChannelBoostsController;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda31;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda31;->f$1:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda31;->f$2:Lorg/telegram/messenger/ChannelBoostsController;

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda31;->f$3:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda31;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda31;->f$1:Ljava/lang/Runnable;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda31;->f$2:Lorg/telegram/messenger/ChannelBoostsController;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda31;->f$3:Ljava/lang/Long;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$pW9Xx5Cwa7Dm-en8GtTJjSkKRRs(Lorg/telegram/ui/LaunchActivity;Ljava/lang/Runnable;Lorg/telegram/messenger/ChannelBoostsController;Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$TL_stories_boostsStatus;)V

    return-void
.end method
