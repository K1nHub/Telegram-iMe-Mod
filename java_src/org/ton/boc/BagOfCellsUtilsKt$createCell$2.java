package org.ton.boc;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import org.ton.bitstring.BitString;
import org.ton.cell.Cell;
import org.ton.cell.CellDescriptor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BagOfCellsUtils.kt */
@DebugMetadata(m145c = "org.ton.boc.BagOfCellsUtilsKt$createCell$2", m144f = "BagOfCellsUtils.kt", m143l = {143}, m142m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class BagOfCellsUtilsKt$createCell$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    final /* synthetic */ BitString[] $bits;
    final /* synthetic */ CompletableDeferred<Cell>[] $cells;
    final /* synthetic */ CellDescriptor[] $descriptors;
    final /* synthetic */ int $index;
    final /* synthetic */ int[][] $refs;
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BagOfCellsUtilsKt$createCell$2(BitString[] bitStringArr, int i, int[][] iArr, CompletableDeferred<Cell>[] completableDeferredArr, CellDescriptor[] cellDescriptorArr, Continuation<? super BagOfCellsUtilsKt$createCell$2> continuation) {
        super(2, continuation);
        this.$bits = bitStringArr;
        this.$index = i;
        this.$refs = iArr;
        this.$cells = completableDeferredArr;
        this.$descriptors = cellDescriptorArr;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BagOfCellsUtilsKt$createCell$2(this.$bits, this.$index, this.$refs, this.$cells, this.$descriptors, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return ((BagOfCellsUtilsKt$createCell$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008d  */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.util.Collection] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0073 -> B:15:0x007d). Please submit an issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 200
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.ton.boc.BagOfCellsUtilsKt$createCell$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
