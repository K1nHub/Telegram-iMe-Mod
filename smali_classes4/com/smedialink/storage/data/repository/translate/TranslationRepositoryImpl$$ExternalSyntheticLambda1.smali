.class public final synthetic Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl;

    iput-object p2, p0, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda1;->f$0:Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl;

    iget-object v1, p0, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl;->$r8$lambda$w58hMjM1yQqPy7bgYzspeamwmeg(Lcom/smedialink/storage/data/repository/translate/TranslationRepositoryImpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/CharSequence;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
