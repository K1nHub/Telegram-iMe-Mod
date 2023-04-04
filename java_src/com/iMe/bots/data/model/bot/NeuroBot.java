package com.iMe.bots.data.model.bot;

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
import com.iMe.bots.data.model.Response;
import com.iMe.bots.domain.AigramBot;
import com.iMe.bots.domain.ResourceFactory;
import com.iMe.bots.domain.model.BotLanguage;
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
import kotlin.jvm.functions.Function1;
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
        Log.d("NeuroBot", getBotId() + " registered");
    }

    public String getBotId() {
        return this.botId;
    }

    @Override // com.iMe.bots.domain.AigramBot
    public BotLanguage getLanguage() {
        return this.language;
    }

    private final FirebaseModelInterpreter getClassifier() {
        return (FirebaseModelInterpreter) this.classifier$delegate.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0344 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d7 A[LOOP:3: B:21:0x00d5->B:22:0x00d7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02c6 A[LOOP:0: B:62:0x02c4->B:63:0x02c6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0349  */
    @Override // com.iMe.bots.domain.AigramBot
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object getResponse(java.util.List<java.lang.String> r24, kotlin.coroutines.Continuation<? super com.iMe.bots.data.model.Response> r25) {
        /*
            Method dump skipped, instructions count: 1047
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.bots.data.model.bot.NeuroBot.getResponse(java.util.List, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getOutputsFromModel(FirebaseModelInterpreter firebaseModelInterpreter, FirebaseModelInputs firebaseModelInputs, FirebaseModelInputOutputOptions firebaseModelInputOutputOptions, Continuation<Object> continuation) {
        Continuation intercepted;
        Object coroutine_suspended;
        Task<FirebaseModelOutputs> run;
        intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
        final SafeContinuation safeContinuation = new SafeContinuation(intercepted);
        if (firebaseModelInterpreter != null && (run = firebaseModelInterpreter.run(firebaseModelInputs, firebaseModelInputOutputOptions)) != null) {
            final NeuroBot$getOutputsFromModel$2$1 neuroBot$getOutputsFromModel$2$1 = new NeuroBot$getOutputsFromModel$2$1(safeContinuation);
            Task<FirebaseModelOutputs> addOnSuccessListener = run.addOnSuccessListener(new OnSuccessListener(neuroBot$getOutputsFromModel$2$1) { // from class: com.iMe.bots.data.model.bot.NeuroBot$sam$com_google_android_gms_tasks_OnSuccessListener$0
                private final /* synthetic */ Function1 function;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    Intrinsics.checkNotNullParameter(neuroBot$getOutputsFromModel$2$1, "function");
                    this.function = neuroBot$getOutputsFromModel$2$1;
                }

                @Override // com.google.android.gms.tasks.OnSuccessListener
                public final /* synthetic */ void onSuccess(Object obj) {
                    this.function.invoke(obj);
                }
            });
            if (addOnSuccessListener != null) {
                addOnSuccessListener.addOnFailureListener(new OnFailureListener() { // from class: com.iMe.bots.data.model.bot.NeuroBot$getOutputsFromModel$2$2
                    @Override // com.google.android.gms.tasks.OnFailureListener
                    public final void onFailure(Exception exception) {
                        Intrinsics.checkNotNullParameter(exception, "exception");
                        Continuation<Object> continuation2 = safeContinuation;
                        Result.Companion companion = Result.Companion;
                        continuation2.resumeWith(Result.m1571constructorimpl(ResultKt.createFailure(exception)));
                    }
                });
            }
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
