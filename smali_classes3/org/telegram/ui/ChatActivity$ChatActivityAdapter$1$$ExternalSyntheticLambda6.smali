.class public final synthetic Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$$ExternalSyntheticLambda6;->f$0:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->$r8$lambda$VXe7lXBVG8hiWLPzrNkposwR6ZQ(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V

    return-void
.end method
