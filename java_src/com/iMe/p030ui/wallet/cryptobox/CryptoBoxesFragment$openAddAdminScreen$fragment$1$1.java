package com.iMe.p030ui.wallet.cryptobox;

import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p042ui.ChatRightsEditActivity;
import org.telegram.p042ui.Components.BulletinFactory;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
import org.telegram.tgnet.TLRPC$TL_chatBannedRights;
import org.telegram.tgnet.TLRPC$User;
/* compiled from: CryptoBoxesFragment.kt */
/* renamed from: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$openAddAdminScreen$fragment$1$1 */
/* loaded from: classes3.dex */
public final class CryptoBoxesFragment$openAddAdminScreen$fragment$1$1 implements ChatRightsEditActivity.ChatRightsEditActivityDelegate {
    final /* synthetic */ ChatRightsEditActivity $this_apply;
    final /* synthetic */ long $walletBotId;
    final /* synthetic */ CryptoBoxesFragment this$0;

    @Override // org.telegram.p042ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
    public void didChangeOwner(TLRPC$User tLRPC$User) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CryptoBoxesFragment$openAddAdminScreen$fragment$1$1(ChatRightsEditActivity chatRightsEditActivity, long j, CryptoBoxesFragment cryptoBoxesFragment) {
        this.$this_apply = chatRightsEditActivity;
        this.$walletBotId = j;
        this.this$0 = cryptoBoxesFragment;
    }

    @Override // org.telegram.p042ui.ChatRightsEditActivity.ChatRightsEditActivityDelegate
    public void didSetRights(int i, TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights, TLRPC$TL_chatBannedRights tLRPC$TL_chatBannedRights, String str) {
        final TLRPC$User user = this.$this_apply.getMessagesController().getUser(Long.valueOf(this.$walletBotId));
        if (user != null) {
            final CryptoBoxesFragment cryptoBoxesFragment = this.this$0;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.ui.wallet.cryptobox.CryptoBoxesFragment$openAddAdminScreen$fragment$1$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    CryptoBoxesFragment$openAddAdminScreen$fragment$1$1.didSetRights$lambda$0(CryptoBoxesFragment.this, user);
                }
            }, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void didSetRights$lambda$0(CryptoBoxesFragment this$0, TLRPC$User tLRPC$User) {
        CryptoBoxesPresenter presenter;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (BulletinFactory.canShowBulletin(this$0)) {
            BulletinFactory.createPromoteToAdminBulletin(this$0, tLRPC$User.first_name).show();
        }
        presenter = this$0.getPresenter();
        presenter.openCryptoBoxCreationScreen();
    }
}
