package com.smedialink.bots.data.model.bot;

import android.util.Log;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.Task;
import com.google.firebase.p021ml.common.modeldownload.FirebaseLocalModel;
import com.google.firebase.p021ml.common.modeldownload.FirebaseModelManager;
import com.google.firebase.p021ml.custom.FirebaseModelInputOutputOptions;
import com.google.firebase.p021ml.custom.FirebaseModelInputs;
import com.google.firebase.p021ml.custom.FirebaseModelInterpreter;
import com.google.firebase.p021ml.custom.FirebaseModelOutputs;
import com.smedialink.bots.data.model.Response;
import com.smedialink.bots.domain.AigramBot;
import com.smedialink.bots.domain.ResourceFactory;
import com.smedialink.bots.domain.model.BotLanguage;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: NeuroBot.kt */
/* loaded from: classes3.dex */
public final class NeuroBot implements AigramBot {
    @Deprecated
    public static final float CLASSIFIER_PROBABILITY_THRESHOLD = 0.9f;
    @Deprecated
    public static final float CLASSIFIER_PROBABILITY_THRESHOLD_ENG = 0.85f;
    private static final Companion Companion = new Companion(null);
    @Deprecated
    public static final float INTENTS_PROBABILITY_THRESHOLD = 0.5f;
    private final String botId;
    private final Lazy classifier$delegate;
    private final List<Response> classifierResponses;
    private final Map<Integer, String> classifierWords;
    private final ResourceFactory factory;
    private final BotLanguage language;
    private final boolean useAssets;

    public NeuroBot(String botId, ResourceFactory factory, boolean z, BotLanguage language) {
        Lazy lazy;
        FirebaseLocalModel build;
        Intrinsics.checkNotNullParameter(botId, "botId");
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(language, "language");
        this.botId = botId;
        this.factory = factory;
        this.useAssets = z;
        this.language = language;
        lazy = LazyKt__LazyJVMKt.lazy(new NeuroBot$classifier$2(this));
        this.classifier$delegate = lazy;
        this.classifierWords = factory.getBotWordsBag(getBotId(), z);
        this.classifierResponses = factory.getBotResponsesList(getBotId(), z);
        if (z) {
            build = new FirebaseLocalModel.Builder(getBotId()).setAssetFilePath(factory.getBotMlModelPath(getBotId(), z)).build();
        } else {
            build = new FirebaseLocalModel.Builder(getBotId()).setFilePath(factory.getBotMlModelPath(getBotId(), z)).build();
        }
        FirebaseModelManager.getInstance().registerLocalModel(build);
        Log.d("NeuroBot", Intrinsics.stringPlus(getBotId(), " registered"));
    }

    public String getBotId() {
        return this.botId;
    }

    @Override // com.smedialink.bots.domain.AigramBot
    public BotLanguage getLanguage() {
        return this.language;
    }

    private final FirebaseModelInterpreter getClassifier() {
        return (FirebaseModelInterpreter) this.classifier$delegate.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0334 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00cf A[LOOP:3: B:21:0x00cd->B:22:0x00cf, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02b6 A[LOOP:0: B:62:0x02b4->B:63:0x02b6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x033a  */
    @Override // com.smedialink.bots.domain.AigramBot
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getResponse(java.util.List<java.lang.String> r25, kotlin.coroutines.Continuation<? super com.smedialink.bots.data.model.Response> r26) {
        /*
            Method dump skipped, instructions count: 1029
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.smedialink.bots.data.model.bot.NeuroBot.getResponse(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getOutputsFromModel(FirebaseModelInterpreter firebaseModelInterpreter, FirebaseModelInputs firebaseModelInputs, FirebaseModelInputOutputOptions firebaseModelInputOutputOptions, Continuation<Object> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Task<FirebaseModelOutputs> run;
        Task<FirebaseModelOutputs> addOnSuccessListener;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final SafeContinuation safeContinuation = new SafeContinuation(intercepted);
        if (firebaseModelInterpreter != null && (run = firebaseModelInterpreter.run(firebaseModelInputs, firebaseModelInputOutputOptions)) != null && (addOnSuccessListener = run.addOnSuccessListener(new OnSuccessListener() { // from class: com.smedialink.bots.data.model.bot.NeuroBot$getOutputsFromModel$2$1
            @Override // com.google.android.gms.tasks.OnSuccessListener
            public final void onSuccess(FirebaseModelOutputs result) {
                Intrinsics.checkNotNullParameter(result, "result");
                Continuation<Object> continuation2 = safeContinuation;
                Object output = result.getOutput(0);
                Result.Companion companion = Result.Companion;
                continuation2.resumeWith(Result.m1870constructorimpl(output));
            }
        })) != null) {
            addOnSuccessListener.addOnFailureListener(new OnFailureListener() { // from class: com.smedialink.bots.data.model.bot.NeuroBot$getOutputsFromModel$2$2
                @Override // com.google.android.gms.tasks.OnFailureListener
                public final void onFailure(Exception exception) {
                    Intrinsics.checkNotNullParameter(exception, "exception");
                    Continuation<Object> continuation2 = safeContinuation;
                    Result.Companion companion = Result.Companion;
                    continuation2.resumeWith(Result.m1870constructorimpl(ResultKt.createFailure(exception)));
                }
            });
        }
        Object orThrow = safeContinuation.getOrThrow();
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (orThrow == coroutine_suspended) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    private final float[][] prepareInput(List<String> list, Map<Integer, String> map) {
        Set set;
        float[] fArr = new float[map.size()];
        set = CollectionsKt___CollectionsKt.toSet(list);
        for (Map.Entry<Integer, String> entry : map.entrySet()) {
            if (set.contains(entry.getValue())) {
                fArr[entry.getKey().intValue()] = 1.0f;
            }
        }
        return new float[][]{fArr};
    }

    /* compiled from: NeuroBot.kt */
    /* loaded from: classes3.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
