package org.ton.contract;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import org.ton.block.AccountActive;
import org.ton.block.AccountState;
import org.ton.block.AddrStd;
import org.ton.block.Maybe;
import org.ton.block.Message;
import org.ton.block.MsgAddressInt;
import org.ton.block.StateInit;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.lite.api.LiteApi;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
/* compiled from: SmartContract.kt */
/* loaded from: classes6.dex */
public interface SmartContract<T> {
    public static final Companion Companion = Companion.$$INSTANCE;

    MsgAddressInt getAddress();

    AccountState getState();

    Object sendExternalMessage(LiteApi liteApi, Cell cell, Continuation<? super Integer> continuation);

    /* compiled from: SmartContract.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static <T> Cell getData(SmartContract<T> smartContract) {
            Maybe<CellRef<Cell>> data;
            CellRef<Cell> value;
            AccountState state = smartContract.getState();
            StateInit m5061unboximpl = state instanceof AccountActive ? ((AccountActive) state).m5061unboximpl() : null;
            if (m5061unboximpl == null || (data = m5061unboximpl.data()) == null || (value = data.getValue()) == null) {
                return null;
            }
            return value.getValue();
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static <T> java.lang.Object sendExternalMessage(org.ton.contract.SmartContract<T> r4, org.ton.lite.api.LiteApi r5, org.ton.cell.Cell r6, kotlin.coroutines.Continuation<? super java.lang.Integer> r7) {
            /*
                boolean r4 = r7 instanceof org.ton.contract.SmartContract$sendExternalMessage$3
                if (r4 == 0) goto L13
                r4 = r7
                org.ton.contract.SmartContract$sendExternalMessage$3 r4 = (org.ton.contract.SmartContract$sendExternalMessage$3) r4
                int r0 = r4.label
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r2 = r0 & r1
                if (r2 == 0) goto L13
                int r0 = r0 - r1
                r4.label = r0
                goto L18
            L13:
                org.ton.contract.SmartContract$sendExternalMessage$3 r4 = new org.ton.contract.SmartContract$sendExternalMessage$3
                r4.<init>(r7)
            L18:
                java.lang.Object r7 = r4.result
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r4.label
                r2 = 1
                if (r1 == 0) goto L31
                if (r1 != r2) goto L29
                kotlin.ResultKt.throwOnFailure(r7)
                goto L4f
            L29:
                java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                r4.<init>(r5)
                throw r4
            L31:
                kotlin.ResultKt.throwOnFailure(r7)
                org.ton.lite.api.liteserver.functions.LiteServerSendMessage r7 = new org.ton.lite.api.liteserver.functions.LiteServerSendMessage
                org.ton.cell.Cell[] r1 = new org.ton.cell.Cell[r2]
                r3 = 0
                r1[r3] = r6
                org.ton.boc.BagOfCells r6 = org.ton.boc.BagOfCellsKt.BagOfCells(r1)
                byte[] r6 = r6.toByteArray()
                r7.<init>(r6)
                r4.label = r2
                java.lang.Object r7 = r5.invoke(r7, r4)
                if (r7 != r0) goto L4f
                return r0
            L4f:
                org.ton.lite.api.liteserver.LiteServerSendMsgStatus r7 = (org.ton.lite.api.liteserver.LiteServerSendMsgStatus) r7
                int r4 = r7.getStatus()
                java.lang.Integer r4 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r4)
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: org.ton.contract.SmartContract.DefaultImpls.sendExternalMessage(org.ton.contract.SmartContract, org.ton.lite.api.LiteApi, org.ton.cell.Cell, kotlin.coroutines.Continuation):java.lang.Object");
        }

        public static <T, X> Object sendExternalMessage(SmartContract<T> smartContract, LiteApi liteApi, TlbCodec<X> tlbCodec, Message<X> message, Continuation<? super Integer> continuation) {
            CellBuilder beginCell = CellBuilder.Companion.beginCell();
            Message.Companion.tlbCodec(tlbCodec).storeTlb(beginCell, message);
            Unit unit = Unit.INSTANCE;
            return smartContract.sendExternalMessage(liteApi, beginCell.endCell(), continuation);
        }
    }

    /* compiled from: SmartContract.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final AddrStd address(int i, StateInit stateInit) {
            Intrinsics.checkNotNullParameter(stateInit, "stateInit");
            CellBuilder beginCell = CellBuilder.Companion.beginCell();
            StateInit.Companion.storeTlb(beginCell, (CellBuilder) stateInit);
            Unit unit = Unit.INSTANCE;
            return new AddrStd(i, Cell.DefaultImpls.hash$default(beginCell.endCell(), 0, 1, null));
        }
    }
}
