.class public final synthetic Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EditTextCaption;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/iMe/fork/controller/FormattingTextController;

.field public final synthetic f$4:Lorg/telegram/ui/Components/EditTextBoldCursor;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EditTextCaption;IILcom/iMe/fork/controller/FormattingTextController;Lorg/telegram/ui/Components/EditTextBoldCursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/EditTextCaption;

    iput p2, p0, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;->f$3:Lcom/iMe/fork/controller/FormattingTextController;

    iput-object p5, p0, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;->f$4:Lorg/telegram/ui/Components/EditTextBoldCursor;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/EditTextCaption;

    iget v1, p0, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;->f$3:Lcom/iMe/fork/controller/FormattingTextController;

    iget-object v4, p0, Lorg/telegram/ui/Components/EditTextCaption$$ExternalSyntheticLambda0;->f$4:Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/EditTextCaption;->$r8$lambda$fzno8kLI4kC3AdACmCzhC2KpQtw(Lorg/telegram/ui/Components/EditTextCaption;IILcom/iMe/fork/controller/FormattingTextController;Lorg/telegram/ui/Components/EditTextBoldCursor;Landroid/content/DialogInterface;I)V

    return-void
.end method
