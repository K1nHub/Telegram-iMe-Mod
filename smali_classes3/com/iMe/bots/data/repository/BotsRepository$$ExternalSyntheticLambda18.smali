.class public final synthetic Lcom/iMe/bots/data/repository/BotsRepository$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iMe/bots/data/repository/BotsRepository$$ExternalSyntheticLambda18;->f$0:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/iMe/bots/data/repository/BotsRepository$$ExternalSyntheticLambda18;->f$0:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, p1}, Lcom/iMe/bots/data/repository/BotsRepository;->$r8$lambda$L0vBehrwAXs6KI0SAbDlzu8Oq6Q(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/CompletableSource;

    move-result-object p1

    return-object p1
.end method
