.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;

.field public final synthetic f$1:J

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

.field public final synthetic f$4:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;JJLorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;

    iput-wide p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda19;->f$1:J

    iput-wide p4, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda19;->f$2:J

    iput-object p6, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda19;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    iput-object p7, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda19;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;

    iget-wide v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda19;->f$1:J

    iget-wide v3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda19;->f$2:J

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda19;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda19;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->$r8$lambda$Sj2YIBPZCLNKhx7M4tLKhwf3Xj4(Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;JJLorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method
