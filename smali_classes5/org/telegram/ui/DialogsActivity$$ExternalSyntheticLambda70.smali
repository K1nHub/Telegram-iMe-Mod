.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda70;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iMe/fork/utils/Callbacks$Callback1;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:Lorg/telegram/ui/DialogsActivity$ViewPage;

.field public final synthetic f$2:Lcom/iMe/fork/enums/SortingFilter;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;Lcom/iMe/fork/enums/SortingFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda70;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda70;->f$1:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda70;->f$2:Lcom/iMe/fork/enums/SortingFilter;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda70;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda70;->f$1:Lorg/telegram/ui/DialogsActivity$ViewPage;

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda70;->f$2:Lcom/iMe/fork/enums/SortingFilter;

    check-cast p1, Ljava/util/Set;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$I8k7tsMlXNhFd3i_7Ukkb3lg748(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/DialogsActivity$ViewPage;Lcom/iMe/fork/enums/SortingFilter;Ljava/util/Set;)V

    return-void
.end method
