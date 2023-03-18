.class final Lcom/smedialink/bots/data/SmartReplier$splitLemmas$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SmartReplier.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/bots/data/SmartReplier;->splitLemmas(Lcom/smedialink/bots/domain/model/BotLanguage;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/bots/data/SmartReplier$splitLemmas$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/bots/data/SmartReplier$splitLemmas$2;

    invoke-direct {v0}, Lcom/smedialink/bots/data/SmartReplier$splitLemmas$2;-><init>()V

    sput-object v0, Lcom/smedialink/bots/data/SmartReplier$splitLemmas$2;->INSTANCE:Lcom/smedialink/bots/data/SmartReplier$splitLemmas$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 119
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smedialink/bots/data/SmartReplier$splitLemmas$2;->invoke(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).toLowerCase()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
