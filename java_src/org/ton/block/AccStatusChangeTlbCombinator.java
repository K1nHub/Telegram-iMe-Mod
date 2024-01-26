package org.ton.block;

import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.ton.tlb.TlbCombinator;
import org.ton.tlb.TlbStorer;
/* compiled from: AccStatusChange.kt */
/* loaded from: classes6.dex */
final class AccStatusChangeTlbCombinator extends TlbCombinator<AccStatusChange> {
    public static final AccStatusChangeTlbCombinator INSTANCE = new AccStatusChangeTlbCombinator();

    /* compiled from: AccStatusChange.kt */
    /* loaded from: classes6.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AccStatusChange.values().length];
            try {
                iArr[AccStatusChange.UNCHANGED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AccStatusChange.FROZEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AccStatusChange.DELETED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private AccStatusChangeTlbCombinator() {
        super(Reflection.getOrCreateKotlinClass(AccStatusChange.class), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(AccStatusChange.class), AccStatusChangeUnchangedTlbConstructor.INSTANCE), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(AccStatusChange.class), AccStatusChangeFrozenTlbConstructor.INSTANCE), TuplesKt.m149to(Reflection.getOrCreateKotlinClass(AccStatusChange.class), AccStatusChangeDeletedTlbConstructor.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.ton.tlb.TlbCombinator
    public TlbStorer<AccStatusChange> findTlbStorerOrNull(AccStatusChange value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int i = WhenMappings.$EnumSwitchMapping$0[value.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return AccStatusChangeDeletedTlbConstructor.INSTANCE;
                }
                throw new NoWhenBranchMatchedException();
            }
            return AccStatusChangeFrozenTlbConstructor.INSTANCE;
        }
        return AccStatusChangeUnchangedTlbConstructor.INSTANCE;
    }
}
