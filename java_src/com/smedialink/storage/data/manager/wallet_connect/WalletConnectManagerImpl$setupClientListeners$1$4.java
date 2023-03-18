package com.smedialink.storage.data.manager.wallet_connect;

import com.trustwallet.walletconnect.WCClient;
import com.trustwallet.walletconnect.WCSessionStoreItem;
import com.trustwallet.walletconnect.models.ethereum.WCEthereumSignMessage;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: WalletConnectManagerImpl.kt */
/* loaded from: classes3.dex */
public final class WalletConnectManagerImpl$setupClientListeners$1$4 extends Lambda implements Function2<Long, WCEthereumSignMessage, Unit> {
    final /* synthetic */ WCSessionStoreItem $sessionStoreItem;
    final /* synthetic */ WCClient $this_with;
    final /* synthetic */ WalletConnectManagerImpl this$0;

    /* compiled from: WalletConnectManagerImpl.kt */
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WCEthereumSignMessage.WCSignType.values().length];
            try {
                iArr[WCEthereumSignMessage.WCSignType.TYPED_MESSAGE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletConnectManagerImpl$setupClientListeners$1$4(WCClient wCClient, WalletConnectManagerImpl walletConnectManagerImpl, WCSessionStoreItem wCSessionStoreItem) {
        super(2);
        this.$this_with = wCClient;
        this.this$0 = walletConnectManagerImpl;
        this.$sessionStoreItem = wCSessionStoreItem;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Long l, WCEthereumSignMessage wCEthereumSignMessage) {
        invoke(l.longValue(), wCEthereumSignMessage);
        return Unit.INSTANCE;
    }

    public final void invoke(long j, WCEthereumSignMessage message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (WhenMappings.$EnumSwitchMapping$0[message.getType().ordinal()] == 1) {
            this.$this_with.rejectRequest(j, "Method is unsupported");
        } else {
            this.this$0.getEventsDelegate().onEthSign(j, this.$sessionStoreItem, message);
        }
    }
}
