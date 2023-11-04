package org.ton.block;

import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbStorer;
/* compiled from: ComputeSkipReason.kt */
/* loaded from: classes6.dex */
final class ComputeSkipReasonTlbCombinator extends TlbCombinator<ComputeSkipReason> {
    public static final ComputeSkipReasonTlbCombinator INSTANCE = new ComputeSkipReasonTlbCombinator();

    /* compiled from: ComputeSkipReason.kt */
    /* loaded from: classes6.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ComputeSkipReason.values().length];
            try {
                iArr[ComputeSkipReason.NO_STATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ComputeSkipReason.BAD_STATE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ComputeSkipReason.NO_GAS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private ComputeSkipReasonTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(ComputeSkipReason.class), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(ComputeSkipReason.class), ComputeSkipReasonNoStateTlbConstructor.INSTANCE), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(ComputeSkipReason.class), ComputeSkipReasonBadStateTlbConstructor.INSTANCE), TuplesKt.m146to(Reflection.getOrCreateKotlinClass(ComputeSkipReason.class), ComputeSkipReasonNoGasTlbConstructor.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.ton.tlb.TlbCombinator
    public TlbStorer<ComputeSkipReason> findTlbStorerOrNull(ComputeSkipReason value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int i = WhenMappings.$EnumSwitchMapping$0[value.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return ComputeSkipReasonNoGasTlbConstructor.INSTANCE;
                }
                throw new NoWhenBranchMatchedException();
            }
            return ComputeSkipReasonBadStateTlbConstructor.INSTANCE;
        }
        return ComputeSkipReasonNoStateTlbConstructor.INSTANCE;
    }
}
