.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:J

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

.field public final synthetic f$4:Lorg/telegram/ui/ActionBar/BaseFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;Ljava/lang/String;JLorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda23;->f$0:Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda23;->f$1:Ljava/lang/String;

    iput-wide p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda23;->f$2:J

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda23;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    iput-object p6, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda23;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda23;->f$0:Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda23;->f$1:Ljava/lang/String;

    iget-wide v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda23;->f$2:J

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda23;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda23;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->$r8$lambda$kF6H9UiiTCqsqQJZknhN_8qVN9o(Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;Ljava/lang/String;JLorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-void
.end method
