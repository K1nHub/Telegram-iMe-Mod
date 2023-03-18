.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/profile/ProfilePresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/profile/ProfilePresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda49;->f$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda49;->f$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    invoke-virtual {v0}, Lcom/smedialink/ui/profile/ProfilePresenter;->declineConnection()V

    return-void
.end method
