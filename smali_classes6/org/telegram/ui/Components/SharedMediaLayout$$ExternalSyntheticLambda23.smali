.class public final synthetic Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;->f$1:I

    return-void
.end method


# virtual methods
.method public final didSetColor()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;->f$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$$ExternalSyntheticLambda23;->f$1:I

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->$r8$lambda$KfbZK4V98dDfItGW0ssy6t7Ivgs(Lorg/telegram/ui/Components/SharedMediaLayout;I)V

    return-void
.end method

.method public synthetic onAnimationProgress(F)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate$-CC;->$default$onAnimationProgress(Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;F)V

    return-void
.end method
