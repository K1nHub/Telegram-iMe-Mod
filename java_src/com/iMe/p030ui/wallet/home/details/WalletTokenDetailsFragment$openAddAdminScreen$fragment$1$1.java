package com.iMe.p030ui.wallet.home.details;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p042ui.ChatRightsEditActivity;
import org.telegram.p042ui.Components.BulletinFactory;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
import org.telegram.tgnet.TLRPC$TL_chatBannedRights;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: WalletTokenDetailsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1 */
/* loaded from: classes4.dex */
public final class WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1 implements ChatRightsEditActivity.ChatRightsEditActivityDelegate {
    final /* synthetic */ String $boxId;
    final /* synthetic */ ChatRightsEditActivity $this_apply;
    final /* synthetic */ long $walletBotId;
    final /* synthetic */ WalletTokenDetailsFragment this$0;

    @Override // org.telegram.p042ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
    public void didChangeOwner(TLRPC$User tLRPC$User) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1(ChatRightsEditActivity chatRightsEditActivity, long j, WalletTokenDetailsFragment walletTokenDetailsFragment, String str) {
        this.$this_apply = chatRightsEditActivity;
        this.$walletBotId = j;
        this.this$0 = walletTokenDetailsFragment;
        this.$boxId = str;
    }

    @Override // org.telegram.p042ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
    public void didSetRights(int i, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights, String str) {
        WalletTokenDetailsPresenter presenter;
        final TLRPC$User user = this.$this_apply.getMessagesController().getUser(Long.valueOf(this.$walletBotId));
        if (user != null) {
            final WalletTokenDetailsFragment walletTokenDetailsFragment = this.this$0;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.ui.wallet.home.details.WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    WalletTokenDetailsFragment$openAddAdminScreen$fragment$1$1.didSetRights$lambda$0(WalletTokenDetailsFragment.this, user);
                }
            }, 200L);
        }
        presenter = this.this$0.getPresenter();
        presenter.showCryptoBoxRefreshConfirmation(this.$boxId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void didSetRights$lambda$0(WalletTokenDetailsFragment this$0, TLRPC$User tLRPC$User) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (BulletinFactory.canShowBulletin(this$0)) {
            BulletinFactory.createPromoteToAdminBulletin(this$0, tLRPC$User.first_name).show();
        }
    }
}
