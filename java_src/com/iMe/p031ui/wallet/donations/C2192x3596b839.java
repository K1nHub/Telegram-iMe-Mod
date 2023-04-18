package com.iMe.p031ui.wallet.donations;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3242R;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.donations.WalletDonationsPresenter$linkAddress$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2192x3596b839 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ String $address$inlined;
    final /* synthetic */ WalletDonationsPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2192x3596b839(WalletDonationsPresenter walletDonationsPresenter, String str) {
        super(1);
        this.this$0 = walletDonationsPresenter;
        this.$address$inlined = str;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1418invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1418invoke(Result<? extends Boolean> it) {
        ResourceManager resourceManager;
        ResourceManager resourceManager2;
        DialogModel linkAddressDialogModel;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (!(result instanceof Result.Success)) {
            if (result instanceof Result.Error) {
                resourceManager = this.this$0.resourceManager;
                ((WalletDonationsView) this.this$0.getViewState()).showErrorToast((Result.Error) result, resourceManager);
            }
        } else if (((Boolean) ((Result.Success) result).getData()).booleanValue()) {
            linkAddressDialogModel = this.this$0.getLinkAddressDialogModel(this.$address$inlined, false);
            final WalletDonationsPresenter walletDonationsPresenter = this.this$0;
            final String str = this.$address$inlined;
            ((WalletDonationsView) this.this$0.getViewState()).showConfirmDialog(linkAddressDialogModel, new Callbacks$Callback() { // from class: com.iMe.ui.wallet.donations.WalletDonationsPresenter$linkAddress$1$1
                @Override // com.iMe.fork.utils.Callbacks$Callback
                public final void invoke() {
                    WalletDonationsPresenter.this.saveDonationAddress(str);
                }
            });
        } else {
            resourceManager2 = this.this$0.resourceManager;
            ((WalletDonationsView) this.this$0.getViewState()).showToast(resourceManager2.getString(C3242R.string.channel_donations_incorrect_address_error));
        }
    }
}
