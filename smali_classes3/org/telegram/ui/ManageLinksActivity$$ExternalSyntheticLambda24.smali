.class public final synthetic Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda24;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ManageLinksActivity;

.field public final synthetic f$1:Lorg/telegram/ui/Components/LinkActionView;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda24;->f$0:Lorg/telegram/ui/ManageLinksActivity;

    iput-object p2, p0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda24;->f$1:Lorg/telegram/ui/Components/LinkActionView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda24;->f$0:Lorg/telegram/ui/ManageLinksActivity;

    iget-object v1, p0, Lorg/telegram/ui/ManageLinksActivity$$ExternalSyntheticLambda24;->f$1:Lorg/telegram/ui/Components/LinkActionView;

    check-cast p1, Lcom/smedialink/model/wallet/select/SelectableToken;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ManageLinksActivity;->$r8$lambda$GJtQE4B8yDdzdgphX5SGChplcJc(Lorg/telegram/ui/ManageLinksActivity;Lorg/telegram/ui/Components/LinkActionView;Lcom/smedialink/model/wallet/select/SelectableToken;)V

    return-void
.end method
