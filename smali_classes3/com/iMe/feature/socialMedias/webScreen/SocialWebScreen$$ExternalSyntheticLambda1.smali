.class public final synthetic Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback;


# instance fields
.field public final synthetic f$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/iMe/feature/socialMedias/webScreen/SocialWebScreen$$ExternalSyntheticLambda1;->f$0:Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;

    invoke-virtual {v0}, Lcom/iMe/feature/socialMedias/webScreen/SocialWebViewModel;->onResetClicked()V

    return-void
.end method
