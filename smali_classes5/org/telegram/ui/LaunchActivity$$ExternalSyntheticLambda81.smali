.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda81;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_botApp;

.field public final synthetic f$4:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_messages_botApp;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda81;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda81;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda81;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda81;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_botApp;

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda81;->f$4:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda81;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda81;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda81;->f$1:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda81;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda81;->f$3:Lorg/telegram/tgnet/TLRPC$TL_messages_botApp;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda81;->f$4:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda81;->f$5:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$leLF_Mmj-jBqBtFI1ju__K-wnsw(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_messages_botApp;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/String;)V

    return-void
.end method
