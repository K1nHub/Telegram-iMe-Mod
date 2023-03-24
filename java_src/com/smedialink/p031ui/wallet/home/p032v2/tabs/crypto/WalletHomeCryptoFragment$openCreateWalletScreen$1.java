package com.smedialink.p031ui.wallet.home.p032v2.tabs.crypto;

import com.smedialink.model.wallet.crypto.create.CreateWalletScreenType;
import com.smedialink.p031ui.wallet.crypto.create.CreateWalletFragment;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.ActionBar.BaseFragment;
/* compiled from: WalletHomeCryptoFragment.kt */
/* renamed from: com.smedialink.ui.wallet.home.v2.tabs.crypto.WalletHomeCryptoFragment$openCreateWalletScreen$1 */
/* loaded from: classes3.dex */
final class WalletHomeCryptoFragment$openCreateWalletScreen$1 extends Lambda implements Function0<BaseFragment> {
    final /* synthetic */ String $password;
    final /* synthetic */ List<String> $words;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WalletHomeCryptoFragment$openCreateWalletScreen$1(List<String> list, String str) {
        super(0);
        this.$words = list;
        this.$password = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final BaseFragment invoke() {
        return CreateWalletFragment.Companion.newInstance(new CreateWalletScreenType.SecretWords(this.$words, null, this.$password, null, 10, null));
    }
}
