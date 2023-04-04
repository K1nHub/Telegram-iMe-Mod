package com.iMe.p032ui.wallet.airdrop.dialog;

import com.iMe.storage.data.locale.prefs.model.WalletAirdropMetadata;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.airdrop.AirdropStatus;
import com.iMe.storage.domain.storage.CryptoPreferenceHelper;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3316R;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.ui.wallet.airdrop.dialog.WalletAirdropDialogPresenter$getTokensByAirdrop$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C2085x9d8065d9 extends Lambda implements Function1<Result<? extends Boolean>, Unit> {
    final /* synthetic */ WalletAirdropDialogPresenter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2085x9d8065d9(WalletAirdropDialogPresenter walletAirdropDialogPresenter) {
        super(1);
        this.this$0 = walletAirdropDialogPresenter;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends Boolean> result) {
        m1391invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1391invoke(Result<? extends Boolean> it) {
        CryptoPreferenceHelper cryptoPreferenceHelper;
        CryptoPreferenceHelper cryptoPreferenceHelper2;
        ResourceManager resourceManager;
        ResourceManager resourceManager2;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends Boolean> result = it;
        if (result instanceof Result.Success) {
            cryptoPreferenceHelper = this.this$0.preferenceHelper;
            cryptoPreferenceHelper2 = this.this$0.preferenceHelper;
            cryptoPreferenceHelper.setAirdropMetadata(WalletAirdropMetadata.copy$default(cryptoPreferenceHelper2.getAirdropMetadata(), false, 0, null, AirdropStatus.FINISHED, null, 23, null));
            this.this$0.enableWalletMenuItem();
            resourceManager = this.this$0.resourceManager;
            String string = resourceManager.getString(C3316R.string.airdrop_success_dialog_title);
            resourceManager2 = this.this$0.resourceManager;
            ((WalletAirdropDialogView) this.this$0.getViewState()).onSuccessClaimAirdrop(string, resourceManager2.getString(C3316R.string.airdrop_success_dialog_description));
            ((WalletAirdropDialogView) this.this$0.getViewState()).finishScreen();
        } else if (result instanceof Result.Error) {
            this.this$0.handleErrors(((Result.Error) result).getError());
        }
    }
}
