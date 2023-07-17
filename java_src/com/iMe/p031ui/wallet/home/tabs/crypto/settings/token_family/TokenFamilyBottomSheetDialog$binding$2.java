package com.iMe.p031ui.wallet.home.tabs.crypto.settings.token_family;

import android.view.LayoutInflater;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.databinding.ForkContentTokenFamilyBinding;
import org.telegram.p043ui.ActionBar.BaseFragment;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TokenFamilyBottomSheetDialog.kt */
/* renamed from: com.iMe.ui.wallet.home.tabs.crypto.settings.token_family.TokenFamilyBottomSheetDialog$binding$2 */
/* loaded from: classes4.dex */
public final class TokenFamilyBottomSheetDialog$binding$2 extends Lambda implements Function0<ForkContentTokenFamilyBinding> {
    final /* synthetic */ TokenFamilyBottomSheetDialog this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TokenFamilyBottomSheetDialog$binding$2(TokenFamilyBottomSheetDialog tokenFamilyBottomSheetDialog) {
        super(0);
        this.this$0 = tokenFamilyBottomSheetDialog;
    }

    @Override // kotlin.jvm.functions.Function0
    public final ForkContentTokenFamilyBinding invoke() {
        BaseFragment baseFragment;
        baseFragment = this.this$0.fragment;
        return ForkContentTokenFamilyBinding.inflate(LayoutInflater.from(baseFragment.getParentActivity()));
    }
}
