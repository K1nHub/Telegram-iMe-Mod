.class final Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$presenter$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ChannelDetailsBottomSheetDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$presenter$2;->invoke()Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/koin/core/parameter/ParametersHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $campaign:Lcom/iMe/model/catalog/CampaignItem;

.field final synthetic $chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field final synthetic this$0:Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$presenter$2$1;->$campaign:Lcom/iMe/model/catalog/CampaignItem;

    iput-object p2, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$presenter$2$1;->$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p3, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$presenter$2$1;->this$0:Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$presenter$2$1;->invoke()Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/koin/core/parameter/ParametersHolder;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$presenter$2$1;->$campaign:Lcom/iMe/model/catalog/CampaignItem;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$presenter$2$1;->$chat:Lorg/telegram/tgnet/TLRPC$Chat;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$presenter$2$1;->this$0:Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;

    invoke-static {v1}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->access$getChatType$p(Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;)Lcom/iMe/storage/domain/model/catalog/ChatType;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lorg/koin/core/parameter/ParametersHolderKt;->parametersOf([Ljava/lang/Object;)Lorg/koin/core/parameter/ParametersHolder;

    move-result-object v0

    return-object v0
.end method
