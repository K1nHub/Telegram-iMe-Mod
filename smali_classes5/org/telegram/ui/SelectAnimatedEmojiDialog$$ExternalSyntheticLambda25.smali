.class public final synthetic Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/util/LinkedHashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/LinkedHashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda25;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda25;->f$1:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda25;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda25;->f$1:Ljava/util/LinkedHashSet;

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->$r8$lambda$268Cd8SS1_ChKptnahM4lLjr2X8(Ljava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    return-void
.end method
