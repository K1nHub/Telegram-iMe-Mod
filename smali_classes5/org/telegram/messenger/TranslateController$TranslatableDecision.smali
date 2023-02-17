.class Lorg/telegram/messenger/TranslateController$TranslatableDecision;
.super Ljava/lang/Object;
.source "TranslateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/TranslateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TranslatableDecision"
.end annotation


# instance fields
.field certainlyNotTranslatable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field certainlyTranslatable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/messenger/TranslateController;

.field unknown:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/telegram/messenger/TranslateController;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/telegram/messenger/TranslateController$TranslatableDecision;->this$0:Lorg/telegram/messenger/TranslateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TranslateController$TranslatableDecision;->certainlyTranslatable:Ljava/util/Set;

    .line 53
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TranslateController$TranslatableDecision;->unknown:Ljava/util/Set;

    .line 54
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/TranslateController$TranslatableDecision;->certainlyNotTranslatable:Ljava/util/Set;

    return-void
.end method
