.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Lorg/telegram/messenger/browser/Browser$Progress;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

.field public final synthetic f$5:Landroid/content/Context;

.field public final synthetic f$6:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;JLorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;->f$2:Ljava/lang/String;

    iput-wide p4, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;->f$3:J

    iput-object p6, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;->f$4:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    iput-object p7, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;->f$5:Landroid/content/Context;

    iput-object p8, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;->f$6:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 9

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;->f$2:Ljava/lang/String;

    iget-wide v3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;->f$3:J

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;->f$4:Lorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;

    iget-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;->f$5:Landroid/content/Context;

    iget-object v7, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda26;->f$6:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v8, p1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->$r8$lambda$Upo6BLj6wv_SDxz5v6acP04SsRM(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/browser/Browser$Progress;Ljava/lang/String;JLorg/telegram/tgnet/TLRPC$TL_messageMediaGiveaway;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLRPC$payments_GiveawayInfo;)V

    return-void
.end method
