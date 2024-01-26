package com.iMe.storage.data.manager.ton;

import com.iMe.storage.data.manager.ton.WalletV3R2Contract;
import java.util.Arrays;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.datetime.Instant;
import org.ton.api.p044pk.PrivateKeyEd25519;
import org.ton.block.AccountActive;
import org.ton.block.Message;
import org.ton.block.MsgAddressInt;
import org.ton.block.StateInit;
import org.ton.cell.Cell;
import org.ton.contract.wallet.WalletContract;
import org.ton.contract.wallet.WalletTransfer;
import org.ton.lite.api.LiteApi;
import org.ton.tlb.constructor.AnyTlbConstructor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletV3R2Contract.kt */
@DebugMetadata(m148c = "com.iMe.storage.data.manager.ton.WalletV3R2Contract$transfer$3", m147f = "WalletV3R2Contract.kt", m146l = {96}, m145m = "invokeSuspend")
/* loaded from: classes3.dex */
public final class WalletV3R2Contract$transfer$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ LiteApi $liteApi;
    final /* synthetic */ PrivateKeyEd25519 $privateKey;
    final /* synthetic */ Integer $remoteSeqno;
    final /* synthetic */ WalletTransfer[] $transfers;
    final /* synthetic */ Instant $validUntil;
    int label;
    final /* synthetic */ WalletV3R2Contract this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletV3R2Contract$transfer$3(Integer num, WalletV3R2Contract walletV3R2Contract, PrivateKeyEd25519 privateKeyEd25519, Instant instant, WalletTransfer[] walletTransferArr, LiteApi liteApi, Continuation<? super WalletV3R2Contract$transfer$3> continuation) {
        super(2, continuation);
        this.$remoteSeqno = num;
        this.this$0 = walletV3R2Contract;
        this.$privateKey = privateKeyEd25519;
        this.$validUntil = instant;
        this.$transfers = walletTransferArr;
        this.$liteApi = liteApi;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WalletV3R2Contract$transfer$3(this.$remoteSeqno, this.this$0, this.$privateKey, this.$validUntil, this.$transfers, this.$liteApi, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((WalletV3R2Contract$transfer$3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        int seqno;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Integer num = this.$remoteSeqno;
            if (num != null) {
                seqno = num.intValue();
            } else {
                seqno = !(this.this$0.getState() instanceof AccountActive) ? 0 : this.this$0.getSeqno();
            }
            int i2 = seqno;
            int subWalletId = !(this.this$0.getState() instanceof AccountActive) ? WalletContract.DEFAULT_WALLET_ID : this.this$0.getSubWalletId();
            WalletV3R2Contract.Companion companion = WalletV3R2Contract.Companion;
            MsgAddressInt address = this.this$0.getAddress();
            StateInit createStateInit$default = !(this.this$0.getState() instanceof AccountActive) ? WalletV3R2Contract.Companion.createStateInit$default(companion, this.$privateKey.publicKey(), subWalletId, 0, 4, null) : null;
            int epochSeconds = (int) this.$validUntil.getEpochSeconds();
            WalletTransfer[] walletTransferArr = this.$transfers;
            Message<Cell> createTransferMessage = companion.createTransferMessage(address, createStateInit$default, this.$privateKey, subWalletId, epochSeconds, i2, (WalletTransfer[]) Arrays.copyOf(walletTransferArr, walletTransferArr.length));
            WalletV3R2Contract walletV3R2Contract = this.this$0;
            LiteApi liteApi = this.$liteApi;
            AnyTlbConstructor anyTlbConstructor = AnyTlbConstructor.INSTANCE;
            this.label = 1;
            if (walletV3R2Contract.sendExternalMessage(liteApi, anyTlbConstructor, createTransferMessage, this) == coroutine_suspended) {
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
