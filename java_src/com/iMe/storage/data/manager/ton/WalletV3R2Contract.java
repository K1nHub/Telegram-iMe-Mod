package com.iMe.storage.data.manager.ton;

import java.util.Arrays;
import kotlin.UInt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p034io.encoding.Base64;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.datetime.Clock$System;
import kotlinx.datetime.Instant;
import org.ton.api.p043pk.PrivateKeyEd25519;
import org.ton.api.pub.PublicKeyEd25519;
import org.ton.bitstring.BitString;
import org.ton.block.AccountInfo;
import org.ton.block.AccountState;
import org.ton.block.AddrNone;
import org.ton.block.Coins;
import org.ton.block.CommonMsgInfoRelaxed;
import org.ton.block.Either;
import org.ton.block.ExtInMsgInfo;
import org.ton.block.Maybe;
import org.ton.block.Message;
import org.ton.block.MessageRelaxed;
import org.ton.block.MsgAddressInt;
import org.ton.block.StateInit;
import org.ton.block.TickTock;
import org.ton.block.VarUInteger;
import org.ton.boc.BagOfCellsKt;
import org.ton.cell.Cell;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.contract.wallet.WalletContract;
import org.ton.contract.wallet.WalletTransfer;
import org.ton.hashmap.HashMapE;
import org.ton.lite.api.LiteApi;
import org.ton.tlb.CellRef;
import org.ton.tlb.TlbCodec;
import org.ton.tlb.constructor.AnyTlbConstructor;
/* compiled from: WalletV3R2Contract.kt */
/* loaded from: classes3.dex */
public final class WalletV3R2Contract implements WalletContract<Cell> {
    private final MsgAddressInt address;
    private final AccountState state;
    public static final Companion Companion = new Companion(null);
    public static final Cell CODE = (Cell) CollectionsKt.first(BagOfCellsKt.BagOfCells(Base64.decode$default(Base64.Default, "te6cckEBAQEAcQAA3v8AIN0gggFMl7ohggEznLqxn3Gw7UTQ0x/THzHXC//jBOCk8mCDCNcYINMf0x/TH/gjE7vyY+1E0NMf0x/T/9FRMrryoVFEuvKiBPkBVBBV+RDyo/gAkyDXSpbTB9QC+wDo0QGkyMsfyx/L/8ntVBC9ba0=", 0, 0, 6, (Object) null)));

    public WalletV3R2Contract(MsgAddressInt address, AccountState state) {
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(state, "state");
        this.address = address;
        this.state = state;
    }

    public Cell getData() {
        return WalletContract.DefaultImpls.getData(this);
    }

    @Override // org.ton.contract.SmartContract
    public Object sendExternalMessage(LiteApi liteApi, Cell cell, Continuation<? super Integer> continuation) {
        return WalletContract.DefaultImpls.sendExternalMessage(this, liteApi, cell, continuation);
    }

    public <X> Object sendExternalMessage(LiteApi liteApi, TlbCodec<X> tlbCodec, Message<X> message, Continuation<? super Integer> continuation) {
        return WalletContract.DefaultImpls.sendExternalMessage(this, liteApi, tlbCodec, message, continuation);
    }

    @Override // org.ton.contract.SmartContract
    public MsgAddressInt getAddress() {
        return this.address;
    }

