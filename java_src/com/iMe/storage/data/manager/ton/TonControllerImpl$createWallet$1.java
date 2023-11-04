package com.iMe.storage.data.manager.ton;

import com.iMe.storage.data.utils.extentions.StringExtKt;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.Wallet;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.ton.api.p044pk.PrivateKeyEd25519;
import org.ton.api.pub.PublicKeyEd25519;
import org.ton.block.MsgAddressInt;
import org.ton.contract.wallet.WalletContract;
import org.ton.mnemonic.Mnemonic;
/* compiled from: TonControllerImpl.kt */
@DebugMetadata(m145c = "com.iMe.storage.data.manager.ton.TonControllerImpl$createWallet$1", m144f = "TonControllerImpl.kt", m143l = {74, 77}, m142m = "invokeSuspend")
/* loaded from: classes3.dex */
final class TonControllerImpl$createWallet$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Wallet>>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ TonControllerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TonControllerImpl$createWallet$1(TonControllerImpl tonControllerImpl, Continuation<? super TonControllerImpl$createWallet$1> continuation) {
        super(2, continuation);
        this.this$0 = tonControllerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TonControllerImpl$createWallet$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends Wallet>> continuation) {
        return ((TonControllerImpl$createWallet$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        Object initWallet;
        List list;
        PrivateKeyEd25519 privateKeySafe;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = Mnemonic.generate$default(null, 0, null, null, this, 15, null);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            if (i == 2) {
                list = (List) this.L$0;
                ResultKt.throwOnFailure(obj);
                TonControllerImpl tonControllerImpl = this.this$0;
                String joinBySpace = StringExtKt.joinBySpace(list);
                String string$default = MsgAddressInt.Companion.toString$default(MsgAddressInt.Companion, ((WalletContract) obj).getAddress(), false, false, false, false, 30, null);
                privateKeySafe = tonControllerImpl.getPrivateKeySafe();
                return Result.Companion.success(new Wallet.TON("", joinBySpace, string$default, PublicKeyEd25519.Companion.m48of(privateKeySafe).getKey().encodeHex()));
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        List list2 = (List) obj;
        this.this$0.privateKey = PrivateKeyEd25519.Companion.m49of(Mnemonic.toSeed$default(list2, null, 2, null));
        TonControllerImpl tonControllerImpl2 = this.this$0;
        this.L$0 = list2;
        this.label = 2;
        initWallet = tonControllerImpl2.initWallet(this);
        if (initWallet == coroutine_suspended) {
            return coroutine_suspended;
        }
        list = list2;
        obj = initWallet;
        TonControllerImpl tonControllerImpl3 = this.this$0;
        String joinBySpace2 = StringExtKt.joinBySpace(list);
        String string$default2 = MsgAddressInt.Companion.toString$default(MsgAddressInt.Companion, ((WalletContract) obj).getAddress(), false, false, false, false, 30, null);
        privateKeySafe = tonControllerImpl3.getPrivateKeySafe();
        return Result.Companion.success(new Wallet.TON("", joinBySpace2, string$default2, PublicKeyEd25519.Companion.m48of(privateKeySafe).getKey().encodeHex()));
    }
}
