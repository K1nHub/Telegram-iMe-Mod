.class public final Lcom/smedialink/bots/data/model/bot/NeuroBot;
.super Ljava/lang/Object;
.source "NeuroBot.kt"

# interfaces
.implements Lcom/smedialink/bots/domain/AigramBot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/bots/data/model/bot/NeuroBot$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNeuroBot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NeuroBot.kt\ncom/smedialink/bots/data/model/bot/NeuroBot\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,247:1\n13694#2,3:248\n13694#2,3:255\n766#3:251\n857#3,2:252\n1054#3:254\n766#3:258\n857#3,2:259\n1054#3:261\n288#3,2:262\n288#3,2:264\n*S KotlinDebug\n*F\n+ 1 NeuroBot.kt\ncom/smedialink/bots/data/model/bot/NeuroBot\n*L\n91#1:248,3\n159#1:255,3\n98#1:251\n98#1:252,2\n102#1:254\n165#1:258\n165#1:259,2\n166#1:261\n171#1:262,2\n185#1:264,2\n*E\n"
.end annotation


# static fields
.field public static final CLASSIFIER_PROBABILITY_THRESHOLD:F = 0.9f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CLASSIFIER_PROBABILITY_THRESHOLD_ENG:F = 0.85f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/smedialink/bots/data/model/bot/NeuroBot$Companion;

.field public static final INTENTS_PROBABILITY_THRESHOLD:F = 0.5f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final botId:Ljava/lang/String;

.field private final classifier$delegate:Lkotlin/Lazy;

.field private final classifierResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smedialink/bots/data/model/Response;",
            ">;"
        }
    .end annotation
.end field

.field private final classifierWords:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final factory:Lcom/smedialink/bots/domain/ResourceFactory;

.field private final language:Lcom/smedialink/bots/domain/model/BotLanguage;

