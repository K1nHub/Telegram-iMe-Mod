package com.smedialink.p031ui.wallet.actions.send.amount;

import com.smedialink.storage.domain.model.Result;
import com.smedialink.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3301R;
/* compiled from: RxExt.kt */
/* renamed from: com.smedialink.ui.wallet.actions.send.amount.WalletSendAmountPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2012x6b9f8be9 extends Lambda implements Function1<Result<? extends String>, Unit> {
    final /* synthetic */ WalletSendAmountPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2012x6b9f8be9(WalletSendAmountPresenter walletSendAmountPresenter) {
        super(1);
        this.this$0 = walletSendAmountPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
        m1303invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1303invoke(Result<? extends String> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends String> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            if (!(((CharSequence) success.getData()).length() > 0)) {
                resourceManager = this.this$0.resourceManager;
                ((WalletSendAmountView) this.this$0.getViewState()).showToast(resourceManager.getString(C3301R.string.wallet_recipient_validation_address_error));
                return;
            }
            this.this$0.setSelectedAddress((String) success.getData());
            this.this$0.setSelectedUser(null);
            this.this$0.setSelectedChat(null);
            this.this$0.setSelectedTwitterUserAvatarUrl(null);
            ((WalletSendAmountView) this.this$0.getViewState()).updateSelectedUser();
        }
    }
}
