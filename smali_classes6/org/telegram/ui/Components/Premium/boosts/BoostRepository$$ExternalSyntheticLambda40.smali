.class public final synthetic Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/android/billingclient/api/BillingResult;

.field public final synthetic f$3:Lorg/telegram/messenger/Utilities$Callback;

.field public final synthetic f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;->f$2:Lcom/android/billingclient/api/BillingResult;

    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p6, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;->f$5:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;->f$0:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;->f$2:Lcom/android/billingclient/api/BillingResult;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;->f$3:Lorg/telegram/messenger/Utilities$Callback;

    iget-object v4, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;->f$4:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v5, p0, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository$$ExternalSyntheticLambda40;->f$5:Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;

    move-object v6, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->$r8$lambda$fkv5ZnbCAoCZw8XBYftX_5scqGg(Lorg/telegram/messenger/Utilities$Callback;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_inputStorePaymentPremiumGiftCode;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
