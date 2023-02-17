.class public final synthetic Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$$ExternalSyntheticLambda1;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$$ExternalSyntheticLambda1;->f$0:Z

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, p1}, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;->$r8$lambda$dKHWQOjn5bV2IUupLwgsBZv8c20(ZLorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
