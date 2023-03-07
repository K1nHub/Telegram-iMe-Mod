.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda236;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;ZLjava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda236;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda236;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda236;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda236;->f$3:Ljava/util/ArrayList;

    iput p5, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda236;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda236;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda236;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda236;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda236;->f$3:Ljava/util/ArrayList;

    iget v4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda236;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$1if7YGejxlyUXfNewJDkTqYaVPo(Lorg/telegram/ui/ChatActivity;ZLjava/util/ArrayList;Ljava/util/ArrayList;I)V

    return-void
.end method
