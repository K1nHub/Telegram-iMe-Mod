package com.iMe.p031ui.wallet.actions.send.recipient;

import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3290R;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.actions.send.recipient.WalletSendRecipientPresenter$validateRecipientAddress$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2096xbc0d2688 extends Lambda implements Function1<Result<? extends String>, Unit> {
    final /* synthetic */ WalletSendRecipientPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2096xbc0d2688(WalletSendRecipientPresenter walletSendRecipientPresenter) {
        super(1);
        this.this$0 = walletSendRecipientPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends String> result) {
        m1390invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1390invoke(Result<? extends String> it) {
        ResourceManager resourceManager;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends String> result = it;
        if (result instanceof Result.Success) {
            Result.Success success = (Result.Success) result;
            if (!(((CharSequence) success.getData()).length() > 0)) {
                resourceManager = this.this$0.resourceManager;
                ((WalletSendRecipientView) this.this$0.getViewState()).showToast(resourceManager.getString(C3290R.string.wallet_recipient_validation_address_error));
                return;
            }
            ((WalletSendRecipientView) this.this$0.getViewState()).onRecipientSelected("", (String) success.getData(), false);
        }
    }
}
