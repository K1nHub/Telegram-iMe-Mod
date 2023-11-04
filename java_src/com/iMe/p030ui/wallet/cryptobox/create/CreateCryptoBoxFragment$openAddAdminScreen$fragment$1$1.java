package com.iMe.p030ui.wallet.cryptobox.create;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ChatRightsEditActivity;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
import org.telegram.tgnet.TLRPC$TL_chatBannedRights;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: CreateCryptoBoxFragment.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1 */
/* loaded from: classes3.dex */
public final class CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1 implements ChatRightsEditActivity.ChatRightsEditActivityDelegate {
    final /* synthetic */ TLRPC$Chat $chat;
    final /* synthetic */ ChatRightsEditActivity $this_apply;
    final /* synthetic */ long $walletBotId;
    final /* synthetic */ CreateCryptoBoxFragment this$0;

    @Override // org.telegram.p043ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
    public void didChangeOwner(TLRPC$User tLRPC$User) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1(ChatRightsEditActivity chatRightsEditActivity, long j, CreateCryptoBoxFragment createCryptoBoxFragment, TLRPC$Chat tLRPC$Chat) {
        this.$this_apply = chatRightsEditActivity;
        this.$walletBotId = j;
        this.this$0 = createCryptoBoxFragment;
        this.$chat = tLRPC$Chat;
    }

    @Override // org.telegram.p043ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
    public void didSetRights(int i, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights, String str) {
        CreateCryptoBoxPresenter presenter;
        final TLRPC$User user = this.$this_apply.getMessagesController().getUser(Long.valueOf(this.$walletBotId));
        if (user != null) {
            final CreateCryptoBoxFragment createCryptoBoxFragment = this.this$0;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.ui.wallet.cryptobox.create.CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CreateCryptoBoxFragment$openAddAdminScreen$fragment$1$1.didSetRights$lambda$0(CreateCryptoBoxFragment.this, user);
                }
            }, 200L);
        }
        presenter = this.this$0.getPresenter();
        presenter.onWalletBotAdminRightsGranted(this.$chat);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void didSetRights$lambda$0(CreateCryptoBoxFragment this$0, TLRPC$User tLRPC$User) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (BulletinFactory.canShowBulletin(this$0)) {
            BulletinFactory.createPromoteToAdminBulletin(this$0, tLRPC$User.first_name).show();
        }
    }
}
