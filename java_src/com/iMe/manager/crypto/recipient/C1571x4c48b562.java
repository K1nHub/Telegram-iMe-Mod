package com.iMe.manager.crypto.recipient;

import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.manager.crypto.recipient.CryptoRecipientManager;
import com.iMe.mapper.crypto.AddressUiMappingKt;
import com.iMe.model.dialog.DialogModel;
import com.iMe.model.wallet.crypto.send.AddressAccessState;
import com.iMe.storage.data.network.handlers.impl.FirebaseFunctionsErrorHandler;
import com.iMe.storage.domain.model.Result;
import com.iMe.storage.domain.model.crypto.AccountInfo;
import com.iMe.storage.domain.model.crypto.BlockchainType;
import com.iMe.storage.domain.utils.system.ResourceManager;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3295R;
/* compiled from: RxExt.kt */
/* renamed from: com.iMe.manager.crypto.recipient.CryptoRecipientManager$loadAddressInfoById$$inlined$subscribeWithErrorHandle$default$1 */
/* loaded from: classes3.dex */
public final class C1571x4c48b562 extends Lambda implements Function1<Result<? extends AccountInfo>, Unit> {
    final /* synthetic */ BlockchainType $blockchainType$inlined;
    final /* synthetic */ String $recipient$inlined;
    final /* synthetic */ CryptoRecipientManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1571x4c48b562(CryptoRecipientManager cryptoRecipientManager, String str, BlockchainType blockchainType) {
        super(1);
        this.this$0 = cryptoRecipientManager;
        this.$recipient$inlined = str;
        this.$blockchainType$inlined = blockchainType;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Result<? extends AccountInfo> result) {
        m1276invoke(result);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: collision with other method in class */
    public final void m1276invoke(Result<? extends AccountInfo> it) {
        CryptoRecipientView viewState;
        ResourceManager resourceManager;
        CryptoRecipientView viewState2;
        ResourceManager resourceManager2;
        ResourceManager resourceManager3;
        ResourceManager resourceManager4;
        AccountInfo.Address ethAddress;
        CryptoRecipientView viewState3;
        ResourceManager resourceManager5;
        ResourceManager resourceManager6;
        ResourceManager resourceManager7;
        CryptoRecipientView viewState4;
        DialogModel requestPermissionDialogModel;
        CryptoRecipientView viewState5;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        Result<? extends AccountInfo> result = it;
        if (result instanceof Result.Success) {
            AccountInfo accountInfo = (AccountInfo) ((Result.Success) result).getData();
            int i = CryptoRecipientManager.WhenMappings.$EnumSwitchMapping$0[this.$blockchainType$inlined.ordinal()];
            if (i == 1) {
                ethAddress = accountInfo.getEthAddress();
            } else if (i == 2) {
                ethAddress = accountInfo.getTronAddress();
            } else if (i == 3) {
                ethAddress = accountInfo.getTonAddress();
            } else if (i != 4) {
                throw new NoWhenBranchMatchedException();
            } else {
                ethAddress = accountInfo.getBitcoinAddress();
            }
            AddressAccessState mapToUI = AddressUiMappingKt.mapToUI(ethAddress);
            if (mapToUI instanceof AddressAccessState.Granted) {
                viewState5 = this.this$0.getViewState();
                viewState5.onRecipientSelected(this.$recipient$inlined, ((AddressAccessState.Granted) mapToUI).getAddress(), true);
            } else if (mapToUI instanceof AddressAccessState.Denied) {
                viewState4 = this.this$0.getViewState();
                String str = this.$recipient$inlined;
                requestPermissionDialogModel = this.this$0.getRequestPermissionDialogModel();
                final CryptoRecipientManager cryptoRecipientManager = this.this$0;
                final String str2 = this.$recipient$inlined;
                viewState4.showRequestPermissionDialog(str, requestPermissionDialogModel, new Callbacks$Callback() { // from class: com.iMe.manager.crypto.recipient.CryptoRecipientManager$loadAddressInfoById$1$1
                    @Override // com.iMe.fork.utils.Callbacks$Callback
                    public final void invoke() {
                        CryptoRecipientManager.this.requestAddressPermission(str2);
                    }
                });
            } else if (mapToUI instanceof AddressAccessState.NotAvailable) {
                viewState3 = this.this$0.getViewState();
                resourceManager5 = this.this$0.resourceManager;
                String string = resourceManager5.getString(C3295R.string.wallet_amount_error_invalid_user_title);
                resourceManager6 = this.this$0.resourceManager;
                String string2 = resourceManager6.getString(C3295R.string.wallet_recipient_error_dialog_no_eth_address_description);
                resourceManager7 = this.this$0.resourceManager;
                viewState3.showErrorDialog(string, string2, resourceManager7.getString(C3295R.string.wallet_amount_error_invalid_user_btn_txt));
            }
        } else if (result instanceof Result.Error) {
            Result.Error error = (Result.Error) result;
            if (error.getError().getStatus() == FirebaseFunctionsErrorHandler.ErrorStatus.USER_NOT_FOUND) {
                viewState2 = this.this$0.getViewState();
                resourceManager2 = this.this$0.resourceManager;
                String string3 = resourceManager2.getString(C3295R.string.wallet_amount_error_invalid_user_title);
                resourceManager3 = this.this$0.resourceManager;
                String string4 = resourceManager3.getString(C3295R.string.wallet_amount_error_user_wallet_not_activated_description);
                resourceManager4 = this.this$0.resourceManager;
                viewState2.showErrorDialog(string3, string4, resourceManager4.getString(C3295R.string.wallet_amount_error_invalid_user_btn_txt));
                return;
            }
            viewState = this.this$0.getViewState();
            resourceManager = this.this$0.resourceManager;
            viewState.showErrorToast(error, resourceManager);
        }
    }
}
