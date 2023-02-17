.class public final synthetic Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter$$ExternalSyntheticLambda0;->f$0:Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0, p1}, Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;->$r8$lambda$3Piur2jdO8mqEkmtloEJ8_n7PyI(Lcom/smedialink/ui/catalog/details/ChannelDetailsPresenter;Lorg/telegram/tgnet/TLRPC$Chat;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
