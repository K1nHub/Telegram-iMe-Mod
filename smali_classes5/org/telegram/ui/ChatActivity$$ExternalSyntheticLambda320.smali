.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda320;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/FiltersListBottomSheet$FiltersListBottomSheetDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda320;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda320;->f$1:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final didSelectFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda320;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda320;->f$1:Ljava/util/ArrayList;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$HD1C44Y3VtlQ9YcW1Elw9I5uF44(Lorg/telegram/ui/ChatActivity;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method
