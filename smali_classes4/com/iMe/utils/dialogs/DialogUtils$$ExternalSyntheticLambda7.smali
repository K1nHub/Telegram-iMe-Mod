.class public final synthetic Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

.field public final synthetic f$1:Lcom/iMe/fork/utils/Callbacks$Callback1;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EditTextBoldCursor;Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iput-object p2, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda7;->f$1:Lcom/iMe/fork/utils/Callbacks$Callback1;

    iput-object p3, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda7;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/EditTextBoldCursor;

    iget-object v1, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda7;->f$1:Lcom/iMe/fork/utils/Callbacks$Callback1;

    iget-object v2, p0, Lcom/iMe/utils/dialogs/DialogUtils$$ExternalSyntheticLambda7;->f$2:Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/iMe/utils/dialogs/DialogUtils;->$r8$lambda$GovdRP9os2TMyOZK6QRC0LFBp_A(Lorg/telegram/ui/Components/EditTextBoldCursor;Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/ActionBar/AlertDialog$Builder;Landroid/content/DialogInterface;I)V

    return-void
.end method
