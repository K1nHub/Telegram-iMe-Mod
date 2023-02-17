.class public final synthetic Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .locals 1

    iget-object v0, p0, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl;->$r8$lambda$RqhTbMFdDdbZWlbzGVeTCZkVWN4(Ljava/util/List;Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
