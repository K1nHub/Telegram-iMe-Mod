.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

.field public final synthetic f$2:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(ZLorg/telegram/ui/ActionBar/AlertDialog;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda39;->f$0:Z

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda39;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda39;->f$2:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda39;->f$0:Z

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda39;->f$1:Lorg/telegram/ui/ActionBar/AlertDialog;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda39;->f$2:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$Wk5gzoIt9r7Lb3FUeZ5Aky0GZTg(ZLorg/telegram/ui/ActionBar/AlertDialog;Landroid/app/Activity;)V

    return-void
.end method
