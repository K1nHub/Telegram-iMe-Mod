.class public final synthetic Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LaunchActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$Chat;

.field public final synthetic f$2:Ljava/lang/Integer;

.field public final synthetic f$3:Ljava/lang/Integer;

.field public final synthetic f$4:Ljava/util/ArrayList;

.field public final synthetic f$5:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

.field public final synthetic f$6:Ljava/lang/Integer;

.field public final synthetic f$7:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;Ljava/lang/Integer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$0:Lorg/telegram/ui/LaunchActivity;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$2:Ljava/lang/Integer;

    iput-object p4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$3:Ljava/lang/Integer;

    iput-object p5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$4:Ljava/util/ArrayList;

    iput-object p6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$5:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

    iput-object p7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$6:Ljava/lang/Integer;

    iput-object p8, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$7:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$1:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$2:Ljava/lang/Integer;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$3:Ljava/lang/Integer;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$4:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$5:Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$6:Ljava/lang/Integer;

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$$ExternalSyntheticLambda109;->f$7:Ljava/lang/Runnable;

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/LaunchActivity;->$r8$lambda$bX3wVb_tc1sHmyikzSLFnOQoBrI(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/tgnet/TLRPC$Chat;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$TL_messages_getDiscussionMessage;Ljava/lang/Integer;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
