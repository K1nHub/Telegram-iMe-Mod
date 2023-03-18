package com.smedialink.p031ui.wallet.crypto.settings.blockchains;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BlockchainsManagementFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.settings.blockchains.BlockchainsManagementFragment$presenter$2 */
/* loaded from: classes3.dex */
public final class BlockchainsManagementFragment$presenter$2 extends Lambda implements Function0<BlockchainsManagementPresenter> {
    final /* synthetic */ BlockchainsManagementFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BlockchainsManagementFragment$presenter$2(BlockchainsManagementFragment blockchainsManagementFragment) {
        super(0);
        this.this$0 = blockchainsManagementFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final BlockchainsManagementPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2079xf9c4974c(this.this$0, null, null));
        return (BlockchainsManagementPresenter) lazy.getValue();
    }
}
