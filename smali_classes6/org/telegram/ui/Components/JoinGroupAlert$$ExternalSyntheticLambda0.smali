.class public final synthetic Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/JoinGroupAlert;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/JoinGroupAlert;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/Components/JoinGroupAlert;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/JoinGroupAlert$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/Components/JoinGroupAlert;->$r8$lambda$cJYPrnvMcqVddx78a7kUAwz4zVw(Lorg/telegram/ui/Components/JoinGroupAlert;ZLandroid/content/DialogInterface;)V

    return-void
.end method
