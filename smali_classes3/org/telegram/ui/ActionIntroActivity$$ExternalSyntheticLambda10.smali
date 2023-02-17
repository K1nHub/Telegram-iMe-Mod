.class public final synthetic Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/fork/utils/Callbacks$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ActionIntroActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ActionIntroActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/ActionIntroActivity;

    return-void
.end method


# virtual methods
.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/ActionIntroActivity$$ExternalSyntheticLambda10;->f$0:Lorg/telegram/ui/ActionIntroActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method
