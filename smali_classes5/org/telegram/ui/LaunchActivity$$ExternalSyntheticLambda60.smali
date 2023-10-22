.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda60;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;JILorg/telegram/ui/ChatActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda60;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-wide p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda60;->f$1:J

    iput p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda60;->f$2:I

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda60;->f$3:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda60;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-wide v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda60;->f$1:J

    iget v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda60;->f$2:I

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda60;->f$3:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$WlsfhRzEDXntBWsvAK_OtXxYdLQ(Lorg/telegram/ui/LaunchActivity;JILorg/telegram/ui/ChatActivity;)V

    return-void
.end method
