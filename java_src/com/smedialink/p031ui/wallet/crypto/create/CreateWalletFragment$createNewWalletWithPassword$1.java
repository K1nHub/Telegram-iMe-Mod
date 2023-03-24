package com.smedialink.p031ui.wallet.crypto.create;

import com.smedialink.model.wallet.crypto.create.CreateWalletScreenType;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.p048ui.ActionBar.BaseFragment;
/* compiled from: CreateWalletFragment.kt */
/* renamed from: com.smedialink.ui.wallet.crypto.create.CreateWalletFragment$createNewWalletWithPassword$1 */
/* loaded from: classes3.dex */
final class CreateWalletFragment$createNewWalletWithPassword$1 extends Lambda implements Function0<BaseFragment> {
    final /* synthetic */ String $password;
    final /* synthetic */ List<String> $words;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateWalletFragment$createNewWalletWithPassword$1(List<String> list, String str) {
        super(0);
        this.$words = list;
        this.$password = str;
    }

    @Override // kotlin.jvm.functions.Function0
    public final BaseFragment invoke() {
        return CreateWalletFragment.Companion.newInstance(new CreateWalletScreenType.SecretWords(this.$words, null, this.$password, null, 10, null));
    }
}
