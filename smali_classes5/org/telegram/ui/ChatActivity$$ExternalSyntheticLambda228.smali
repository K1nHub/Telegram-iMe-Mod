.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda228;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Lcom/iMe/fork/controller/MultiPanelController;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/content/SharedPreferences;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lcom/iMe/fork/controller/MultiPanelController;ZLandroid/content/SharedPreferences;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda228;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda228;->f$1:Lcom/iMe/fork/controller/MultiPanelController;

    iput-boolean p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda228;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda228;->f$3:Landroid/content/SharedPreferences;

    iput p5, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda228;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda228;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda228;->f$1:Lcom/iMe/fork/controller/MultiPanelController;

    iget-boolean v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda228;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda228;->f$3:Landroid/content/SharedPreferences;

    iget v4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda228;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$WIC-paH7dxRperAOJHhlmkWhsMg(Lorg/telegram/ui/ChatActivity;Lcom/iMe/fork/controller/MultiPanelController;ZLandroid/content/SharedPreferences;I)V

    return-void
.end method
