package org.ton.boc;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import org.ton.cell.Cell;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BagOfCellsUtils.kt */
@DebugMetadata(m148c = "org.ton.boc.BagOfCellsUtilsKt$readBagOfCell$roots$1$1", m147f = "BagOfCellsUtils.kt", m146l = {126}, m145m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class BagOfCellsUtilsKt$readBagOfCell$roots$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Cell>, Object> {
    final /* synthetic */ CompletableDeferred<Cell>[] $cells;
    final /* synthetic */ int $rootIndex;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BagOfCellsUtilsKt$readBagOfCell$roots$1$1(CompletableDeferred<Cell>[] completableDeferredArr, int i, Continuation<? super BagOfCellsUtilsKt$readBagOfCell$roots$1$1> continuation) {
        super(2, continuation);
        this.$cells = completableDeferredArr;
        this.$rootIndex = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BagOfCellsUtilsKt$readBagOfCell$roots$1$1(this.$cells, this.$rootIndex, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Cell> continuation) {
        return ((BagOfCellsUtilsKt$readBagOfCell$roots$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CompletableDeferred<Cell> completableDeferred = this.$cells[this.$rootIndex];
            this.label = 1;
            obj = completableDeferred.await(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return obj;
    }
}