.field private final useAssets:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/smedialink/bots/data/model/bot/NeuroBot$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/bots/data/model/bot/NeuroBot$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/bots/data/model/bot/NeuroBot;->Companion:Lcom/smedialink/bots/data/model/bot/NeuroBot$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/smedialink/bots/domain/ResourceFactory;ZLcom/smedialink/bots/domain/model/BotLanguage;)V
    .locals 1

    const-string v0, "botId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/smedialink/bots/data/model/bot/NeuroBot;->botId:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/smedialink/bots/data/model/bot/NeuroBot;->factory:Lcom/smedialink/bots/domain/ResourceFactory;

    .line 22
    iput-boolean p3, p0, Lcom/smedialink/bots/data/model/bot/NeuroBot;->useAssets:Z

    .line 23
    iput-object p4, p0, Lcom/smedialink/bots/data/model/bot/NeuroBot;->language:Lcom/smedialink/bots/domain/model/BotLanguage;

    .line 27
    new-instance p1, Lcom/smedialink/bots/data/model/bot/NeuroBot$classifier$2;

    invoke-direct {p1, p0}, Lcom/smedialink/bots/data/model/bot/NeuroBot$classifier$2;-><init>(Lcom/smedialink/bots/data/model/bot/NeuroBot;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/bots/data/model/bot/NeuroBot;->classifier$delegate:Lkotlin/Lazy;

    .line 37
    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/smedialink/bots/domain/ResourceFactory;->getBotWordsBag(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/bots/data/model/bot/NeuroBot;->classifierWords:Ljava/util/Map;

    .line 41
    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, p3}, Lcom/smedialink/bots/domain/ResourceFactory;->getBotResponsesList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/bots/data/model/bot/NeuroBot;->classifierResponses:Ljava/util/List;

    if-eqz p3, :cond_0

    .line 46
    new-instance p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;

    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4, p3}, Lcom/smedialink/bots/domain/ResourceFactory;->getBotMlModelPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->setAssetFilePath(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->build()Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    move-result-object p1

    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;

    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p4}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4, p3}, Lcom/smedialink/bots/domain/ResourceFactory;->getBotMlModelPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->setFilePath(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->build()Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    move-result-object p1

    .line 54
    :goto_0
    invoke-static {}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->getInstance()Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->registerLocalModel(Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;)Z

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " registered"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NeuroBot"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final synthetic access$getOutputsFromModel(Lcom/smedialink/bots/data/model/bot/NeuroBot;Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;Lcom/google/firebase/ml/custom/FirebaseModelInputs;Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getOutputsFromModel(Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;Lcom/google/firebase/ml/custom/FirebaseModelInputs;Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getClassifier()Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/smedialink/bots/data/model/bot/NeuroBot;->classifier$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;

    return-object v0
.end method

.method private final getOutputsFromModel(Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;Lcom/google/firebase/ml/custom/FirebaseModelInputs;Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;",
            "Lcom/google/firebase/ml/custom/FirebaseModelInputs;",
            "Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 203
    new-instance v0, Lkotlin/coroutines/SafeContinuation;

    invoke-static {p4}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->intercepted(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/coroutines/SafeContinuation;-><init>(Lkotlin/coroutines/Continuation;)V

    if-eqz p1, :cond_0

    .line 204
    invoke-virtual {p1, p2, p3}, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->run(Lcom/google/firebase/ml/custom/FirebaseModelInputs;Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 205
    new-instance p2, Lcom/smedialink/bots/data/model/bot/NeuroBot$getOutputsFromModel$2$1;

    invoke-direct {p2, v0}, Lcom/smedialink/bots/data/model/bot/NeuroBot$getOutputsFromModel$2$1;-><init>(Lkotlin/coroutines/Continuation;)V

    new-instance p3, Lcom/smedialink/bots/data/model/bot/NeuroBot$sam$com_google_android_gms_tasks_OnSuccessListener$0;

    invoke-direct {p3, p2}, Lcom/smedialink/bots/data/model/bot/NeuroBot$sam$com_google_android_gms_tasks_OnSuccessListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 208
    new-instance p2, Lcom/smedialink/bots/data/model/bot/NeuroBot$getOutputsFromModel$2$2;

    invoke-direct {p2, v0}, Lcom/smedialink/bots/data/model/bot/NeuroBot$getOutputsFromModel$2$2;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 203
    :cond_0
    invoke-virtual {v0}, Lkotlin/coroutines/SafeContinuation;->getOrThrow()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_1

    invoke-static {p4}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/Continuation;)V

    :cond_1
    return-object p1
.end method

.method private final prepareInput(Ljava/util/List;Ljava/util/Map;)[[F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)[[F"
        }
    .end annotation

    .line 228
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [F

    .line 229
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 231
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [[F

    const/4 p2, 0x0

    aput-object v0, p1, p2

    return-object p1
.end method


# virtual methods
.method public getBotId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/smedialink/bots/data/model/bot/NeuroBot;->botId:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Lcom/smedialink/bots/domain/model/BotLanguage;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/smedialink/bots/data/model/bot/NeuroBot;->language:Lcom/smedialink/bots/domain/model/BotLanguage;

    return-object v0
.end method

.method public getResponse(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/smedialink/bots/data/model/Response;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;

    iget v4, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;

    invoke-direct {v3, v0, v2}, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;-><init>(Lcom/smedialink/bots/data/model/bot/NeuroBot;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 65
    iget v5, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->label:I

    const-string v6, " confirmed"

    const-string v8, " intent result "

    const-string v9, "null cannot be cast to non-null type kotlin.FloatArray"

    const-string v10, "null cannot be cast to non-null type kotlin.Array<*>"

    const/4 v11, 0x2

    const-string v12, "NeuroBot"

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v15, :cond_2

    if-ne v5, v11, :cond_1

    iget-object v1, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v4, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v3, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/smedialink/bots/data/model/bot/NeuroBot;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v16, v8

    move v14, v15

    goto/16 :goto_a

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v5, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/smedialink/bots/data/model/bot/NeuroBot;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 71
    iget-object v2, v0, Lcom/smedialink/bots/data/model/bot/NeuroBot;->classifierWords:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->prepareInput(Ljava/util/List;Ljava/util/Map;)[[F

    move-result-object v2

    .line 73
    new-instance v5, Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;

    invoke-direct {v5}, Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;-><init>()V

    .line 74
    invoke-virtual {v5, v2}, Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;->add(Ljava/lang/Object;)Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;->build()Lcom/google/firebase/ml/custom/FirebaseModelInputs;

    move-result-object v2

    .line 77
    new-instance v5, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;

    invoke-direct {v5}, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;-><init>()V

    new-array v13, v11, [I

    aput v15, v13, v14

    .line 78
    iget-object v7, v0, Lcom/smedialink/bots/data/model/bot/NeuroBot;->classifierWords:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    aput v7, v13, v15

    invoke-virtual {v5, v14, v15, v13}, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;->setInputFormat(II[I)Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;

    move-result-object v5

    new-array v7, v11, [I

    aput v15, v7, v14

    .line 79
    iget-object v13, v0, Lcom/smedialink/bots/data/model/bot/NeuroBot;->classifierResponses:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    aput v13, v7, v15

    invoke-virtual {v5, v14, v15, v7}, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;->setOutputFormat(II[I)Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;

    move-result-object v5

    .line 80
    invoke-virtual {v5}, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;->build()Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;

    move-result-object v5

    const-string v7, "Builder()\n              \u2026\n                .build()"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getClassifier()Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;

    move-result-object v7

    const-string v13, "classifierInputs"

    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->L$1:Ljava/lang/Object;

    iput v15, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->label:I

    invoke-direct {v0, v7, v2, v5, v3}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getOutputsFromModel(Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;Lcom/google/firebase/ml/custom/FirebaseModelInputs;Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    return-object v4

    :cond_4
    move-object v5, v0

    .line 84
    :goto_1
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/Object;

    .line 87
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 89
    new-instance v13, Ljava/util/LinkedHashMap;

    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 91
    aget-object v2, v2, v14

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [F

    .line 13695
    array-length v14, v2

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    if-ge v11, v14, :cond_5

    aget v0, v2, v11

    add-int/lit8 v17, v15, 0x1

    move-object/from16 p1, v2

    .line 92
    new-instance v2, Lcom/smedialink/bots/data/model/response/ValidationResponse;

    move/from16 v18, v14

    iget-object v14, v5, Lcom/smedialink/bots/data/model/bot/NeuroBot;->classifierResponses:Ljava/util/List;

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/smedialink/bots/data/model/Response;

    invoke-virtual {v14}, Lcom/smedialink/bots/data/model/Response;->getTag()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v2, v14, v0}, Lcom/smedialink/bots/data/model/response/ValidationResponse;-><init>(Ljava/lang/String;F)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v2

    .line 93
    invoke-interface {v13, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v15, v17

    move/from16 v14, v18

    goto :goto_2

    .line 766
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lcom/smedialink/bots/data/model/response/ValidationResponse;

    .line 99
    invoke-virtual {v11}, Lcom/smedialink/bots/data/model/response/ValidationResponse;->getProbability()F

    move-result v11

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getLanguage()Lcom/smedialink/bots/domain/model/BotLanguage;

    move-result-object v14

    sget-object v15, Lcom/smedialink/bots/domain/model/BotLanguage;->RU:Lcom/smedialink/bots/domain/model/BotLanguage;

    if-ne v14, v15, :cond_7

    const v14, 0x3f666666    # 0.9f

    goto :goto_4

    :cond_7
    const v14, 0x3f59999a    # 0.85f

    :goto_4
    cmpl-float v11, v11, v14

    if-lez v11, :cond_8

    const/4 v11, 0x1

    goto :goto_5

    :cond_8
    const/4 v11, 0x0

    :goto_5
    if-eqz v11, :cond_6

    .line 857
    invoke-interface {v0, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1054
    :cond_9
    new-instance v2, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/bots/data/model/response/ValidationResponse;

    if-eqz v0, :cond_a

    .line 106
    invoke-virtual {v0}, Lcom/smedialink/bots/data/model/response/ValidationResponse;->getTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    if-eqz v0, :cond_b

    .line 107
    invoke-virtual {v0}, Lcom/smedialink/bots/data/model/response/ValidationResponse;->getProbability()F

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxFloat(F)Ljava/lang/Float;

    move-result-object v7

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    :goto_7
    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v11, 0x1

    add-int/2addr v7, v11

    goto :goto_8

    :cond_c
    const/4 v7, -0x1

    .line 109
    :goto_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " classified response: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " classified response index: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " classified tag: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1b

    if-nez v2, :cond_d

    goto/16 :goto_13

    .line 117
    :cond_d
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getLanguage()Lcom/smedialink/bots/domain/model/BotLanguage;

    move-result-object v0

    sget-object v11, Lcom/smedialink/bots/domain/model/BotLanguage;->RU:Lcom/smedialink/bots/domain/model/BotLanguage;

    if-ne v0, v11, :cond_17

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "intent_"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x5f

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-boolean v11, v5, Lcom/smedialink/bots/data/model/bot/NeuroBot;->useAssets:Z

    if-eqz v11, :cond_e

    new-instance v11, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;

    invoke-direct {v11, v0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;-><init>(Ljava/lang/String;)V

    .line 123
    iget-object v13, v5, Lcom/smedialink/bots/data/model/bot/NeuroBot;->factory:Lcom/smedialink/bots/domain/ResourceFactory;

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v14

    iget-boolean v15, v5, Lcom/smedialink/bots/data/model/bot/NeuroBot;->useAssets:Z

    invoke-interface {v13, v14, v7, v15}, Lcom/smedialink/bots/domain/ResourceFactory;->getIntentValidatorMlPath(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->setAssetFilePath(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;

    move-result-object v11

    .line 124
    invoke-virtual {v11}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->build()Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    move-result-object v11

    goto :goto_9

    .line 125
    :cond_e
    new-instance v11, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;

    invoke-direct {v11, v0}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;-><init>(Ljava/lang/String;)V

    .line 126
    iget-object v13, v5, Lcom/smedialink/bots/data/model/bot/NeuroBot;->factory:Lcom/smedialink/bots/domain/ResourceFactory;

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v14

    iget-boolean v15, v5, Lcom/smedialink/bots/data/model/bot/NeuroBot;->useAssets:Z

    invoke-interface {v13, v14, v7, v15}, Lcom/smedialink/bots/domain/ResourceFactory;->getIntentValidatorMlPath(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->setFilePath(Ljava/lang/String;)Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;

    move-result-object v11

    .line 127
    invoke-virtual {v11}, Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel$Builder;->build()Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;

    move-result-object v11

    .line 130
    :goto_9
    invoke-static {}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->getInstance()Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/google/firebase/ml/common/modeldownload/FirebaseModelManager;->registerLocalModel(Lcom/google/firebase/ml/common/modeldownload/FirebaseLocalModel;)Z

    .line 132
    new-instance v11, Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;

    invoke-direct {v11}, Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;-><init>()V

    .line 133
    invoke-virtual {v11, v0}, Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;->setLocalModelName(Ljava/lang/String;)Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/google/firebase/ml/custom/FirebaseModelOptions$Builder;->build()Lcom/google/firebase/ml/custom/FirebaseModelOptions;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;->getInstance(Lcom/google/firebase/ml/custom/FirebaseModelOptions;)Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;

    move-result-object v0

    .line 139
    iget-object v11, v5, Lcom/smedialink/bots/data/model/bot/NeuroBot;->factory:Lcom/smedialink/bots/domain/ResourceFactory;

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v13

    iget-boolean v14, v5, Lcom/smedialink/bots/data/model/bot/NeuroBot;->useAssets:Z

    invoke-interface {v11, v13, v7, v14}, Lcom/smedialink/bots/domain/ResourceFactory;->getIntentValidatorWordsBag(Ljava/lang/String;IZ)Ljava/util/Map;

    move-result-object v11

    .line 141
    iget-object v13, v5, Lcom/smedialink/bots/data/model/bot/NeuroBot;->factory:Lcom/smedialink/bots/domain/ResourceFactory;

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v14

    iget-boolean v15, v5, Lcom/smedialink/bots/data/model/bot/NeuroBot;->useAssets:Z

    invoke-interface {v13, v14, v7, v15}, Lcom/smedialink/bots/domain/ResourceFactory;->getIntentValidatorResponses(Ljava/lang/String;IZ)Ljava/util/Map;

    move-result-object v7

    .line 142
    invoke-direct {v5, v1, v11}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->prepareInput(Ljava/util/List;Ljava/util/Map;)[[F

    move-result-object v1

    .line 144
    new-instance v13, Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;

    invoke-direct {v13}, Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;-><init>()V

    .line 145
    invoke-virtual {v13, v1}, Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;->add(Ljava/lang/Object;)Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Lcom/google/firebase/ml/custom/FirebaseModelInputs$Builder;->build()Lcom/google/firebase/ml/custom/FirebaseModelInputs;

    move-result-object v1

    .line 148
    new-instance v13, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;

    invoke-direct {v13}, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;-><init>()V

    const/4 v14, 0x2

    new-array v15, v14, [I

    move-object/from16 v16, v8

    const/4 v8, 0x0

    const/4 v14, 0x1

    aput v14, v15, v8

    .line 149
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    aput v11, v15, v14

    invoke-virtual {v13, v8, v14, v15}, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;->setInputFormat(II[I)Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;

    move-result-object v11

    const/4 v13, 0x2

    new-array v15, v13, [I

    aput v14, v15, v8

    .line 150
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v13

    aput v13, v15, v14

    invoke-virtual {v11, v8, v14, v15}, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;->setOutputFormat(II[I)Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;

    move-result-object v11

    .line 151
    invoke-virtual {v11}, Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions$Builder;->build()Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;

    move-result-object v8

    const-string v11, "Builder()\n              \u2026                 .build()"

    invoke-static {v8, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "intentInputs"

    .line 153
    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->L$1:Ljava/lang/Object;

    iput-object v7, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->L$2:Ljava/lang/Object;

    const/4 v11, 0x2

    iput v11, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$1;->label:I

    invoke-direct {v5, v0, v1, v8, v3}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getOutputsFromModel(Lcom/google/firebase/ml/custom/FirebaseModelInterpreter;Lcom/google/firebase/ml/custom/FirebaseModelInputs;Lcom/google/firebase/ml/custom/FirebaseModelInputOutputOptions;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_f

    return-object v4

    :cond_f
    move-object v4, v2

    move-object v3, v5

    move-object v1, v7

    move-object v2, v0

    .line 154
    :goto_a
    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Ljava/lang/Object;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 159
    aget-object v2, v2, v11

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [F

    .line 13695
    array-length v5, v2

    move v7, v11

    move v8, v7

    :goto_b
    if-ge v8, v5, :cond_10

    aget v9, v2, v8

    add-int/lit8 v10, v7, 0x1

    .line 160
    new-instance v13, Lcom/smedialink/bots/data/model/response/ValidationResponse;

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v13, v7, v9}, Lcom/smedialink/bots/data/model/response/ValidationResponse;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move v7, v10

    goto :goto_b

    .line 766
    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/smedialink/bots/data/model/response/ValidationResponse;

    .line 165
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/response/ValidationResponse;->getProbability()F

    move-result v5

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_12

    move v5, v14

    goto :goto_d

    :cond_12
    move v5, v11

    :goto_d
    if-eqz v5, :cond_11

    .line 857
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1054
    :cond_13
    new-instance v0, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$$inlined$sortedByDescending$2;

    invoke-direct {v0}, Lcom/smedialink/bots/data/model/bot/NeuroBot$getResponse$$inlined$sortedByDescending$2;-><init>()V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/bots/data/model/response/ValidationResponse;

    if-eqz v0, :cond_16

    .line 170
    invoke-virtual {v0}, Lcom/smedialink/bots/data/model/response/ValidationResponse;->getTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "True"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 171
    iget-object v1, v3, Lcom/smedialink/bots/data/model/bot/NeuroBot;->classifierResponses:Ljava/util/List;

    .line 288
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/smedialink/bots/data/model/Response;

    .line 171
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/Response;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    goto :goto_e

    :cond_15
    const/4 v2, 0x0

    :goto_e
    check-cast v2, Lcom/smedialink/bots/data/model/Response;

    if-eqz v2, :cond_16

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v3}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v18

    .line 177
    invoke-virtual {v2}, Lcom/smedialink/bots/data/model/Response;->getGif()Ljava/lang/String;

    move-result-object v20

    .line 178
    invoke-virtual {v2}, Lcom/smedialink/bots/data/model/Response;->getAnswers()Ljava/util/List;

    move-result-object v22

    .line 173
    new-instance v1, Lcom/smedialink/bots/data/model/Response;

    const-string v21, ""

    move-object/from16 v17, v1

    move-object/from16 v19, v4

    invoke-direct/range {v17 .. v22}, Lcom/smedialink/bots/data/model/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object v13, v1

    goto :goto_f

    :cond_16
    const/4 v13, 0x0

    .line 182
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v16

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    :cond_17
    move-object v3, v8

    .line 185
    iget-object v0, v5, Lcom/smedialink/bots/data/model/bot/NeuroBot;->classifierResponses:Ljava/util/List;

    .line 288
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/smedialink/bots/data/model/Response;

    .line 185
    invoke-virtual {v4}, Lcom/smedialink/bots/data/model/Response;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_10

    :cond_19
    const/4 v1, 0x0

    :goto_10
    check-cast v1, Lcom/smedialink/bots/data/model/Response;

    if-eqz v1, :cond_1a

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v18

    .line 191
    invoke-virtual {v1}, Lcom/smedialink/bots/data/model/Response;->getGif()Ljava/lang/String;

    move-result-object v20

    .line 192
    invoke-virtual {v1}, Lcom/smedialink/bots/data/model/Response;->getAnswers()Ljava/util/List;

    move-result-object v22

    .line 187
    new-instance v13, Lcom/smedialink/bots/data/model/Response;

    const-string v21, ""

    move-object/from16 v17, v13

    move-object/from16 v19, v2

    invoke-direct/range {v17 .. v22}, Lcom/smedialink/bots/data/model/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_11

    :cond_1a
    const/4 v13, 0x0

    .line 195
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/smedialink/bots/data/model/bot/NeuroBot;->getBotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Lcom/smedialink/bots/data/model/bot/NeuroBot;->classifierResponses:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-object v13

    :cond_1b
    :goto_13
    const/4 v0, 0x0

    return-object v0
.end method
