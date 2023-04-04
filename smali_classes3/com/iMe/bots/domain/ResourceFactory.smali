.class public interface abstract Lcom/iMe/bots/domain/ResourceFactory;
.super Ljava/lang/Object;
.source "ResourceFactory.kt"


# virtual methods
.method public abstract getBotMlModelPath(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract getBotResponsesList(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/Response;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getBotWordsBag(Ljava/lang/String;Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHolidaysResponses(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/iMe/bots/data/model/Response;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIntentValidatorMlPath(Ljava/lang/String;IZ)Ljava/lang/String;
.end method

.method public abstract getIntentValidatorResponses(Ljava/lang/String;IZ)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIntentValidatorWordsBag(Ljava/lang/String;IZ)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
