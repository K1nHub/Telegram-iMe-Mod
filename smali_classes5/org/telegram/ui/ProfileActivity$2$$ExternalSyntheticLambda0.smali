.class public final synthetic Lorg/telegram/ui/ProfileActivity$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/profile/ProfilePresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/profile/ProfilePresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$2$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$2$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/ui/profile/ProfilePresenter;

    invoke-virtual {v0}, Lcom/smedialink/ui/profile/ProfilePresenter;->startTwitterAuthFlow()V

    return-void
.end method
