.class public final synthetic Lcom/iMe/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# instance fields
.field public final synthetic f$0:Lcom/iMe/fork/ui/view/FloatingActionButton;


# direct methods
.method public synthetic constructor <init>(Lcom/iMe/fork/ui/view/FloatingActionButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda2;->f$0:Lcom/iMe/fork/ui/view/FloatingActionButton;

    return-void
.end method


# virtual methods
.method public final didSetColor()V
    .locals 1

    iget-object v0, p0, Lcom/iMe/ui/pager/TelegramViewPagerFragment$$ExternalSyntheticLambda2;->f$0:Lcom/iMe/fork/ui/view/FloatingActionButton;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->updateColors()V

    return-void
.end method

.method public synthetic onAnimationProgress(F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate$-CC;->$default$onAnimationProgress(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;F)V

    return-void
.end method
