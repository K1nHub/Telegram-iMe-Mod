.class public final synthetic Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iput-object p2, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$$ExternalSyntheticLambda11;->f$1:Lorg/telegram/messenger/Utilities$Callback;

    invoke-static {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->$r8$lambda$Xy0cUImLBZQALAZraLabqQAWkBw(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method
