package com.iMe.p032ui.wallet.crypto.buy.customPrice;

import com.iMe.model.wallet.crypto.buy.CryptoBuyItem;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CryptoBuyCustomPriceBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$presenter$2 */
/* loaded from: classes3.dex */
public final class CryptoBuyCustomPriceBottomSheetDialog$presenter$2 extends Lambda implements Function0<CryptoBuyCustomPricePresenter> {
    final /* synthetic */ CryptoBuyCustomPriceBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CryptoBuyCustomPriceBottomSheetDialog$presenter$2(CryptoBuyCustomPriceBottomSheetDialog cryptoBuyCustomPriceBottomSheetDialog) {
        super(0);
        this.this$0 = cryptoBuyCustomPriceBottomSheetDialog;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CryptoBuyCustomPriceBottomSheetDialog.kt */
    /* renamed from: com.iMe.ui.wallet.crypto.buy.customPrice.CryptoBuyCustomPriceBottomSheetDialog$presenter$2$1 */
    /* loaded from: classes3.dex */
    public static final class C21081 extends Lambda implements Function0<ParametersHolder> {
        final /* synthetic */ CryptoBuyCustomPriceBottomSheetDialog this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C21081(CryptoBuyCustomPriceBottomSheetDialog cryptoBuyCustomPriceBottomSheetDialog) {
            super(0);
            this.this$0 = cryptoBuyCustomPriceBottomSheetDialog;
        }

        @Override // kotlin.jvm.functions.Function0
        public final ParametersHolder invoke() {
            CryptoBuyItem cryptoBuyItem;
            cryptoBuyItem = this.this$0.minItem;
            return ParametersHolderKt.parametersOf(cryptoBuyItem);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final CryptoBuyCustomPricePresenter invoke() {
        Lazy lazy;
        CryptoBuyCustomPriceBottomSheetDialog cryptoBuyCustomPriceBottomSheetDialog = this.this$0;
        lazy = LazyKt__LazyJVMKt.lazy(KoinPlatformTools.INSTANCE.defaultLazyMode(), new C2105xd82e53d5(cryptoBuyCustomPriceBottomSheetDialog, null, new C21081(cryptoBuyCustomPriceBottomSheetDialog)));
        return (CryptoBuyCustomPricePresenter) lazy.getValue();
    }
}
