package com.iMe.p031ui.wallet.home.p032v2.details;

import com.iMe.model.wallet.crypto.create.CreateWalletScreenType;
import com.iMe.p031ui.wallet.crypto.create.CreateWalletFragment;
import com.iMe.storage.domain.model.crypto.Wallet;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p044ui.ActionBar.BaseFragment;
/* compiled from: WalletTokenDetailsFragment.kt */
/* renamed from: com.iMe.ui.wallet.home.v2.details.WalletTokenDetailsFragment$openCreateWalletScreen$1 */
/* loaded from: classes4.dex */
final class WalletTokenDetailsFragment$openCreateWalletScreen$1 extends Lambda implements Function0<BaseFragment> {
    final /* synthetic */ String $password;
    final /* synthetic */ Wallet $wallet;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletTokenDetailsFragment$openCreateWalletScreen$1(String str, Wallet wallet2) {
        super(0);
        this.$password = str;
        this.$wallet = wallet2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final BaseFragment invoke() {
        return CreateWalletFragment.Companion.newInstance(new CreateWalletScreenType.SecretWords(this.$password, null, this.$wallet, 2, null));
    }
}
