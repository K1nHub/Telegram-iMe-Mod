.class public final synthetic Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/TranslateController;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$StoryItem;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/messenger/TranslateController$StoryKey;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/messenger/TranslateController;

    iput-object p2, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda16;->f$1:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iput-object p3, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda16;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda16;->f$3:Lorg/telegram/messenger/TranslateController$StoryKey;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/messenger/TranslateController;

    iget-object v1, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda16;->f$1:Lorg/telegram/tgnet/TLRPC$StoryItem;

    iget-object v2, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda16;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/TranslateController$$ExternalSyntheticLambda16;->f$3:Lorg/telegram/messenger/TranslateController$StoryKey;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/TranslateController;->$r8$lambda$3pOF7nJ5pA6B-Nxhv_y855xpP8Q(Lorg/telegram/messenger/TranslateController;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/lang/String;Lorg/telegram/messenger/TranslateController$StoryKey;)V

    return-void
.end method
