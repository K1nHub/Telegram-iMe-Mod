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
@DebugMetadata(m145c = "com.iMe.storage.data.manager.ton.TonControllerImpl$importWallet$1", m144f = "TonControllerImpl.kt", m143l = {97}, m142m = "invokeSuspend")
/* loaded from: classes3.dex */
final class TonControllerImpl$importWallet$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Wallet.TON>>, Object> {
    final /* synthetic */ List<String> $mnemonic;
    int label;
    final /* synthetic */ TonControllerImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TonControllerImpl$importWallet$1(TonControllerImpl tonControllerImpl, List<String> list, Continuation<? super TonControllerImpl$importWallet$1> continuation) {
        super(2, continuation);
        this.this$0 = tonControllerImpl;
        this.$mnemonic = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TonControllerImpl$importWallet$1(this.this$0, this.$mnemonic, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends Wallet.TON>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<Wallet.TON>>) continuation);
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<Wallet.TON>> continuation) {
        return ((TonControllerImpl$importWallet$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended;
        PrivateKeyEd25519 privateKeySafe;
        coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.this$0.privateKey = PrivateKeyEd25519.Companion.m49of(Mnemonic.toSeed$default(this.$mnemonic, null, 2, null));
            TonControllerImpl tonControllerImpl = this.this$0;
            this.label = 1;
            obj = tonControllerImpl.initWallet(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            ResultKt.throwOnFailure(obj);
        }
        String joinBySpace = StringExtKt.joinBySpace(this.$mnemonic);
        String string$default = MsgAddressInt.Companion.toString$default(MsgAddressInt.Companion, ((WalletContract) obj).getAddress(), false, false, false, false, 30, null);
        privateKeySafe = this.this$0.getPrivateKeySafe();
        return Result.Companion.success(new Wallet.TON("", joinBySpace, string$default, PublicKeyEd25519.Companion.m48of(privateKeySafe).getKey().encodeHex()));
    }
}
