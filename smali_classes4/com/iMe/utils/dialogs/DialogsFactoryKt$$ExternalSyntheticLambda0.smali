.class public final synthetic Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lcom/iMe/fork/utils/Callbacks$Callback1;

.field public final synthetic f$2:Lorg/telegram/ui/Cells/CheckBoxCell;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/Cells/CheckBoxCell;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$1:Lcom/iMe/fork/utils/Callbacks$Callback1;

    iput-object p3, p0, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/ui/Cells/CheckBoxCell;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$1:Lcom/iMe/fork/utils/Callbacks$Callback1;

    iget-object v2, p0, Lcom/iMe/utils/dialogs/DialogsFactoryKt$$ExternalSyntheticLambda0;->f$2:Lorg/telegram/ui/Cells/CheckBoxCell;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->$r8$lambda$wNDY-xjsCCxbjhnTT-rog3ONFe4(Ljava/util/List;Lcom/iMe/fork/utils/Callbacks$Callback1;Lorg/telegram/ui/Cells/CheckBoxCell;Landroid/content/DialogInterface;I)V

    return-void
.end method
