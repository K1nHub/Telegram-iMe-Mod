.class public final synthetic Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;

.field public final synthetic f$1:Lorg/telegram/messenger/MessagesController;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;Lorg/telegram/messenger/MessagesController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/messenger/MessagesController;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter$$ExternalSyntheticLambda3;->f$1:Lorg/telegram/messenger/MessagesController;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;->$r8$lambda$-LQmgZ4xpgoycpXSHcCCdMyMQVI(Lorg/telegram/ui/Stories/recorder/GalleryListView$SearchAdapter;Lorg/telegram/messenger/MessagesController;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
