.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->$r8$lambda$qJsgpIRcJMZOQsXIfMeaai9H0Mg(Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/tgnet/TLRPC$TL_premiumGiftCodeOption;Landroid/content/DialogInterface;I)V

    return-void
.end method
