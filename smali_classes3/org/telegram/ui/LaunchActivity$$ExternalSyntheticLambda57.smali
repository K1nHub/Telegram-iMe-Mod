.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/messenger/browser/Browser$Progress;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda57;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda57;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda57;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda57;->f$1:Lorg/telegram/messenger/browser/Browser$Progress;

    invoke-static {v0, v1}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$kICyM3eCvXemj7B2ZLhzCxGHJew(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method
