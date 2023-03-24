package com.smedialink.bots.data;

import com.smedialink.bots.data.model.Response;
import com.smedialink.bots.domain.model.SmartBotResponse;
import com.smedialink.bots.usecase.AiBotsManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
/* compiled from: SmartReplier.kt */
@DebugMetadata(m98c = "com.smedialink.bots.data.SmartReplier$getResponsesFromBots$1", m97f = "SmartReplier.kt", m96l = {37}, m95m = "invokeSuspend")
/* loaded from: classes3.dex */
final class SmartReplier$getResponsesFromBots$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ AiBotsManager.SmartReplierCallback $callback;
    final /* synthetic */ String $sentence;
    final /* synthetic */ long $userId;
    Object L$0;
    int label;
    final /* synthetic */ SmartReplier this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SmartReplier$getResponsesFromBots$1(AiBotsManager.SmartReplierCallback smartReplierCallback, SmartReplier smartReplier, long j, String str, Continuation<? super SmartReplier$getResponsesFromBots$1> continuation) {
        super(2, continuation);
        this.$callback = smartReplierCallback;
        this.this$0 = smartReplier;
        this.$userId = j;
        this.$sentence = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SmartReplier$getResponsesFromBots$1(this.$callback, this.this$0, this.$userId, this.$sentence, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((SmartReplier$getResponsesFromBots$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        List<SmartBotResponse> list;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                CoroutineDispatcher io2 = Dispatchers.getIO();
                C12671 c12671 = new C12671(this.this$0, arrayList, arrayList2, this.$userId, this.$sentence, null);
                this.L$0 = arrayList;
                this.label = 1;
                if (BuildersKt.withContext(io2, c12671, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                list = arrayList;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                list = (List) this.L$0;
                ResultKt.throwOnFailure(obj);
            }
            this.$callback.onSuccess(list);
        } catch (Exception e) {
            this.$callback.onError(e);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SmartReplier.kt */
    @DebugMetadata(m98c = "com.smedialink.bots.data.SmartReplier$getResponsesFromBots$1$1", m97f = "SmartReplier.kt", m96l = {39}, m95m = "invokeSuspend")
    /* renamed from: com.smedialink.bots.data.SmartReplier$getResponsesFromBots$1$1 */
    /* loaded from: classes3.dex */
    public static final class C12671 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ List<Response> $detected;
        final /* synthetic */ List<SmartBotResponse> $result;
        final /* synthetic */ String $sentence;
        final /* synthetic */ long $userId;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        final /* synthetic */ SmartReplier this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C12671(SmartReplier smartReplier, List<SmartBotResponse> list, List<Response> list2, long j, String str, Continuation<? super C12671> continuation) {
            super(2, continuation);
            this.this$0 = smartReplier;
            this.$result = list;
            this.$detected = list2;
            this.$userId = j;
            this.$sentence = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C12671(this.this$0, this.$result, this.$detected, this.$userId, this.$sentence, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C12671) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x007b  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0085  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x006f -> B:15:0x0077). Please submit an issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r10) {
            /*
                r9 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r9.label
                r2 = 1
                if (r1 == 0) goto L2d
                if (r1 != r2) goto L25
                java.lang.Object r1 = r9.L$3
                java.util.Iterator r1 = (java.util.Iterator) r1
                java.lang.Object r3 = r9.L$2
                java.util.List r3 = (java.util.List) r3
                java.lang.Object r4 = r9.L$1
                java.lang.String r4 = (java.lang.String) r4
                java.lang.Object r5 = r9.L$0
                com.smedialink.bots.data.SmartReplier r5 = (com.smedialink.bots.data.SmartReplier) r5
                kotlin.ResultKt.throwOnFailure(r10)
                r6 = r5
                r5 = r4
                r4 = r3
                r3 = r1
                r1 = r0
                r0 = r9
                goto L77
            L25:
                java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r10.<init>(r0)
                throw r10
            L2d:
                kotlin.ResultKt.throwOnFailure(r10)
                com.smedialink.bots.data.SmartReplier r10 = r9.this$0
                com.smedialink.bots.usecase.AiBotsManager r10 = com.smedialink.bots.data.SmartReplier.access$getManager$p(r10)
                java.util.List r10 = r10.getActiveBots()
                com.smedialink.bots.data.SmartReplier r1 = r9.this$0
                java.lang.String r3 = r9.$sentence
                java.util.List<com.smedialink.bots.data.model.Response> r4 = r9.$detected
                java.util.Iterator r10 = r10.iterator()
                r5 = r1
                r1 = r10
                r10 = r9
                r8 = r4
                r4 = r3
                r3 = r8
            L4a:
                boolean r6 = r1.hasNext()
                if (r6 == 0) goto L85
                java.lang.Object r6 = r1.next()
                com.smedialink.bots.domain.AigramBot r6 = (com.smedialink.bots.domain.AigramBot) r6
                com.smedialink.bots.domain.model.BotLanguage r7 = r6.getLanguage()
                java.util.List r7 = com.smedialink.bots.data.SmartReplier.access$splitLemmas(r5, r7, r4)
                r10.L$0 = r5
                r10.L$1 = r4
                r10.L$2 = r3
                r10.L$3 = r1
                r10.label = r2
                java.lang.Object r6 = r6.getResponse(r7, r10)
                if (r6 != r0) goto L6f
                return r0
            L6f:
                r8 = r0
                r0 = r10
                r10 = r6
                r6 = r5
                r5 = r4
                r4 = r3
                r3 = r1
                r1 = r8
            L77:
                com.smedialink.bots.data.model.Response r10 = (com.smedialink.bots.data.model.Response) r10
                if (r10 == 0) goto L7e
                r4.add(r10)
            L7e:
                r10 = r0
                r0 = r1
                r1 = r3
                r3 = r4
                r4 = r5
                r5 = r6
                goto L4a
            L85:
                java.util.List<com.smedialink.bots.domain.model.SmartBotResponse> r0 = r10.$result
                com.smedialink.bots.data.SmartReplier r1 = r10.this$0
                java.util.List<com.smedialink.bots.data.model.Response> r2 = r10.$detected
                long r3 = r10.$userId
                java.util.List r10 = com.smedialink.bots.data.SmartReplier.access$buildBotsList(r1, r2, r3)
                boolean r10 = r0.addAll(r10)
                java.lang.Boolean r10 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r10)
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: com.smedialink.bots.data.SmartReplier$getResponsesFromBots$1.C12671.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }
}
