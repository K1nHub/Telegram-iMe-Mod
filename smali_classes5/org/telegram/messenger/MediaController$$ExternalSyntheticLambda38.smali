.class public final synthetic Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/AlertDialog;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda38;->f$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput p2, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda38;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda38;->f$0:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget v1, p0, Lorg/telegram/messenger/MediaController$$ExternalSyntheticLambda38;->f$1:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->$r8$lambda$iRoRTSaaXwJdT03JV_o285WGycY(Lorg/telegram/ui/ActionBar/AlertDialog;I)V

    return-void
.end method
