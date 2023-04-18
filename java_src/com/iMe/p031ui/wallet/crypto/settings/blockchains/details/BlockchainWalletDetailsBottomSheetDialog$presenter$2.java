package com.iMe.p031ui.wallet.crypto.settings.blockchains.details;

import com.iMe.model.wallet.crypto.settings.BlockchainWalletItem;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p043mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BlockchainWalletDetailsBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$presenter$2 */
/* loaded from: classes3.dex */
public final class BlockchainWalletDetailsBottomSheetDialog$presenter$2 extends Lambda implements Function0<BlockchainWalletDetailsPresenter> {
    final /* synthetic */ BlockchainWalletDetailsBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockchainWalletDetailsBottomSheetDialog$presenter$2(BlockchainWalletDetailsBottomSheetDialog blockchainWalletDetailsBottomSheetDialog) {
        super(0);
        this.this$0 = blockchainWalletDetailsBottomSheetDialog;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BlockchainWalletDetailsBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.settings.blockchains.details.BlockchainWalletDetailsBottomSheetDialog$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C21421 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ BlockchainWalletDetailsBottomSheetDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C21421(BlockchainWalletDetailsBottomSheetDialog blockchainWalletDetailsBottomSheetDialog) {
            super(0);
            this.this$0 = blockchainWalletDetailsBottomSheetDialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            BlockchainWalletItem blockchainWalletItem;
            blockchainWalletItem = this.this$0.walletItem;
            return ParametersHolderKt.parametersOf(blockchainWalletItem);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final BlockchainWalletDetailsPresenter invoke() {
        Lazy lazy;
        BlockchainWalletDetailsBottomSheetDialog blockchainWalletDetailsBottomSheetDialog = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2140xac57dd17(blockchainWalletDetailsBottomSheetDialog, null, new C21421(blockchainWalletDetailsBottomSheetDialog)));
        return (BlockchainWalletDetailsPresenter) lazy.getValue();
    }
}
