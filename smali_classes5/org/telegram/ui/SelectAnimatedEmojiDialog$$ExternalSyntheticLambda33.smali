.class public final synthetic Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda33;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/LinkedHashSet;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Ljava/util/LinkedHashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda33;->f$0:Z

    iput-object p2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda33;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda33;->f$2:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda33;->f$0:Z

    iget-object v1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda33;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$$ExternalSyntheticLambda33;->f$2:Ljava/util/LinkedHashSet;

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/SelectAnimatedEmojiDialog;->$r8$lambda$l5-ld1YUg0ola9ge6ZPdxWd0r9E(ZLjava/lang/String;Ljava/util/LinkedHashSet;Ljava/lang/Runnable;)V

    return-void
.end method
