.class public final synthetic Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

.field public final synthetic f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iput-object p2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    iput-object p3, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;->f$0:Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;

    iget-object v1, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;->f$1:Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;

    iget-object v2, p0, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter$$ExternalSyntheticLambda5;->f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;->$r8$lambda$jbyi0s8Z_tx6L2dY6uynHF1IrUk(Lorg/telegram/ui/FiltersSetupActivity$ListAdapter;Lorg/telegram/tgnet/TLRPC$TL_dialogFilterSuggested;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method
