package com.iMe.p031ui.wallet.crypto.settings.blockchains;

import com.iMe.model.wallet.crypto.settings.BlockchainWalletItem;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: BlockchainsManagementFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$showWalletDetailsDialog$2 */
/* loaded from: classes6.dex */
/* synthetic */ class BlockchainsManagementFragment$showWalletDetailsDialog$2 extends FunctionReferenceImpl implements Function1<BlockchainWalletItem, Unit> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public BlockchainsManagementFragment$showWalletDetailsDialog$2(Object obj) {
        super(1, obj, BlockchainsManagementPresenter.class, "showWalletBackup", "showWalletBackup(Lcom/iMe/model/wallet/crypto/settings/BlockchainWalletItem;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(BlockchainWalletItem blockchainWalletItem) {
        invoke2(blockchainWalletItem);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(BlockchainWalletItem p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((BlockchainsManagementPresenter) this.receiver).showWalletBackup(p0);
    }
}
