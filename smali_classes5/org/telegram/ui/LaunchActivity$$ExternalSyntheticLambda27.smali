.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/exoplayer2/util/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$4:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$5:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$6:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$7:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;IJLjava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$1:I

    iput-wide p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$2:J

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$3:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$4:Lorg/telegram/ui/DialogsActivity;

    iput-object p7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$5:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$6:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p9, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$7:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$1:I

    iget-wide v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$2:J

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$3:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$4:Lorg/telegram/ui/DialogsActivity;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$5:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$6:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda27;->f$7:Ljava/lang/String;

    move-object v9, p1

    check-cast v9, Ljava/lang/Boolean;

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$9gOMWP5MECJ7u7gUlzDnXx6HxZg(Lorg/telegram/ui/LaunchActivity;IJLjava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/DialogsActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method