    @Override // org.ton.contract.SmartContract
    public AccountState getState() {
        return this.state;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WalletV3R2Contract(AccountInfo accountInfo) {
        this(accountInfo.addr(), accountInfo.storage().state());
        Intrinsics.checkNotNullParameter(accountInfo, "accountInfo");
    }

    public final int getSeqno() {
        Cell data = getData();
        if (data == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        return data.beginParse().preloadInt(32).intValue();
    }

    public final int getSubWalletId() {
        Cell data = getData();
        if (data == null) {
            throw new IllegalArgumentException("Required value was null.".toString());
        }
        CellSlice beginParse = data.beginParse();
        beginParse.skipBits(32);
        return beginParse.preloadInt(32).intValue();
    }

    public final Object transfer(LiteApi liteApi, PrivateKeyEd25519 privateKeyEd25519, WalletTransfer[] walletTransferArr, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Instant now = Clock$System.INSTANCE.now();
        Duration.Companion companion = Duration.Companion;
        Object transfer = transfer(liteApi, privateKeyEd25519, now.m2121plusLRDsOJo(DurationKt.toDuration(60, DurationUnit.SECONDS)), (WalletTransfer[]) Arrays.copyOf(walletTransferArr, walletTransferArr.length), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return transfer == coroutine_suspended ? transfer : Unit.INSTANCE;
    }

    public final Object transfer(LiteApi liteApi, PrivateKeyEd25519 privateKeyEd25519, Instant instant, WalletTransfer[] walletTransferArr, Continuation<? super Unit> continuation) {
        Object coroutine_suspended;
        Object coroutineScope = CoroutineScopeKt.coroutineScope(new WalletV3R2Contract$transfer$3(this, privateKeyEd25519, instant, walletTransferArr, liteApi, null), continuation);
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        return coroutineScope == coroutine_suspended ? coroutineScope : Unit.INSTANCE;
    }

    /* compiled from: WalletV3R2Contract.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0025  */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0046  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x006a A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x006b A[PHI: r9 
          PHI: (r9v7 java.lang.Object) = (r9v6 java.lang.Object), (r9v1 java.lang.Object) binds: [B:21:0x0068, B:12:0x0029] A[DONT_GENERATE, DONT_INLINE], RETURN] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object loadContract(org.ton.lite.client.LiteClient r7, org.ton.block.AddrStd r8, kotlin.coroutines.Continuation<? super com.iMe.storage.data.manager.ton.WalletV3R2Contract> r9) {
            /*
                r6 = this;
                boolean r0 = r9 instanceof com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion$loadContract$1
                if (r0 == 0) goto L13
                r0 = r9
                com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion$loadContract$1 r0 = (com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion$loadContract$1) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion$loadContract$1 r0 = new com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion$loadContract$1
                r0.<init>(r6, r9)
            L18:
                java.lang.Object r9 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                r3 = 2
                r4 = 1
                r5 = 0
                if (r2 == 0) goto L46
                if (r2 == r4) goto L35
                if (r2 != r3) goto L2d
                kotlin.ResultKt.throwOnFailure(r9)
                goto L6b
            L2d:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L35:
                java.lang.Object r7 = r0.L$2
                r8 = r7
                org.ton.block.AddrStd r8 = (org.ton.block.AddrStd) r8
                java.lang.Object r7 = r0.L$1
                org.ton.lite.client.LiteClient r7 = (org.ton.lite.client.LiteClient) r7
                java.lang.Object r2 = r0.L$0
                com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion r2 = (com.iMe.storage.data.manager.ton.WalletV3R2Contract.Companion) r2
                kotlin.ResultKt.throwOnFailure(r9)
                goto L5a
            L46:
                kotlin.ResultKt.throwOnFailure(r9)
                r9 = 0
                r0.L$0 = r6
                r0.L$1 = r7
                r0.L$2 = r8
                r0.label = r4
                java.lang.Object r9 = org.ton.lite.client.LiteClient.getLastBlockId$default(r7, r9, r0, r4, r5)
                if (r9 != r1) goto L59
                return r1
            L59:
                r2 = r6
            L5a:
                org.ton.api.tonnode.TonNodeBlockIdExt r9 = (org.ton.api.tonnode.TonNodeBlockIdExt) r9
                r0.L$0 = r5
                r0.L$1 = r5
                r0.L$2 = r5
                r0.label = r3
                java.lang.Object r9 = r2.loadContract(r7, r9, r8, r0)
                if (r9 != r1) goto L6b
                return r1
            L6b:
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.data.manager.ton.WalletV3R2Contract.Companion.loadContract(org.ton.lite.client.LiteClient, org.ton.block.AddrStd, kotlin.coroutines.Continuation):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x0054 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0055  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object loadContract(org.ton.lite.client.LiteClient r5, org.ton.api.tonnode.TonNodeBlockIdExt r6, org.ton.block.AddrStd r7, kotlin.coroutines.Continuation<? super com.iMe.storage.data.manager.ton.WalletV3R2Contract> r8) {
            /*
                r4 = this;
                boolean r0 = r8 instanceof com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion$loadContract$2
                if (r0 == 0) goto L13
                r0 = r8
                com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion$loadContract$2 r0 = (com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion$loadContract$2) r0
                int r1 = r0.label
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.label = r1
                goto L18
            L13:
                com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion$loadContract$2 r0 = new com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion$loadContract$2
                r0.<init>(r4, r8)
            L18:
                java.lang.Object r8 = r0.result
                java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r2 = r0.label
                r3 = 1
                if (r2 == 0) goto L31
                if (r2 != r3) goto L29
                kotlin.ResultKt.throwOnFailure(r8)
                goto L3d
            L29:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L31:
                kotlin.ResultKt.throwOnFailure(r8)
                r0.label = r3
                java.lang.Object r8 = r5.getAccountState(r7, r6, r0)
                if (r8 != r1) goto L3d
                return r1
            L3d:
                org.ton.lite.client.internal.FullAccountState r8 = (org.ton.lite.client.internal.FullAccountState) r8
                com.iMe.storage.data.manager.ton.WalletV3R2Contract r5 = new com.iMe.storage.data.manager.ton.WalletV3R2Contract
                org.ton.tlb.CellRef r6 = r8.account()
                java.lang.Object r6 = r6.getValue()
                boolean r7 = r6 instanceof org.ton.block.AccountInfo
                r8 = 0
                if (r7 == 0) goto L51
                org.ton.block.AccountInfo r6 = (org.ton.block.AccountInfo) r6
                goto L52
            L51:
                r6 = r8
            L52:
                if (r6 != 0) goto L55
                return r8
            L55:
                r5.<init>(r6)
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.storage.data.manager.ton.WalletV3R2Contract.Companion.loadContract(org.ton.lite.client.LiteClient, org.ton.api.tonnode.TonNodeBlockIdExt, org.ton.block.AddrStd, kotlin.coroutines.Continuation):java.lang.Object");
        }

        public final Message<Cell> createTransferMessage(MsgAddressInt address, StateInit stateInit, PrivateKeyEd25519 privateKey, int i, int i2, int i3, WalletTransfer... transfers) {
            Intrinsics.checkNotNullParameter(address, "address");
            Intrinsics.checkNotNullParameter(privateKey, "privateKey");
            Intrinsics.checkNotNullParameter(transfers, "transfers");
            return new Message<>(new ExtInMsgInfo(AddrNone.INSTANCE, address, new Coins((VarUInteger) null, 1, (DefaultConstructorMarker) null)), Maybe.Companion.m37of(stateInit != null ? Either.Companion.m38of(null, CellRef.Companion.valueOf((CellRef.Companion) stateInit, (TlbCodec<CellRef.Companion>) null)) : null), Either.Companion.m38of(null, CellRef.Companion.valueOf((CellRef.Companion) createTransferMessageBody(privateKey, i, i2, i3, (WalletTransfer[]) Arrays.copyOf(transfers, transfers.length)), (TlbCodec<CellRef.Companion>) null)));
        }

        public static /* synthetic */ StateInit createStateInit$default(Companion companion, PublicKeyEd25519 publicKeyEd25519, int i, int i2, int i3, Object obj) {
            if ((i3 & 4) != 0) {
                i2 = 0;
            }
            return companion.createStateInit(publicKeyEd25519, i, i2);
        }

        public final StateInit createStateInit(final PublicKeyEd25519 publicKey, final int i, final int i2) {
            Intrinsics.checkNotNullParameter(publicKey, "publicKey");
            return new StateInit(WalletV3R2Contract.CODE, CellBuilder.Companion.createCell(new Function1<CellBuilder, Unit>() { // from class: com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion$createStateInit$data$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(CellBuilder cellBuilder) {
                    invoke2(cellBuilder);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(CellBuilder createCell) {
                    Intrinsics.checkNotNullParameter(createCell, "$this$createCell");
                    createCell.storeUInt(i2, 32);
                    createCell.storeUInt(i, 32);
                    createCell.storeBytes(publicKey.getKey().toByteArray());
                }
            }), (HashMapE) null, (UInt) null, (TickTock) null, 28, (DefaultConstructorMarker) null);
        }

        private final Cell createTransferMessageBody(PrivateKeyEd25519 privateKeyEd25519, final int i, final int i2, final int i3, final WalletTransfer... walletTransferArr) {
            CellBuilder.Companion companion = CellBuilder.Companion;
            final Cell createCell = companion.createCell(new Function1<CellBuilder, Unit>() { // from class: com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion$createTransferMessageBody$unsignedBody$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(CellBuilder cellBuilder) {
                    invoke2(cellBuilder);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(CellBuilder createCell2) {
                    WalletTransfer[] walletTransferArr2;
                    MessageRelaxed createIntMsg;
                    Intrinsics.checkNotNullParameter(createCell2, "$this$createCell");
                    createCell2.storeUInt(i, 32);
                    createCell2.storeUInt(i2, 32);
                    createCell2.storeUInt(i3, 32);
                    for (WalletTransfer walletTransfer : walletTransferArr) {
                        int i4 = 3;
                        if (walletTransfer.getSendMode() > -1) {
                            i4 = walletTransfer.getSendMode();
                        }
                        createIntMsg = WalletV3R2Contract.Companion.createIntMsg(walletTransfer);
                        CellRef valueOf = CellRef.Companion.valueOf((CellRef.Companion) createIntMsg, (TlbCodec<CellRef.Companion>) null);
                        createCell2.storeUInt(i4, 8);
                        createCell2.storeRef(valueOf.toCell(MessageRelaxed.Companion.tlbCodec(AnyTlbConstructor.INSTANCE)));
                    }
                }
            });
            byte[] sign = privateKeyEd25519.sign(BitString.DefaultImpls.toByteArray$default(Cell.DefaultImpls.hash$default(createCell, 0, 1, null), false, 1, null));
            final BitString m43of = BitString.Companion.m43of(sign, sign.length * 8);
            return companion.createCell(new Function1<CellBuilder, Unit>() { // from class: com.iMe.storage.data.manager.ton.WalletV3R2Contract$Companion$createTransferMessageBody$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(CellBuilder cellBuilder) {
                    invoke2(cellBuilder);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2(CellBuilder createCell2) {
                    Intrinsics.checkNotNullParameter(createCell2, "$this$createCell");
                    createCell2.storeBits(BitString.this);
                    createCell2.storeBits(createCell.getBits());
                    createCell2.storeRefs(createCell.getRefs());
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final MessageRelaxed<Cell> createIntMsg(WalletTransfer walletTransfer) {
            Either either;
            Either m38of;
            CommonMsgInfoRelaxed.IntMsgInfoRelaxed intMsgInfoRelaxed = new CommonMsgInfoRelaxed.IntMsgInfoRelaxed(true, walletTransfer.getBounceable(), false, AddrNone.INSTANCE, walletTransfer.getDestination(), walletTransfer.getCoins(), new Coins((VarUInteger) null, 1, (DefaultConstructorMarker) null), new Coins((VarUInteger) null, 1, (DefaultConstructorMarker) null), 0L, 0, null);
            Maybe.Companion companion = Maybe.Companion;
            StateInit stateInit = walletTransfer.getStateInit();
            if (stateInit != null) {
                either = Either.Companion.m38of(null, CellRef.Companion.valueOf((CellRef.Companion) stateInit, (TlbCodec<CellRef.Companion>) StateInit.Companion));
            } else {
                either = null;
            }
            Maybe m37of = companion.m37of(either);
            Cell body = walletTransfer.getBody();
            if (body == null) {
                m38of = Either.Companion.m38of(Cell.Companion.empty(), null);
            } else {
                m38of = Either.Companion.m38of(null, CellRef.Companion.valueOf((CellRef.Companion) body, (TlbCodec<CellRef.Companion>) null));
            }
            return new MessageRelaxed<>(intMsgInfoRelaxed, m37of, m38of);
        }
    }
}
