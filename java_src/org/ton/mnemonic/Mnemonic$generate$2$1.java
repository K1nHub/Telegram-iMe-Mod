package org.ton.mnemonic;

import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.random.Random;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineScope;
/* compiled from: Mnemonic.kt */
@DebugMetadata(m143c = "org.ton.mnemonic.Mnemonic$generate$2$1", m142f = "Mnemonic.kt", m141l = {}, m140m = "invokeSuspend")
/* loaded from: classes6.dex */
final class Mnemonic$generate$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ CancellableContinuation<List<String>> $continuation;
    final /* synthetic */ String $password;
    final /* synthetic */ Random $random;
    final /* synthetic */ int $wordCount;
    final /* synthetic */ List<String> $wordlist;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public Mnemonic$generate$2$1(int i, Random random, String str, CancellableContinuation<? super List<String>> cancellableContinuation, List<String> list, Continuation<? super Mnemonic$generate$2$1> continuation) {
        super(2, continuation);
        this.$wordCount = i;
        this.$random = random;
        this.$password = str;
        this.$continuation = cancellableContinuation;
        this.$wordlist = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new Mnemonic$generate$2$1(this.$wordCount, this.$random, this.$password, this.$continuation, this.$wordlist, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((Mnemonic$generate$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00d5, code lost:
        if (r4 != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00ef, code lost:
        r0 = r21.$continuation;
        r2 = kotlin.Result.Companion;
        r2 = kotlin.collections.ArraysKt___ArraysKt.toList(r11);
        r0.resumeWith(kotlin.Result.m1935constructorimpl(r2));
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.mnemonic.Mnemonic$generate$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
