package com.iMe.p031ui.wallet.crypto.address_mismatch;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.p043mp.KoinPlatformTools;
/* compiled from: AddressMismatchFragment.kt */
/* renamed from: com.iMe.ui.wallet.crypto.address_mismatch.AddressMismatchFragment$presenter$2 */
/* loaded from: classes3.dex */
final class AddressMismatchFragment$presenter$2 extends Lambda implements Function0<AddressMismatchPresenter> {
    final /* synthetic */ AddressMismatchFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddressMismatchFragment$presenter$2(AddressMismatchFragment addressMismatchFragment) {
        super(0);
        this.this$0 = addressMismatchFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final AddressMismatchPresenter invoke() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2119xf22f97ac(this.this$0, null, null));
        return (AddressMismatchPresenter) lazy.getValue();
    }
}
