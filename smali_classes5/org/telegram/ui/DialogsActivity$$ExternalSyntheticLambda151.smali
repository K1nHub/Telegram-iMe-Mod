.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda151;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/Components/FiltersListBottomSheet$FiltersListBottomSheetDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda151;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda151;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda151;->f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;

    return-void
.end method


# virtual methods
.method public final didSelectFilter(Lorg/telegram/messenger/MessagesController$DialogFilter;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda151;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda151;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda151;->f$2:Lorg/telegram/messenger/MessagesController$DialogFilter;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$rNhDcNyD9c2c9-ffgUJ8bfIhruE(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Lorg/telegram/messenger/MessagesController$DialogFilter;Lorg/telegram/messenger/MessagesController$DialogFilter;)V

    return-void
.end method
