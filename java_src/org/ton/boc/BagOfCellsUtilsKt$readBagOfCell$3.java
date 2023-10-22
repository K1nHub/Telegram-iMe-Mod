package org.ton.boc;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
import org.ton.cell.CellDescriptor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BagOfCellsUtils.kt */
@DebugMetadata(m143c = "org.ton.boc.BagOfCellsUtilsKt$readBagOfCell$3", m142f = "BagOfCellsUtils.kt", m141l = {}, m140m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class BagOfCellsUtilsKt$readBagOfCell$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ BitString[] $cellBits;
    final /* synthetic */ int $cellCount;
    final /* synthetic */ CellDescriptor[] $cellDescriptors;
    final /* synthetic */ int[][] $cellRefs;
    final /* synthetic */ CompletableDeferred<Cell>[] $cells;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BagOfCellsUtilsKt$readBagOfCell$3(int i, CompletableDeferred<Cell>[] completableDeferredArr, BitString[] bitStringArr, int[][] iArr, CellDescriptor[] cellDescriptorArr, Continuation<? super BagOfCellsUtilsKt$readBagOfCell$3> continuation) {
        super(2, continuation);
        this.$cellCount = i;
        this.$cells = completableDeferredArr;
        this.$cellBits = bitStringArr;
        this.$cellRefs = iArr;
        this.$cellDescriptors = cellDescriptorArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BagOfCellsUtilsKt$readBagOfCell$3 bagOfCellsUtilsKt$readBagOfCell$3 = new BagOfCellsUtilsKt$readBagOfCell$3(this.$cellCount, this.$cells, this.$cellBits, this.$cellRefs, this.$cellDescriptors, continuation);
        bagOfCellsUtilsKt$readBagOfCell$3.L$0 = obj;
        return bagOfCellsUtilsKt$readBagOfCell$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BagOfCellsUtilsKt$readBagOfCell$3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
        int i = this.$cellCount;
        CompletableDeferred<Cell>[] completableDeferredArr = this.$cells;
        BitString[] bitStringArr = this.$cellBits;
        int[][] iArr = this.$cellRefs;
        CellDescriptor[] cellDescriptorArr = this.$cellDescriptors;
        int i2 = 0;
        while (i2 < i) {
            int[][] iArr2 = iArr;
            BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new BagOfCellsUtilsKt$readBagOfCell$3$1$1(i2, completableDeferredArr, bitStringArr, iArr2, cellDescriptorArr, null), 3, null);
            i2++;
            completableDeferredArr = completableDeferredArr;
            cellDescriptorArr = cellDescriptorArr;
            iArr = iArr2;
            bitStringArr = bitStringArr;
        }
        return Unit.INSTANCE;
    }
}
