.class Lcom/microsoft/appcenter/distribute/Distribute$10;
.super Ljava/lang/Object;
.source "Distribute.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/appcenter/distribute/Distribute;->showUpdateSetupFailedDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/microsoft/appcenter/distribute/Distribute;


# direct methods
.method constructor <init>(Lcom/microsoft/appcenter/distribute/Distribute;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1602
    iput-object p1, p0, Lcom/microsoft/appcenter/distribute/Distribute$10;->this$0:Lcom/microsoft/appcenter/distribute/Distribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 1606
    iget-object p2, p0, Lcom/microsoft/appcenter/distribute/Distribute$10;->this$0:Lcom/microsoft/appcenter/distribute/Distribute;

    invoke-static {p2, p1}, Lcom/microsoft/appcenter/distribute/Distribute;->access$900(Lcom/microsoft/appcenter/distribute/Distribute;Landroid/content/DialogInterface;)V

    return-void
.end method
