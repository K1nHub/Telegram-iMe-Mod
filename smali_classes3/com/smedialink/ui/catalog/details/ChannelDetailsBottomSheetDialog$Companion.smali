.class public final Lcom/smedialink/ui/catalog/details/ChannelDetailsBottomSheetDialog$Companion;
.super Ljava/lang/Object;
.source "ChannelDetailsBottomSheetDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/catalog/details/ChannelDetailsBottomSheetDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/smedialink/ui/catalog/details/ChannelDetailsBottomSheetDialog$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lcom/smedialink/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/storage/domain/model/catalog/ChatType;Lorg/telegram/ui/ActionBar/BaseFragment;)Lcom/smedialink/ui/catalog/details/ChannelDetailsBottomSheetDialog;
    .locals 1

    const-string v0, "campaign"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    new-instance v0, Lcom/smedialink/ui/catalog/details/ChannelDetailsBottomSheetDialog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smedialink/ui/catalog/details/ChannelDetailsBottomSheetDialog;-><init>(Lcom/smedialink/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/smedialink/storage/domain/model/catalog/ChatType;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    return-object v0
.end method
