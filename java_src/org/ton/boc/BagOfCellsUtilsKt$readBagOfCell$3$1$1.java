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
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
import org.ton.cell.CellDescriptor;
/* compiled from: BagOfCellsUtils.kt */
@DebugMetadata(m148c = "org.ton.boc.BagOfCellsUtilsKt$readBagOfCell$3$1$1", m147f = "BagOfCellsUtils.kt", m146l = {114}, m145m = "invokeSuspend")
/* loaded from: classes6.dex */
final class BagOfCellsUtilsKt$readBagOfCell$3$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BitString[] $cellBits;
    final /* synthetic */ CellDescriptor[] $cellDescriptors;
    final /* synthetic */ int $cellIndex;
    final /* synthetic */ int[][] $cellRefs;
    final /* synthetic */ CompletableDeferred<Cell>[] $cells;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BagOfCellsUtilsKt$readBagOfCell$3$1$1(int i, CompletableDeferred<Cell>[] completableDeferredArr, BitString[] bitStringArr, int[][] iArr, CellDescriptor[] cellDescriptorArr, Continuation<? super BagOfCellsUtilsKt$readBagOfCell$3$1$1> continuation) {
        super(2, continuation);
        this.$cellIndex = i;
        this.$cells = completableDeferredArr;
        this.$cellBits = bitStringArr;
        this.$cellRefs = iArr;
        this.$cellDescriptors = cellDescriptorArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BagOfCellsUtilsKt$readBagOfCell$3$1$1(this.$cellIndex, this.$cells, this.$cellBits, this.$cellRefs, this.$cellDescriptors, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BagOfCellsUtilsKt$readBagOfCell$3$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        Object createCell;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            int i2 = this.$cellIndex;
            CompletableDeferred<Cell>[] completableDeferredArr = this.$cells;
            BitString[] bitStringArr = this.$cellBits;
            int[][] iArr = this.$cellRefs;
            CellDescriptor[] cellDescriptorArr = this.$cellDescriptors;
            this.label = 1;
            createCell = BagOfCellsUtilsKt.createCell(i2, completableDeferredArr, bitStringArr, iArr, cellDescriptorArr, this);
            if (createCell == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
