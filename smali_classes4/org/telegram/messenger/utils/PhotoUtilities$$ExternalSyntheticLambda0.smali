.class public final synthetic Lorg/telegram/messenger/utils/PhotoUtilities$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/INavigationLayout;


# direct methods
.method public synthetic constructor <init>(ILorg/telegram/ui/ActionBar/INavigationLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/utils/PhotoUtilities$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Lorg/telegram/messenger/utils/PhotoUtilities$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/ActionBar/INavigationLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/utils/PhotoUtilities$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Lorg/telegram/messenger/utils/PhotoUtilities$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-static {v0, v1}, Lorg/telegram/messenger/utils/PhotoUtilities;->$r8$lambda$_TyNT_1aTdb85KicUyCm7qeul_g(ILorg/telegram/ui/ActionBar/INavigationLayout;)V

    return-void
.end method
