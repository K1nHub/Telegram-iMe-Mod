.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda283;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda283;->f$0:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda283;->f$0:Lorg/telegram/ui/ChatActivity;

    check-cast p1, Lorg/telegram/messenger/MessageObject;

    invoke-static {v0, p1}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$xnx3Yk70ECSXGZJspyBu3iQCNm8(Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;)I

    move-result p1

    return p1
.end method
