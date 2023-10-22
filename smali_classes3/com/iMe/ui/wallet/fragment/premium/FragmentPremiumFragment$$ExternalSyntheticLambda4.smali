.class public final synthetic Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ContactsActivity;

.field public final synthetic f$1:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/ContactsActivity;

    iput-object p2, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda4;->f$1:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;

    return-void
.end method


# virtual methods
.method public final didSelectContact(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V
    .locals 2

    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/ContactsActivity;

    iget-object v1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda4;->f$1:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->$r8$lambda$JL0x6C99IAi7dPnsUvGZ84LRIKU(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V

    return-void
.end method
