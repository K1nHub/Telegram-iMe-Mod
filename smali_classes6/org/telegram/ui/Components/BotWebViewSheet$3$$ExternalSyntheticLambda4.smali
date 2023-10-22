.class public final synthetic Lorg/telegram/ui/Components/BotWebViewSheet$3$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/BotWebViewSheet$3;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/BotWebViewSheet$3;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/BotWebViewSheet$3$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/BotWebViewSheet$3;

    iput-object p2, p0, Lorg/telegram/ui/Components/BotWebViewSheet$3$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p3, p0, Lorg/telegram/ui/Components/BotWebViewSheet$3$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/Components/BotWebViewSheet$3$$ExternalSyntheticLambda4;->f$3:Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/BotWebViewSheet$3$$ExternalSyntheticLambda4;->f$0:Lorg/telegram/ui/Components/BotWebViewSheet$3;

    iget-object v2, v0, Lorg/telegram/ui/Components/BotWebViewSheet$3$$ExternalSyntheticLambda4;->f$1:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v0, Lorg/telegram/ui/Components/BotWebViewSheet$3$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    iget-object v4, v0, Lorg/telegram/ui/Components/BotWebViewSheet$3$$ExternalSyntheticLambda4;->f$3:Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/BotWebViewSheet$3;->$r8$lambda$Y7b51dA8UxNF4ybg72PcqO012ds(Lorg/telegram/ui/Components/BotWebViewSheet$3;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/Components/OverlayActionBarLayoutDialog;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZLorg/telegram/ui/TopicsFragment;Lcom/iMe/fork/utils/Callbacks$Callback1;)Z

    move-result v1

    return v1
.end method
