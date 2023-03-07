.class public final synthetic Lorg/fork/ui/view/ChatAttachAlertWalletLayout$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lorg/fork/ui/view/ChatAttachAlertWalletLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$$ExternalSyntheticLambda2;->f$1:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$$ExternalSyntheticLambda2;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lorg/fork/ui/view/ChatAttachAlertWalletLayout$$ExternalSyntheticLambda2;->f$1:Lorg/fork/ui/view/ChatAttachAlertWalletLayout;

    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-static {v0, v1, p1}, Lorg/fork/ui/view/ChatAttachAlertWalletLayout;->$r8$lambda$KKXJ5uSrh_dHHNqK1pCj0c2IwKw(Lkotlin/jvm/functions/Function1;Lorg/fork/ui/view/ChatAttachAlertWalletLayout;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    return-void
.end method
