package org.ton.contract.wallet;

import kotlin.coroutines.Continuation;
import org.ton.block.Message;
import org.ton.cell.Cell;
import org.ton.contract.SmartContract;
import org.ton.lite.api.LiteApi;
import org.ton.tlb.TlbCodec;
/* compiled from: WalletContract.kt */
/* loaded from: classes6.dex */
public interface WalletContract<T> extends SmartContract<T> {
    public static final int DEFAULT_WALLET_ID;

    /* compiled from: WalletContract.kt */
    /* loaded from: classes6.dex */
    public static final class DefaultImpls {
        public static <T> Cell getData(WalletContract<T> walletContract) {
            return SmartContract.DefaultImpls.getData(walletContract);
        }

        public static <T> Object sendExternalMessage(WalletContract<T> walletContract, LiteApi liteApi, Cell cell, Continuation<? super Integer> continuation) {
            return SmartContract.DefaultImpls.sendExternalMessage(walletContract, liteApi, cell, continuation);
        }

        public static <T, X> Object sendExternalMessage(WalletContract<T> walletContract, LiteApi liteApi, TlbCodec<X> tlbCodec, Message<X> message, Continuation<? super Integer> continuation) {
            return SmartContract.DefaultImpls.sendExternalMessage(walletContract, liteApi, tlbCodec, message, continuation);
        }
    }

    /* compiled from: WalletContract.kt */
    /* loaded from: classes6.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }
    }

    static {
        Companion companion = Companion.$$INSTANCE;
        DEFAULT_WALLET_ID = 698983191;
    }
}
